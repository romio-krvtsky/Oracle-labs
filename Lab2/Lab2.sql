drop table Students;
drop table GROUPS;
drop table Logs;


CREATE TABLE Students
(
    ID       NUMBER       NOT NULL,
    NAME     VARCHAR2(50) NOT NULL,
    GROUP_ID NUMBER
);


CREATE TABLE GROUPS
(
    ID    NUMBER       NOT NULL,
    NAME  VARCHAR2(50) NOT NULL,
    C_VAL NUMBER
);


CREATE TABLE Logs
(
    id               NUMBER,
    username         VARCHAR2(50),
    operation        VARCHAR2(6),
    timming          TIMESTAMP,
    stud_id          NUMBER,
    stud_name        VARCHAR2(50),
    stud_group       NUMBER,
    newstud_id       NUMBER,
    newstud_name     VARCHAR2(10),
    newstud_group_id NUMBER
);

CREATE SEQUENCE stud_id
    start with 1;
drop sequence stud_id;

CREATE OR REPLACE TRIGGER uniq_stud_id
    BEFORE INSERT OR UPDATE
    ON students
    FOR EACH ROW
DECLARE
    counter NUMBER;
    id_error EXCEPTION;
BEGIN
    IF :new.id IS NOT NULL THEN
        SELECT count(*)
        INTO counter
        FROM students
        WHERE id = :new.id;
        IF counter > 0 THEN
            RAISE id_error;
        END IF;
    ELSE
        counter := 1;
        WHILE counter <> 0
            LOOP
                SELECT stud_id.NEXTVAl
                INTO :new.id
                FROM dual;

                SELECT count(*)
                INTO counter
                FROM students
                WHERE id = :new.id;
            END LOOP;
    END IF;
END;

ALTER TRIGGER uniq_stud_id DISABLE;
ALTER TRIGGER uniq_stud_id ENABLE;

DROP TRIGGER uniq_stud_id;

CREATE SEQUENCE group_id;
drop sequence group_id;

CREATE OR REPLACE TRIGGER uniq_group
    BEFORE INSERT OR UPDATE
    ON groups
    FOR EACH ROW

DECLARE
    counter NUMBER;
    id_error EXCEPTION;
    name_error EXCEPTION;
BEGIN
    IF :new.id IS NOT NULL THEN
        SELECT count(*)
        INTO counter
        FROM groups
        WHERE id = :new.id;
        IF counter > 0 THEN
            RAISE id_error;
        END IF;
    ELSE
        counter := 1;
        WHILE counter <> 0
            LOOP
                SELECT group_id.NEXTVAl
                INTO :new.id
                FROM dual;

                SELECT count(*)
                INTO counter
                FROM groups
                WHERE id = :new.id;
            END LOOP;
    END IF;

    SELECT count(*)
    INTO counter
    FROM groups
    WHERE name = :new.name;
    IF counter > 0 THEN
        RAISE name_error;
    END IF;
END;

ALTER TRIGGER uniq_group DISABLE;
ALTER TRIGGER uniq_group ENABLE;

CREATE OR REPLACE TRIGGER group_delete
    AFTER DELETE
    ON groups
    FOR EACH ROW
BEGIN
    DELETE
    FROM students
    WHERE group_id = :old.id;
END;

DROP TRIGGER group_delete;
ALTER TRIGGER group_delete DISABLE;
ALTER TRIGGER group_delete ENABLE;

CREATE SEQUENCE log_id;
drop sequence log_id;

CREATE OR REPLACE TRIGGER student_logger
    AFTER INSERT OR UPDATE OR DELETE
    ON Students
    FOR EACH ROW
DECLARE
    v_username VARCHAR2(50);
BEGIN
    SELECT user
    INTO v_username
    FROM dual;
    IF INSERTING THEN
        INSERT INTO logs
        VALUES (log_id.NEXTVAL, v_username, 'INSERT',
                SYSTIMESTAMP, :new.id, :new.name, :new.group_id, NULL, NULL, NULL);
    ELSIF DELETING THEN
        INSERT INTO logs
        VALUES (log_id.NEXTVAL, v_username, 'DELETE',
                SYSTIMESTAMP, :old.id, :old.name, :old.group_id, NULL, NULL, NULL);
    ELSE
        INSERT INTO logs
        VALUES (log_id.NEXTVAL, v_username, 'UPDATE',
                SYSTIMESTAMP, :old.id, :old.name, :old.group_id, :new.id, :new.name, :new.group_id);
    END IF;
END;

DROP TRIGGER student_logger;

CREATE OR REPLACE PROCEDURE rollback_studenttable(back_time TIMESTAMP) IS
BEGIN
    FOR action in (SELECT * FROM Logs WHERE timming >= back_time ORDER BY id DESC)
        LOOP
            IF action.operation = 'INSERT' THEN
                DELETE
                FROM students
                WHERE id = action.stud_id;
            ELSIF action.operation = 'DELETE' THEN
                INSERT INTO students
                VALUES (action.stud_id, action.stud_name, action.stud_group);
            ELSE
                UPDATE students
                SET id       = action.stud_id,
                    name     = action.stud_name,
                    group_id = action.stud_group
                WHERE id = action.newstud_id;
            END IF;
        END LOOP;
END;

CREATE OR REPLACE TRIGGER student_change
    AFTER
        DELETE OR INSERT OR
        UPDATE
    ON Students
    FOR EACH ROW
BEGIN
    IF DELETING THEN
        UPDATE groups
        SET c_val = c_val - 1
        WHERE id = :old.group_id;
    ELSIF INSERTING THEN
        UPDATE groups
        SET c_val = c_val + 1
        WHERE id = :new.group_id;
    ELSE
        UPDATE groups
        SET c_val = c_val - 1
        WHERE id = :old.group_id;

        UPDATE groups
        SET c_val = c_val + 1
        WHERE id = :new.group_id;
    END IF;
END;

DROP TRIGGER student_change;
ALTER TRIGGER STUDENT_CHANGE ENABLE;
ALTER TRIGGER STUDENT_CHANGE DISABLE;


---groups
begin
    INSERT INTO groups(id, name, C_VAL)
    VALUES (1, '053501', 0);
    INSERT INTO groups(id, name, C_VAL)
    VALUES (2, '053502', 0);
    INSERT INTO groups(id, name, C_VAL)
    VALUES (3, '053503', 0);
    INSERT INTO groups(id, name, C_VAL)
    VALUES (4, '053504', 0);
    INSERT INTO groups(id, name, C_VAL)
    VALUES (5, '053505', 0);
end;

---students
begin
    INSERT INTO Students(NAME, GROUP_ID)
    VALUES ('RAMAN', 1);
    INSERT INTO Students(NAME, GROUP_ID)
    VALUES ('KIRILL', 2);
    INSERT INTO Students(NAME, GROUP_ID)
    VALUES ('DENIS', 2);
    INSERT INTO Students(NAME, GROUP_ID)
    VALUES ('ARTSYOM', 4);
    INSERT INTO Students(NAME, GROUP_ID)
    VALUES ('CHELIK', 1);
end;

INSERT INTO Students(id, name, group_id)
VALUES (25, 'RAMAN', 1);


----selects

select *
from Students;

select *
from GROUPS;

SELECT *
FROM Logs;

----deletes

delete
from Students
where id > 0;

delete
from groups
where id = 2;

delete
from GROUPS
where id > 0;

delete
from logs
where id > 0;


--- rollback

CALL rollback_studenttable(TO_TIMESTAMP('10.03.23 21:15:00'));