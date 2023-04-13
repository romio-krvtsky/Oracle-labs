DROP TYPE clobs_array;

CREATE OR REPLACE TYPE clobs_array IS TABLE OF CLOB;

CREATE OR REPLACE FUNCTION DO_PARSE(l_object JSON_OBJECT_T) RETURN clobs_array
    IS
    l_array   json_array_t;
    str_array clobs_array := clobs_array();
    counter   integer;
BEGIN
    IF l_object.has('START') = TRUE THEN
        l_array := l_object.get_array('START');
        FOR counter in 0..(l_array.get_size() - 1)
            LOOP
                str_array.extend();
                str_array(str_array.COUNT) := JSON_PARSER.Parse_Arg(l_array.get(counter));
            END LOOP;
    ELSE
        str_array.extend();
        str_array(str_array.COUNT) := JSON_PARSER.Parse_Arg(l_object);
    END IF;
    return str_array;
END;



CREATE OR REPLACE FUNCTION Get_Cursor_By(l_object JSON_OBJECT_T) RETURN SYS_REFCURSOR
    IS
    res_cur   SYS_REFCURSOR;
    str_array clobs_array;
    counter   integer;
BEGIN
    str_array := DO_PARSE(l_object);
    FOR counter in 1..str_array.COUNT
        LOOP
            OPEN res_cur for str_array(counter);
        END LOOP;
    return res_cur;
END;

CREATE OR REPLACE PROCEDURE Invoke_By(l_object JSON_OBJECT_T)
    IS
    str_array clobs_array;
    counter   integer;
BEGIN
    str_array := DO_PARSE(l_object);
    FOR counter in 1..str_array.COUNT
        LOOP
            --DBMS_OUTPUT.PUT_LINE(str_array(counter));
            EXECUTE IMMEDIATE str_array(counter);
        END LOOP;
END;

CREATE OR REPLACE FUNCTION Try_Get_Cursor_By(l_object JSON_OBJECT_T) RETURN SYS_REFCURSOR
    IS
    res SYS_REFCURSOR;
BEGIN
    res := Get_Cursor_By(l_object);
    return res;
EXCEPTION
    WHEN OTHERS THEN
        Invoke_By(l_object);
        OPEN res FOR
            select * from dual where 1 = 2;
        return res;
END;