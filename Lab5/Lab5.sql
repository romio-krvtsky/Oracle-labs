--------------------------------------------------------
--  DDL for Sequence GROUPS_LOGS_SEQ
--------------------------------------------------------

CREATE SEQUENCE "GROUPS_LOGS_SEQ" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER NOCYCLE NOKEEP NOSCALE GLOBAL;
--------------------------------------------------------
--  DDL for Sequence GROUPS_SEQ
--------------------------------------------------------

CREATE SEQUENCE "GROUPS_SEQ" MINVALUE 1 MAXVALUE 1000000 INCREMENT BY 1 START WITH 9 CACHE 2 NOORDER CYCLE NOKEEP NOSCALE GLOBAL;
--------------------------------------------------------
--  DDL for Sequence GROUPS_SEQ1
--------------------------------------------------------

CREATE SEQUENCE "GROUPS_SEQ1" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER NOCYCLE NOKEEP NOSCALE GLOBAL;
--------------------------------------------------------
--  DDL for Sequence GROUPS_SEQ2
--------------------------------------------------------

CREATE SEQUENCE "GROUPS_SEQ2" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER NOCYCLE NOKEEP NOSCALE GLOBAL;
--------------------------------------------------------
--  DDL for Sequence MYTABLE_LOGS_SEQ
--------------------------------------------------------

CREATE SEQUENCE "MYTABLE_LOGS_SEQ" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 581681 CACHE 20 NOORDER NOCYCLE NOKEEP NOSCALE GLOBAL;
--------------------------------------------------------
--  DDL for Sequence MYTABLE_SEQ
--------------------------------------------------------

CREATE SEQUENCE "MYTABLE_SEQ" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 20021 CACHE 20 NOORDER NOCYCLE NOKEEP NOSCALE GLOBAL;
--------------------------------------------------------
--  DDL for Sequence MYTABLE_SEQ1
--------------------------------------------------------

CREATE SEQUENCE "MYTABLE_SEQ1" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER NOCYCLE NOKEEP NOSCALE GLOBAL;
--------------------------------------------------------
--  DDL for Sequence STUDENTS_LOGS_SEQ
--------------------------------------------------------

CREATE SEQUENCE "STUDENTS_LOGS_SEQ" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 608241 CACHE 20 NOORDER NOCYCLE NOKEEP NOSCALE GLOBAL;
--------------------------------------------------------
--  DDL for Sequence STUDENTS_LOGS_SEQ1
--------------------------------------------------------

CREATE SEQUENCE "STUDENTS_LOGS_SEQ1" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER NOCYCLE NOKEEP NOSCALE GLOBAL;
--------------------------------------------------------
--  DDL for Sequence STUDENTS_SEQ
--------------------------------------------------------

CREATE SEQUENCE "STUDENTS_SEQ" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER NOCYCLE NOKEEP NOSCALE GLOBAL;
--------------------------------------------------------
--  DDL for Sequence STUDENTS_SEQ1
--------------------------------------------------------

CREATE SEQUENCE "STUDENTS_SEQ1" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER NOCYCLE NOKEEP NOSCALE GLOBAL;
--------------------------------------------------------
--  DDL for Sequence STUDENTS_SEQ2
--------------------------------------------------------

CREATE SEQUENCE "STUDENTS_SEQ2" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER NOCYCLE NOKEEP NOSCALE GLOBAL;
--------------------------------------------------------
--  DDL for Sequence STUDENTS_SEQ3
--------------------------------------------------------

CREATE SEQUENCE "STUDENTS_SEQ3" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER NOCYCLE NOKEEP NOSCALE GLOBAL;
--------------------------------------------------------
--  DDL for Table GROUPS
--------------------------------------------------------

CREATE TABLE "GROUPS"
(
    "ID"    NUMBER,
    "NAME"  VARCHAR2(200 BYTE),
    "C_VAL" NUMBER
) SEGMENT CREATION IMMEDIATE
    PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
    NOCOMPRESS LOGGING
    STORAGE
(
    INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
    PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
    BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
)
    TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Table GROUPS_LOGS
--------------------------------------------------------

CREATE TABLE "GROUPS_LOGS"
(
    "ID"         NUMBER,
    "OPERATION"  VARCHAR2(200 BYTE),
    "RECORDEDON" TIMESTAMP(6) DEFAULT SYSTIMESTAMP,
    "OLDID"      NUMBER,
    "OLDNAME"    VARCHAR2(200 BYTE),
    "OLD_C_VAL"  NUMBER,
    "NEWID"      NUMBER,
    "NEWNAME"    VARCHAR2(200 BYTE),
    "NEW_C_VAL"  NUMBER
) SEGMENT CREATION IMMEDIATE
    PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
    NOCOMPRESS LOGGING
    STORAGE
(
    INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
    PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
    BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
)
    TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Table MYTABLE
--------------------------------------------------------

CREATE TABLE "MYTABLE"
(
    "ID"   NUMBER,
    "VAL"  NUMBER,
    "NAME" VARCHAR2(200 BYTE)
) SEGMENT CREATION IMMEDIATE
    PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
    NOCOMPRESS LOGGING
    STORAGE
(
    INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
    PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
    BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
)
    TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Table MYTABLE_LOGS
--------------------------------------------------------

CREATE TABLE "MYTABLE_LOGS"
(
    "ID"         NUMBER,
    "OPERATION"  VARCHAR2(200 BYTE),
    "RECORDEDON" TIMESTAMP(6) DEFAULT SYSTIMESTAMP,
    "OLDID"      NUMBER,
    "OLDVAL"     NUMBER,
    "OLDNAME"    VARCHAR2(200 BYTE),
    "NEWID"      NUMBER,
    "NEWVAL"     NUMBER,
    "NEWNAME"    VARCHAR2(200 BYTE)
) SEGMENT CREATION IMMEDIATE
    PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
    NOCOMPRESS LOGGING
    STORAGE
(
    INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
    PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
    BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
)
    TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Table STUDENTS
--------------------------------------------------------

CREATE TABLE "STUDENTS"
(
    "ID"        NUMBER,
    "NAME"      VARCHAR2(200 BYTE),
    "GROUP_ID"  NUMBER,
    "DATE_TIME" TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP
) SEGMENT CREATION IMMEDIATE
    PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
    NOCOMPRESS LOGGING
    STORAGE
(
    INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
    PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
    BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
)
    TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Table STUDENTS_LOGS
--------------------------------------------------------

CREATE TABLE "STUDENTS_LOGS"
(
    "ID"         NUMBER,
    "OPERATION"  VARCHAR2(20 BYTE),
    "RECORDEDON" TIMESTAMP(6) DEFAULT SysTimeStamp,
    "OLDID"      NUMBER,
    "OLDNAME"    VARCHAR2(200 BYTE),
    "OLDGROUPID" NUMBER,
    "NEWID"      NUMBER,
    "NEWNAME"    VARCHAR2(200 BYTE),
    "NEWGROUPID" NUMBER,
    "OLDTIME"    TIMESTAMP(6),
    "NEWTIME"    TIMESTAMP(6)
) SEGMENT CREATION IMMEDIATE
    PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
    NOCOMPRESS LOGGING
    STORAGE
(
    INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
    PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
    BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
)
    TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Table T1
--------------------------------------------------------
CREATE TABLE "T1"
(
    "C1" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER NOCYCLE NOKEEP NOSCALE,
    "C2" VARCHAR2(10 BYTE)
) SEGMENT CREATION IMMEDIATE
    PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
    NOCOMPRESS LOGGING
    STORAGE
(
    INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
    PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
    BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
)
    TABLESPACE "USERS";


REM
INSERTING into MAX.GROUPS
SET DEFINE OFF;
Insert into MAX.GROUPS (ID, NAME, C_VAL)
values ('38', '053501', '1');
Insert into MAX.GROUPS (ID, NAME, C_VAL)
values ('39', '053502', '0');
Insert into MAX.GROUPS (ID, NAME, C_VAL)
values ('40', '053503', '0');
REM
INSERTING into MAX.GROUPS_LOGS
SET DEFINE OFF;
Insert into MAX.GROUPS_LOGS (ID, OPERATION, RECORDEDON, OLDID, OLDNAME, OLD_C_VAL, NEWID, NEWNAME, NEW_C_VAL)
values ('71', 'INSERT', to_timestamp('18.04.23 14:39:56,671000000', 'DD.MM.RR HH24:MI:SSXFF'), null, null, null, '38',
        '053501', '0');
Insert into MAX.GROUPS_LOGS (ID, OPERATION, RECORDEDON, OLDID, OLDNAME, OLD_C_VAL, NEWID, NEWNAME, NEW_C_VAL)
values ('72', 'INSERT', to_timestamp('18.04.23 14:39:59,785000000', 'DD.MM.RR HH24:MI:SSXFF'), null, null, null, '39',
        '053502', '0');
Insert into MAX.GROUPS_LOGS (ID, OPERATION, RECORDEDON, OLDID, OLDNAME, OLD_C_VAL, NEWID, NEWNAME, NEW_C_VAL)
values ('73', 'INSERT', to_timestamp('18.04.23 14:40:02,503000000', 'DD.MM.RR HH24:MI:SSXFF'), null, null, null, '40',
        '053503', '0');
Insert into MAX.GROUPS_LOGS (ID, OPERATION, RECORDEDON, OLDID, OLDNAME, OLD_C_VAL, NEWID, NEWNAME, NEW_C_VAL)
values ('74', 'UPDATE', to_timestamp('18.04.23 14:40:57,907000000', 'DD.MM.RR HH24:MI:SSXFF'), '38', '953501', '0',
        '38', '053501', '1');
REM
INSERTING into MAX.MYTABLE
SET DEFINE OFF;
Insert into MAX.MYTABLE (ID, VAL, NAME)
values ('63', '15', '15');
Insert into MAX.MYTABLE (ID, VAL, NAME)
values ('64', '16', '16');
REM
INSERTING into MAX.MYTABLE_LOGS
SET DEFINE OFF;
Insert into MAX.MYTABLE_LOGS (ID, OPERATION, RECORDEDON, OLDID, OLDVAL, OLDNAME, NEWID, NEWVAL, NEWNAME)
values ('581674', 'INSERT', to_timestamp('18.04.23 14:39:23,156000000', 'DD.MM.RR HH24:MI:SSXFF'), null, null, null,
        '63', '15', '15');
Insert into MAX.MYTABLE_LOGS (ID, OPERATION, RECORDEDON, OLDID, OLDVAL, OLDNAME, NEWID, NEWVAL, NEWNAME)
values ('581675', 'INSERT', to_timestamp('18.04.23 14:39:29,006000000', 'DD.MM.RR HH24:MI:SSXFF'), null, null, null,
        '64', '16', '16');
REM
INSERTING into MAX.STUDENTS
SET DEFINE OFF;
Insert into MAX.STUDENTS (ID, NAME, GROUP_ID, DATE_TIME)
values ('30', 'asda', '38', to_timestamp('18.04.23 14:40:57,901000000', 'DD.MM.RR HH24:MI:SSXFF'));
REM
INSERTING into MAX.STUDENTS_LOGS
SET DEFINE OFF;
Insert into MAX.STUDENTS_LOGS (ID, OPERATION, RECORDEDON, OLDID, OLDNAME, OLDGROUPID, NEWID, NEWNAME, NEWGROUPID,
                               OLDTIME, NEWTIME)
values ('49', 'INSERT', to_timestamp('18.04.23 14:40:57,911000000', 'DD.MM.RR HH24:MI:SSXFF'), null, null, null, '30',
        'asda', '38', null, to_timestamp('18.04.23 14:40:57,901000000', 'DD.MM.RR HH24:MI:SSXFF'));
REM
INSERTING into MAX.T1
SET DEFINE OFF;
Insert into MAX.T1 (C1, C2)
values ('1', 'asdasdasd');
Insert into MAX.T1 (C1, C2)
values ('3', 'sdasd');

--------------------------------------------------------
--  DDL for Index GROUPS_LOGS_PK
--------------------------------------------------------

CREATE UNIQUE INDEX "GROUPS_LOGS_PK" ON "GROUPS_LOGS" ("ID") PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
    STORAGE (INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
    PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
    BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
    TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Index GROUPS_PK
--------------------------------------------------------

CREATE UNIQUE INDEX "GROUPS_PK" ON "GROUPS" ("ID") PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
    STORAGE (INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
    PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
    BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
    TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Index MYTABLE_LOGS_PK
--------------------------------------------------------

CREATE UNIQUE INDEX "MYTABLE_LOGS_PK" ON "MYTABLE_LOGS" ("ID") PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
    STORAGE (INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
    PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
    BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
    TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Index MYTABLE_PK
--------------------------------------------------------

CREATE UNIQUE INDEX "MYTABLE_PK" ON "MYTABLE" ("ID") PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
    STORAGE (INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
    PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
    BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
    TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Index STUDENTS_PK
--------------------------------------------------------

CREATE UNIQUE INDEX "STUDENTS_PK" ON "STUDENTS" ("ID") PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
    STORAGE (INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
    PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
    BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
    TABLESPACE "USERS";

--------------------------------------------------------
--  DDL for Trigger CHECK_STUDENTS_COUNT
--------------------------------------------------------

CREATE OR REPLACE NONEDITIONABLE TRIGGER "CHECK_STUDENTS_COUNT"
    AFTER DELETE OR INSERT OR UPDATE
    ON students
    FOR EACH ROW
BEGIN
    IF INSERTING THEN
        UPDATE groups
        SET c_val = c_val + 1
        WHERE id = :new.group_id;
    ELSIF DELETING THEN
        UPDATE groups
        SET c_val = c_val - 1
        WHERE id = :old.group_id;
    ELSE
        UPDATE groups
        SET c_val = c_val - 1
        WHERE id = :old.group_id;

        UPDATE groups
        SET c_val = c_val + 1
        WHERE id = :new.group_id;
    END IF;
EXCEPTION
    WHEN OTHERS THEN NULL;
END;
/
ALTER TRIGGER "CHECK_STUDENTS_COUNT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CHECK_UNIQUE_GROUPS_ID
--------------------------------------------------------

CREATE OR REPLACE NONEDITIONABLE TRIGGER "CHECK_UNIQUE_GROUPS_ID"
    BEFORE INSERT OR UPDATE
    ON "GROUPS"
    FOR EACH ROW
DECLARE
    x NUMBER;
    txt EXCEPTION;
BEGIN
    SELECT COUNT(*) INTO x FROM GROUPS WHERE GROUPS.id = :NEW.id;
    IF x > 0 THEN
        RAISE txt;
    END IF;
EXCEPTION
    WHEN txt THEN RAISE_APPLICATION_ERROR(-20001, 'This id exists in table groups!');
    WHEN OTHERS THEN NULL;
END;
/
ALTER TRIGGER "CHECK_UNIQUE_GROUPS_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CHECK_UNIQUE_GROUPS_NAME
--------------------------------------------------------

CREATE OR REPLACE NONEDITIONABLE TRIGGER "CHECK_UNIQUE_GROUPS_NAME"
    BEFORE INSERT OR UPDATE
    ON "GROUPS"
    FOR EACH ROW
DECLARE
    x NUMBER;
    txt EXCEPTION;
BEGIN
    SELECT COUNT(*) INTO x FROM GROUPS WHERE GROUPS.name = :NEW.name;
    IF x > 0 THEN
        RAISE txt;
    END IF;
EXCEPTION
    WHEN txt THEN RAISE_APPLICATION_ERROR(-20001, 'This name exists in table groups!');
    WHEN OTHERS THEN NULL;
END;
/
ALTER TRIGGER "CHECK_UNIQUE_GROUPS_NAME" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CHECK_UNIQUE_STUDENTS_ID
--------------------------------------------------------

CREATE OR REPLACE NONEDITIONABLE TRIGGER "CHECK_UNIQUE_STUDENTS_ID"
    BEFORE INSERT OR UPDATE
    ON "STUDENTS"
    FOR EACH ROW
DECLARE
    x NUMBER;
    txt EXCEPTION;
BEGIN
    SELECT COUNT(*) INTO x FROM STUDENTS WHERE students.id = :NEW.id;
    IF x > 0 THEN
        RAISE txt;
    END IF;
EXCEPTION
    WHEN txt THEN RAISE_APPLICATION_ERROR(-20001, 'This id exists in table STUDENTS!');
    WHEN OTHERS THEN NULL;
END;
/
ALTER TRIGGER "CHECK_UNIQUE_STUDENTS_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger FOREIGN_KEY_GROUP_ID
--------------------------------------------------------

CREATE OR REPLACE NONEDITIONABLE TRIGGER "FOREIGN_KEY_GROUP_ID"
    before INSERT OR UPDATE
    on STUDENTS
    for
        each row
DECLARE
    counter NUMBER;
    txt EXCEPTION;
begin
    SELECT count(*) INTO counter FROM groups WHERE :new.group_id = groups.id;
    IF counter = 0 then
        RAISE txt;
    END IF;
EXCEPTION
    WHEN txt THEN RAISE_APPLICATION_ERROR(-20001, 'No such group_id in table GROUPS!');
    WHEN OTHERS THEN NULL;
end;
/
ALTER TRIGGER "FOREIGN_KEY_GROUP_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger GROUPS_LOGS_TRG
--------------------------------------------------------

CREATE OR REPLACE NONEDITIONABLE TRIGGER "GROUPS_LOGS_TRG"
    BEFORE INSERT
    ON GROUPS_LOGS
    FOR EACH ROW
BEGIN
    <<COLUMN_SEQUENCES>>
    BEGIN
        IF INSERTING AND :NEW.ID IS NULL THEN
            SELECT GROUPS_LOGS_SEQ.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
        END IF;
    END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "GROUPS_LOGS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger GROUPS_LOGS_TRIGGER
--------------------------------------------------------

CREATE OR REPLACE NONEDITIONABLE TRIGGER "GROUPS_LOGS_TRIGGER"
    AFTER INSERT OR DELETE OR UPDATE
    ON GROUPS
    FOR EACH ROW
BEGIN
    IF INSERTING THEN
        INSERT INTO GROUPS_LOGS (operation, newid, newname, new_c_val)
        VALUES ('INSERT', :NEW.id, :NEW.name, :NEW.c_val);
    ELSIF DELETING THEN
        INSERT INTO GROUPS_LOGS (operation, oldid, oldname, old_c_val)
        VALUES ('DELETE', :OLD.id, :OLD.name, :OLD.c_val);
    ELSIF UPDATING THEN
        INSERT INTO GROUPS_LOGS (operation, oldid, oldname, old_c_val, newid, newname, new_c_val)
        VALUES ('UPDATE', :OLD.id, :OLD.name, :OLD.c_val, :NEW.id, :NEW.name, :NEW.c_val);
    END IF;
END;
/
ALTER TRIGGER "GROUPS_LOGS_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger GROUPS_TRG
--------------------------------------------------------

CREATE OR REPLACE NONEDITIONABLE TRIGGER "GROUPS_TRG"
    BEFORE INSERT
    ON GROUPS
    FOR EACH ROW
BEGIN
    <<COLUMN_SEQUENCES>>
    BEGIN
        NULL;
    END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "GROUPS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger GROUPS_TRG1
--------------------------------------------------------

CREATE OR REPLACE NONEDITIONABLE TRIGGER "GROUPS_TRG1"
    BEFORE INSERT
    ON GROUPS
    FOR EACH ROW
BEGIN
    <<COLUMN_SEQUENCES>>
    BEGIN
        IF INSERTING AND :NEW.ID IS NULL THEN
            SELECT GROUPS_SEQ2.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
        END IF;
    END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "GROUPS_TRG1" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MYTABLE_LOGS_TRG
--------------------------------------------------------

CREATE OR REPLACE NONEDITIONABLE TRIGGER "MYTABLE_LOGS_TRG"
    BEFORE INSERT
    ON MYTABLE_LOGS
    FOR EACH ROW
BEGIN
    <<COLUMN_SEQUENCES>>
    BEGIN
        IF INSERTING AND :NEW.ID IS NULL THEN
            SELECT MYTABLE_LOGS_SEQ.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
        END IF;
    END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "MYTABLE_LOGS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MYTABLE_LOGS_TRIGGER
--------------------------------------------------------

CREATE OR REPLACE NONEDITIONABLE TRIGGER "MYTABLE_LOGS_TRIGGER"
    AFTER INSERT OR DELETE OR UPDATE
    ON MYTABLE
    FOR EACH ROW
BEGIN
    IF INSERTING THEN
        INSERT INTO mytable_logs (operation, newid, newval, newname)
        VALUES ('INSERT', :NEW.id, :NEW.val, :NEW.name);
    ELSIF DELETING THEN
        INSERT INTO mytable_logs (operation, oldid, oldval, oldname)
        VALUES ('DELETE', :OLD.id, :OLD.val, :OLD.name);
    ELSIF UPDATING THEN
        INSERT INTO mytable_logs (operation, oldid, oldval, oldname, newid, newval, newname)
        VALUES ('UPDATE', :OLD.id, :OLD.val, :OLD.name, :NEW.id, :NEW.val, :NEW.name);
    END IF;
END;
/
ALTER TRIGGER "MYTABLE_LOGS_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MYTABLE_TRG
--------------------------------------------------------

CREATE OR REPLACE NONEDITIONABLE TRIGGER "MYTABLE_TRG"
    BEFORE INSERT
    ON MYTABLE
    FOR EACH ROW
BEGIN
    <<COLUMN_SEQUENCES>>
    BEGIN
        NULL;
    END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "MYTABLE_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MYTABLE_TRG1
--------------------------------------------------------

CREATE OR REPLACE NONEDITIONABLE TRIGGER "MYTABLE_TRG1"
    BEFORE INSERT
    ON MYTABLE
    FOR EACH ROW
BEGIN
    <<COLUMN_SEQUENCES>>
    BEGIN
        IF INSERTING AND :NEW.ID IS NULL THEN
            SELECT MYTABLE_SEQ1.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
        END IF;
    END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "MYTABLE_TRG1" ENABLE;
--------------------------------------------------------
--  DDL for Trigger STUDENTS_LOGS_TRG
--------------------------------------------------------

CREATE OR REPLACE NONEDITIONABLE TRIGGER "STUDENTS_LOGS_TRG"
    BEFORE INSERT
    ON STUDENTS_LOGS
    FOR EACH ROW
BEGIN
    <<COLUMN_SEQUENCES>>
    BEGIN
        IF INSERTING AND :NEW.ID IS NULL THEN
            SELECT STUDENTS_LOGS_SEQ1.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
        END IF;
    END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "STUDENTS_LOGS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger STUDENTS_LOGS_TRIGGER
--------------------------------------------------------

CREATE OR REPLACE NONEDITIONABLE TRIGGER "STUDENTS_LOGS_TRIGGER"
    AFTER INSERT OR DELETE OR UPDATE
    ON STUDENTS
    FOR EACH ROW
BEGIN
    IF INSERTING THEN
        INSERT INTO STUDENTS_LOGS (operation, newId, newName, newgroupid, newtime)
        VALUES ('INSERT', :NEW.id, :NEW.name, :NEW.group_id, :NEW.date_time);
    ELSIF DELETING THEN
        INSERT INTO STUDENTS_LOGS (operation, oldId, oldName, oldgroupid, oldtime)
        VALUES ('DELETE', :OLD.id, :OLD.name, :OLD.group_id, :OLD.date_time);
    ELSIF UPDATING THEN
        INSERT INTO STUDENTS_LOGS (operation, oldId, oldName, oldgroupid, newId, newName, newgroupid, oldtime, newtime)
        VALUES ('UPDATE', :OLD.id, :OLD.name, :OLD.group_id, :NEW.id, :NEW.name, :NEW.group_id, :OLD.date_time,
                :NEW.date_time);
    END IF;
END;
/
ALTER TRIGGER "STUDENTS_LOGS_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger STUDENTS_TRG
--------------------------------------------------------

CREATE OR REPLACE NONEDITIONABLE TRIGGER "STUDENTS_TRG"
    BEFORE INSERT
    ON STUDENTS
    FOR EACH ROW
BEGIN
    <<COLUMN_SEQUENCES>>
    BEGIN
        NULL;
    END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "STUDENTS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger STUDENTS_TRG1
--------------------------------------------------------

CREATE OR REPLACE NONEDITIONABLE TRIGGER "STUDENTS_TRG1"
    BEFORE INSERT
    ON STUDENTS
    FOR EACH ROW
BEGIN
    <<COLUMN_SEQUENCES>>
    BEGIN
        IF INSERTING AND :NEW.ID IS NULL THEN
            SELECT STUDENTS_SEQ3.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
        END IF;
    END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "STUDENTS_TRG1" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIGG_DELETE_CHILD_STUDENT
--------------------------------------------------------

CREATE OR REPLACE NONEDITIONABLE TRIGGER "TRIGG_DELETE_CHILD_STUDENT"
    before delete
    on GROUPS
    for
        each row
begin
    delete from STUDENTS where group_id = :old.id;
end;
/
ALTER TRIGGER "TRIGG_DELETE_CHILD_STUDENT" ENABLE;

