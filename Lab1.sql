CREATE TABLE MyTable
(
    id  NUMBER GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    val NUMBER NOT NULL,
    CONSTRAINT id_unq UNIQUE (id)
);

BEGIN
    FOR i IN 1..10000
        LOOP
            INSERT INTO MyTable (val) VALUES (DBMS_RANDOM.RANDOM);
        end loop;
end;

CREATE OR REPLACE FUNCTION even_more RETURN CHAR IS
    even_count NUMBER := 0;
    odd_count  NUMBER := 0;
BEGIN
    SELECT COUNT(*)
    INTO even_count
    FROM MyTable
    WHERE MOD(val, 2) = 0;

    SELECT COUNT(*)
    INTO odd_count
    FROM MyTable
    WHERE MOD(val, 2) <> 0;

    IF even_count > odd_count THEN
        RETURN 'TRUE';
    ELSIF even_count < odd_count THEN
        RETURN 'FALSE';
    ELSE
        RETURN 'EQUAL';
    end if;
end even_more;



