SET SERVEROUTPUT ON;

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


CREATE OR REPLACE FUNCTION get_insert(curr_id NUMBER) RETURN CHAR IS
    curr_val NUMBER;
BEGIN
    SELECT val
    INTO curr_val
    FROM MyTable
    WHERE id = curr_id;

    RETURN 'INSERT INTO MyTable VALUES(' || TO_CHAR(curr_id) || ',' || TO_CHAR(curr_val) || ');';
EXCEPTION
    WHEN NO_DATA_FOUND
        THEN DBMS_OUTPUT.PUT_LINE(TO_CHAR(curr_id) || 'is invalid!');
end get_insert;


CREATE OR REPLACE PROCEDURE my_insert(curr_val NUMBER) IS
BEGIN
    INSERT INTO MyTable(val) VALUES (curr_val);
end my_insert;


CREATE OR REPLACE PROCEDURE my_delete(curr_id NUMBER) IS
BEGIN
    DELETE
    FROM MyTable
    WHERE id = curr_id;
end my_delete;

CREATE OR REPLACE PROCEDURE my_update(curr_id NUMBER, new_value NUMBER) IS
BEGIN
    UPDATE MyTable
    SET val = new_value
    WHERE id = curr_id;
end my_update;


CREATE OR REPLACE FUNCTION reward(salary REAL, premium POSITIVE) RETURN REAL IS
    prem_ex EXCEPTION;
    sal_ex EXCEPTION;
BEGIN
    IF premium > 100 THEN
        RAISE prem_ex;
    ELSIF salary < 0 THEN
        RAISE sal_ex;
    END IF;
    RETURN (100 + premium) * 0.12 * salary;
EXCEPTION
    WHEN prem_ex THEN
        DBMS_OUTPUT.PUT_LINE('Premium > 100!');
    WHEN sal_ex THEN
        DBMS_OUTPUT.PUT_LINE('Salary < 0');
end reward;
