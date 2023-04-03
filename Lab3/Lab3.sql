CREATE TABLE fk_tmp
(
    ID         INT,
    CHILD_OBJ  VARCHAR2(100),
    PARENT_OBJ VARCHAR2(100)
);


create or replace PROCEDURE COMPARE_SCHEMA(dev_schema_name VARCHAR2, prod_schema_name VARCHAR2)
    IS
    diff_counter1 NUMBER;
    diff_counter2 NUMBER;
    code          VARCHAR2(100);
BEGIN
    -- create tables or add columns from dev in prod
    FOR tab_diff IN
        (SELECT DISTINCT table_name
         FROM all_tab_columns
         WHERE OWNER = dev_schema_name
           AND (table_name, column_name) NOT IN (SELECT table_name, column_name
                                                 FROM all_tab_columns
                                                 WHERE OWNER = prod_schema_name))
        LOOP
            diff_counter1 := 0;
            SELECT COUNT(*)
            INTO diff_counter1
            FROM all_tables
            WHERE OWNER = prod_schema_name
              AND table_name = tab_diff.table_name;

            IF
                diff_counter1 > 0 THEN
                FOR col_diff IN
                    (SELECT DISTINCT column_name, data_type
                     FROM all_tab_columns
                     WHERE OWNER = dev_schema_name
                       AND table_name = tab_diff.table_name
                       AND (table_name, column_name) NOT IN
                           (SELECT table_name, column_name FROM all_tab_columns WHERE OWNER = prod_schema_name))
                    LOOP
                        DBMS_OUTPUT.PUT_LINE('ALTER TABLE ' || prod_schema_name || '.' || tab_diff.table_name ||
                                             ' ADD ' || col_diff.column_name || ' ' || col_diff.data_type || ';');
                    END LOOP;
            ELSE
                DBMS_OUTPUT.PUT_LINE('CREATE TABLE ' || prod_schema_name || '.' || tab_diff.table_name ||
                                     ' AS (SELECT * FROM ' || tab_diff.table_name || ' WHERE 1=0);');
            END IF;
        END LOOP;

    -- delete tables or drop columns in prod
    FOR tab_diff IN
        (SELECT DISTINCT table_name
         FROM all_tab_columns
         WHERE OWNER = prod_schema_name
           AND (table_name, column_name) NOT IN
               (SELECT table_name, column_name FROM all_tab_columns WHERE OWNER = dev_schema_name))
        LOOP
            diff_counter1 := 0;
            diff_counter2 := 0;
            SELECT COUNT(column_name)
            INTO diff_counter1
            FROM all_tab_columns
            WHERE OWNER = prod_schema_name
              AND table_name = tab_diff.table_name;
            SELECT COUNT(column_name)
            INTO diff_counter2
            FROM all_tab_columns
            WHERE OWNER = dev_schema_name
              AND table_name = tab_diff.table_name;

            IF
                diff_counter1 != diff_counter2 THEN
                FOR col_diff IN
                    (SELECT column_name
                     FROM all_tab_columns
                     WHERE OWNER = prod_schema_name
                       AND table_name = tab_diff.table_name
                       AND column_name NOT IN (SELECT column_name
                                               FROM all_tab_columns
                                               WHERE OWNER = dev_schema_name
                                                 AND table_name = tab_diff.table_name))
                    LOOP
                        DBMS_OUTPUT.PUT_LINE('ALTER TABLE ' || prod_schema_name || '.' || tab_diff.table_name ||
                                             ' DROP COLUMN ' || col_diff.column_name || ';');
                    END LOOP;
            ELSE
                DBMS_OUTPUT.PUT_LINE('DROP TABLE ' || prod_schema_name || '.' || tab_diff.table_name ||
                                     ' CASCADE CONSTRAINTS;');
            END IF;
        END LOOP;

    -- create procedure from dev in prod
    FOR diff_proc IN
        (SELECT DISTINCT object_name
         FROM all_objects
         WHERE object_type = 'PROCEDURE'
           AND OWNER = dev_schema_name
           AND object_name NOT IN
               (SELECT object_name FROM all_objects WHERE OWNER = prod_schema_name AND object_type = 'PROCEDURE'))
        LOOP
            diff_counter1 := 0;
            DBMS_OUTPUT.PUT_LINE
                ('CREATE OR REPLACE ');
            FOR text_line IN (SELECT text
                              FROM all_source
                              WHERE type = 'PROCEDURE'
                                AND NAME = diff_proc.object_name
                                AND OWNER = dev_schema_name)
                LOOP
                    IF diff_counter1 != 0 THEN
                        DBMS_OUTPUT.PUT_LINE(rtrim(text_line.text, chr(10) || chr(13)));
                    ELSE
                        DBMS_OUTPUT.PUT_LINE(rtrim(prod_schema_name || '.' || text_line.text, chr(10) || chr(13)));
                        diff_counter1 := 1;
                    END IF;
                END LOOP;
        END LOOP;

    -- delete procedure in prod
    FOR diff_proc IN
        (SELECT DISTINCT object_name
         FROM all_objects
         WHERE object_type = 'PROCEDURE'
           AND OWNER = prod_schema_name
           AND object_name NOT IN
               (SELECT object_name FROM all_objects WHERE OWNER = dev_schema_name AND object_type = 'PROCEDURE'))
        LOOP
            DBMS_OUTPUT.PUT_LINE('DROP PROCEDURE ' || prod_schema_name || '.' || diff_proc.object_name);
        END LOOP;

    -- create functions from dev in prod
    FOR diff_func IN
        (SELECT DISTINCT object_name
         FROM all_objects
         WHERE object_type = 'FUNCTION'
           AND OWNER = dev_schema_name
           AND object_name NOT IN
               (SELECT object_name FROM all_objects WHERE OWNER = prod_schema_name AND object_type = 'FUNCTION'))
        LOOP
            diff_counter1 := 0;
            DBMS_OUTPUT.PUT_LINE
                ('CREATE OR REPLACE ');
            FOR text_line IN (SELECT text
                              FROM all_source
                              WHERE type = 'FUNCTION'
                                AND NAME = diff_func.object_name
                                AND OWNER = dev_schema_name)
                LOOP
                    IF diff_counter1 != 0 THEN
                        DBMS_OUTPUT.PUT_LINE(rtrim(text_line.text, chr(10) || chr(13)));
                    ELSE
                        DBMS_OUTPUT.PUT_LINE(rtrim(prod_schema_name || '.' || text_line.text, chr(10) || chr(13)));
                        diff_counter1
                            := 1;
                    END IF;
                END LOOP;
        END LOOP;

    -- delete functions in prod
    FOR diff_func IN
        (SELECT DISTINCT object_name
         FROM all_objects
         WHERE object_type = 'FUNCTION'
           AND OWNER = prod_schema_name
           AND object_name NOT IN
               (SELECT object_name FROM all_objects WHERE OWNER = dev_schema_name AND object_type = 'FUNCTION'))
        LOOP
            DBMS_OUTPUT.PUT_LINE('DROP FUNCTION ' || prod_schema_name || '.' || diff_func.object_name);
        END LOOP;

    -- create indexes from dev in prod
    FOR diff_ind IN
        (SELECT index_name, index_type, table_name
         FROM all_indexes
         WHERE table_owner = dev_schema_name
           AND index_name not like '%_PK'
           AND index_name not like '%SYS%'
           AND index_name NOT IN
               (SELECT index_name FROM all_indexes WHERE table_owner = prod_schema_name AND index_name NOT LIKE '%_PK'))
        LOOP
            SELECT column_name
            INTO code
            FROM all_ind_columns
            WHERE index_name = diff_ind.index_name
              and table_owner = dev_schema_name;
            DBMS_OUTPUT.PUT_LINE('CREATE INDEX ' || diff_ind.index_name || ' ON ' ||
                                 prod_schema_name || '.' || diff_ind.table_name || '(' || code || ');');
        END LOOP;

    -- delete indexes in prod
    FOR diff_ind IN
        (SELECT index_name
         FROM all_indexes
         WHERE table_owner = prod_schema_name
           AND index_name NOT LIKE '%_PK'
           AND index_name NOT LIKE 'SYS%'
           AND index_name NOT IN
               (SELECT index_name FROM all_indexes WHERE table_owner = dev_schema_name AND index_name NOT LIKE '%_PK'))
        LOOP
            DBMS_OUTPUT.PUT_LINE('DROP INDEX ' || diff_ind.index_name || ';');
        END LOOP;
END;


create or replace PROCEDURE TABLES_ORDER(schema_name varchar2) AS

BEGIN
    EXECUTE IMMEDIATE 'TRUNCATE TABLE fk_tmp';

    FOR table_item IN
        (SELECT table_name AS name
         FROM all_tables
         WHERE OWNER = schema_name)
        LOOP
            INSERT INTO fk_tmp (child_obj, parent_obj)
            SELECT DISTINCT a.table_name, c_pk.table_name
            FROM all_cons_columns a
                     JOIN all_constraints c ON
                a.OWNER = c.OWNER AND a.constraint_name = c.constraint_name
                     JOIN all_constraints c_pk ON
                c.r_owner = c_pk.owner AND c.r_constraint_name = c_pk.constraint_name
            WHERE c.constraint_type = 'R'
              AND a.table_name = table_item.name;

            IF
                SQL%ROWCOUNT = 0 THEN
                dbms_output.put_line(table_item.name);
            END IF;

        END LOOP;

    FOR ref_fk IN
        (SELECT child_obj, parent_obj, CONNECT_BY_ISCYCLE
         FROM fk_tmp
         CONNECT BY NOCYCLE PRIOR PARENT_OBJ = child_obj
         ORDER BY LEVEL
        )
        LOOP
            IF ref_fk.CONNECT_BY_ISCYCLE = 0 THEN
                dbms_output.put_line(ref_fk.child_obj);
            ELSE
                dbms_output.put_line('CYCLE IN TABLE' || ref_fk.child_obj);
            END IF;
        END LOOP;

end TABLES_ORDER;


---- giving privileges

CREATE USER C##DEV IDENTIFIED BY 123;
GRANT ALL PRIVILEGES TO C##DEV;

CREATE USER C##PROD IDENTIFIED BY 123;
GRANT ALL PRIVILEGES TO C##PROD;

GRANT CONNECT TO C##DEV;

GRANT CONNECT TO C##PROD;

GRANT RESOURCE TO C##DEV;

GRANT RESOURCE TO C##PROD;

GRANT SELECT, INSERT, UPDATE, DELETE ON C##DEV.* TO C##WORK;

GRANT SELECT, INSERT, UPDATE, DELETE ON C##PROD.* TO C##WORK;

GRANT ALL PRIVILEGES TO C##WORK;


-------------- DEV --------------

-- Example of a simple procedure in Oracle
CREATE OR REPLACE PROCEDURE print_message(message IN VARCHAR2)
AS
BEGIN
    DBMS_OUTPUT.PUT_LINE(message);
END;


-- Example of a simple function in Oracle
CREATE OR REPLACE FUNCTION calculate_area(length IN NUMBER, width IN NUMBER)
    RETURN NUMBER
    IS
BEGIN
    RETURN length * width;
END;


CREATE TABLE table_1
(
    id         NUMBER(10) PRIMARY KEY,
    name       VARCHAR2(50),
    table_2_id NUMBER(10),
    CONSTRAINT fk_table_2_id FOREIGN KEY (table_2_id) REFERENCES table_2 (id)
);

CREATE TABLE table_2
(
    id         NUMBER(10) PRIMARY KEY,
    name       VARCHAR2(50),
    table_3_id NUMBER(10),
    CONSTRAINT fk_table_3_id FOREIGN KEY (table_3_id) REFERENCES table_3 (id)
);

CREATE TABLE table_3
(
    id         NUMBER(10) PRIMARY KEY,
    name       VARCHAR2(50),
    table_1_id NUMBER(10)
);


ALTER TABLE table_3
    ADD CONSTRAINT fk_table_a_id FOREIGN KEY (table_1_id) REFERENCES table_1 (id)
        ON DELETE CASCADE;


-------------- PROD --------------

CREATE TABLE C
(
    id   NUMBER(10) PRIMARY KEY,
    name VARCHAR2(50)
);

CREATE TABLE B
(
    id NUMBER(10) PRIMARY KEY
);


------- checking


CALL COMPARE_SCHEMA('C##DEV', 'C##PROD');
CALL COMPARE_SCHEMA('C##PROD', 'C##DEV');

CALL TABLES_ORDER('C##DEV');