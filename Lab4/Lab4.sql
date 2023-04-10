DROP TYPE clobs_array;

CREATE OR REPLACE TYPE clobs_array IS TABLE OF CLOB;

CREATE OR REPLACE FUNCTION DO_PARSE(l_object JSON_OBJECT_T) RETURN clobs_array
IS
    l_array  json_array_t;
    str_array   clobs_array := clobs_array();
    counter     integer;
BEGIN
    IF  l_object.has('START') = TRUE THEN
        l_array := l_object.get_array('START');
        FOR counter in 0..(l_array.get_size()-1)
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