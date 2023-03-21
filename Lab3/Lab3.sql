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


END;

