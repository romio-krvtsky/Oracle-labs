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

            IF diff_counter1 > 0 THEN
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
            diff_counter2
                := 0;
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
                        diff_counter1
                            := 1;
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


END;

