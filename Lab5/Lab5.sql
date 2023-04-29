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

--------------------------------------------------------
--  DDL for Procedure GENERATE_REPORT
--------------------------------------------------------
set define off;

CREATE OR REPLACE NONEDITIONABLE PROCEDURE "GENERATE_REPORT" as
    cursor groups_data is SELECT "A1"."OPERATION"  "OPERATION",
                                 "A1"."RECORDEDON" "RECORDEDON"
                          FROM "GROUPS_LOGS" "A1";
begin
    htp.p('
<table border="3" cellpadding="1" cellspacing="1" height="134" width="381">
    <tbody>
        <tr>
            <td colspan="2" style="text-align: center;"><span style="font-size:18px;">Employee Details</span></td>
        </tr>');
    for i in groups_data
        loop
            htp.p('
         <tr>
              <td>
                 <p style="margin-left: 40px;">' || i.operation || '</p>
              </td>
              <td style="text-align: center;">
                 <p style="margin-left: 40px;">Joined on ' || i.recordedon || '</p>
              </td>
          </tr>');
        end loop;
    htp.p('
    </tbody>
</table>');

end generate_report;

/
--------------------------------------------------------
--  DDL for Procedure RECOVER_DATE
--------------------------------------------------------
set define off;

CREATE OR REPLACE NONEDITIONABLE PROCEDURE "RECOVER_DATE"(tm TIMESTAMP)
    IS
    log_student students_logs%ROWTYPE DEFAULT NULL;
    log_group   groups_logs%ROWTYPE DEFAULT NULL;
    log_mytable mytable_logs%ROWTYPE DEFAULT NULL;
    counter     NUMBER;
    finish      BOOLEAN DEFAULT FALSE;
BEGIN
    WHILE NOT finish
        LOOP
            SELECT COUNT(*) INTO counter FROM mytable;
            IF counter > 0 THEN
                SELECT * INTO log_mytable FROM (SELECT * FROM mytable_logs ORDER BY recordedon DESC) WHERE ROWNUM = 1;
                IF (tm <= log_mytable.recordedon)
                THEN
                    /* IF INSERT => DOING DELETE*/
                    IF log_mytable.operation = 'INSERT'
                    THEN
                        DELETE
                        FROM mytable
                        WHERE id = log_mytable.newid
                          AND name = log_mytable.newname
                          AND val = log_mytable.newval;
                        /* IF UPDATE => DOING REVERSED UPDATE*/
                    ELSIF log_mytable.operation = 'UPDATE'
                    THEN
                        UPDATE mytable
                        SET id   = log_mytable.oldid,
                            name = log_mytable.oldname,
                            val  = log_mytable.oldval
                        WHERE id = log_mytable.newid
                          AND name = log_mytable.newname
                          AND val = log_mytable.newval;
                        /* IF DELETE => DOING INSERT*/
                    ELSIF log_mytable.operation = 'DELETE'
                    THEN
                        INSERT INTO mytable(id, name, val)
                        VALUES (log_mytable.oldid, log_mytable.oldname, log_mytable.oldval);
                    END IF;
                    DELETE FROM mytable_logs WHERE id = log_mytable.id;
                    log_mytable := NULL;
                ELSE
                    finish := TRUE;
                END IF;
            ELSE
                finish := TRUE;
            END IF;

        END LOOP;

    finish := false;
    --groups recover
    WHILE NOT finish
        LOOP
            SELECT COUNT(*) INTO counter FROM groups;
            IF counter > 0 THEN
                SELECT * INTO log_group FROM (SELECT * FROM GROUPS_LOGS ORDER BY recordedon DESC) WHERE ROWNUM = 1;
                IF (tm <= log_group.recordedon)
                THEN
                    /* IF INSERT => DOING DELETE*/
                    IF log_group.operation = 'INSERT'
                    THEN
                        DELETE FROM groups WHERE id = log_group.newid AND name = log_group.newname;
                        /* IF UPDATE => DOING REVERSED UPDATE*/
                    ELSIF log_group.operation = 'UPDATE'
                    THEN
                        UPDATE groups
                        SET id    = log_group.oldid,
                            name  = log_group.oldname,
                            c_val = log_group.old_c_val
                        WHERE id = log_group.newid
                          AND name = log_group.newname;
                        /* IF DELETE => DOING INSERT*/
                    ELSIF log_group.operation = 'DELETE'
                    THEN
                        INSERT INTO groups(id, name, c_val)
                        VALUES (log_group.oldid, log_group.oldname, log_group.old_c_val);
                    END IF;
                    DELETE FROM groups_logs WHERE id = log_group.id;
                    log_group := NULL;

                ELSE
                    finish := TRUE;
                END IF;
            ELSE
                finish := TRUE;
            END IF;
        END LOOP;

    -- students recover
    finish := false;
    WHILE NOT finish
        LOOP
            SELECT COUNT(*) INTO counter FROM students;
            IF counter > 0 THEN
                SELECT * INTO log_student FROM (SELECT * FROM STUDENTS_LOGS ORDER BY recordedon DESC) WHERE ROWNUM = 1;
                IF (tm <= log_student.recordedon)
                THEN
                    /* IF INSERT => DOING DELETE*/
                    IF log_student.operation = 'INSERT'
                    THEN
                        DELETE FROM students WHERE id = log_student.newId AND group_id = log_student.newgroupid;
                        /* IF UPDATE => DOING REVERSED UPDATE*/
                    ELSIF log_student.operation = 'UPDATE'
                    THEN
                        UPDATE students
                        SET id        = log_student.oldId,
                            name      = log_student.oldName,
                            group_id  = log_student.oldgroupid,
                            date_time = log_student.oldtime
                        WHERE id = log_student.newId
                          AND group_id = log_student.newgroupid;
                        /* IF DELETE => DOING INSERT*/
                    ELSIF log_student.operation = 'DELETE'
                    THEN
                        INSERT INTO students(id, name, group_id, date_time)
                        VALUES (log_student.oldId, log_student.oldName, log_student.oldgroupid, log_student.oldtime);

                    END IF;
                    DELETE FROM students_logs WHERE id = log_student.id;
                    log_student := NULL;
                ELSE
                    finish := TRUE;
                END IF;
            ELSE
                finish := TRUE;
            END IF;
        END LOOP;

END;

/
--------------------------------------------------------
--  DDL for Procedure RECOVER_DELTA
--------------------------------------------------------
set define off;

CREATE OR REPLACE NONEDITIONABLE PROCEDURE "RECOVER_DELTA"(delta NUMBER)
    IS
    log_student students_logs%ROWTYPE DEFAULT NULL;
    log_group   groups_logs%ROWTYPE DEFAULT NULL;
    log_mytable mytable_logs%ROWTYPE DEFAULT NULL;
    tm          TIMESTAMP;
    counter     NUMBER;
    finish      BOOLEAN DEFAULT FALSE;
BEGIN
    tm := SYSTIMESTAMP - INTERVAL '1' SECOND * delta;
    WHILE NOT finish
        LOOP
            SELECT COUNT(*) INTO counter FROM mytable;
            IF counter > 0 THEN
                SELECT * INTO log_mytable FROM (SELECT * FROM mytable_logs ORDER BY recordedon DESC) WHERE ROWNUM = 1;
                IF (tm <= log_mytable.recordedon)
                THEN
                    /* IF INSERT => DOING DELETE*/
                    IF log_mytable.operation = 'INSERT'
                    THEN
                        DELETE
                        FROM mytable
                        WHERE id = log_mytable.newid
                          AND name = log_mytable.newname
                          AND val = log_mytable.newval;
                        /* IF UPDATE => DOING REVERSED UPDATE*/
                    ELSIF log_mytable.operation = 'UPDATE'
                    THEN
                        UPDATE mytable
                        SET id   = log_mytable.oldid,
                            name = log_mytable.oldname,
                            val  = log_mytable.oldval
                        WHERE id = log_mytable.newid
                          AND name = log_mytable.newname
                          AND val = log_mytable.newval;
                        /* IF DELETE => DOING INSERT*/
                    ELSIF log_mytable.operation = 'DELETE'
                    THEN
                        INSERT INTO mytable(id, name, val)
                        VALUES (log_mytable.oldid, log_mytable.oldname, log_mytable.oldval);
                    END IF;
                    DELETE FROM mytable_logs WHERE id = log_mytable.id;
                    log_mytable := NULL;
                ELSE
                    finish := TRUE;
                END IF;
            ELSE
                finish := TRUE;
            END IF;

        END LOOP;

    finish := false;
    --groups recover
    WHILE NOT finish
        LOOP
            SELECT COUNT(*) INTO counter FROM groups;
            IF counter > 0 THEN
                SELECT * INTO log_group FROM (SELECT * FROM GROUPS_LOGS ORDER BY recordedon DESC) WHERE ROWNUM = 1;
                IF (tm <= log_group.recordedon)
                THEN
                    /* IF INSERT => DOING DELETE*/
                    IF log_group.operation = 'INSERT'
                    THEN
                        DELETE FROM groups WHERE id = log_group.newid AND name = log_group.newname;
                        /* IF UPDATE => DOING REVERSED UPDATE*/
                    ELSIF log_group.operation = 'UPDATE'
                    THEN
                        UPDATE groups
                        SET id    = log_group.oldid,
                            name  = log_group.oldname,
                            c_val = log_group.old_c_val
                        WHERE id = log_group.newid
                          AND name = log_group.newname;
                        /* IF DELETE => DOING INSERT*/
                    ELSIF log_group.operation = 'DELETE'
                    THEN
                        INSERT INTO groups(id, name, c_val)
                        VALUES (log_group.oldid, log_group.oldname, log_group.old_c_val);
                    END IF;
                    DELETE FROM groups_logs WHERE id = log_group.id;
                    log_group := NULL;

                ELSE
                    finish := TRUE;
                END IF;
            ELSE
                finish := TRUE;
            END IF;
        END LOOP;

    -- students recover
    finish := false;
    WHILE NOT finish
        LOOP
            SELECT COUNT(*) INTO counter FROM students;
            IF counter > 0 THEN
                SELECT * INTO log_student FROM (SELECT * FROM STUDENTS_LOGS ORDER BY recordedon DESC) WHERE ROWNUM = 1;
                IF (tm <= log_student.recordedon)
                THEN
                    /* IF INSERT => DOING DELETE*/
                    IF log_student.operation = 'INSERT'
                    THEN
                        DELETE FROM students WHERE id = log_student.newId AND group_id = log_student.newgroupid;
                        /* IF UPDATE => DOING REVERSED UPDATE*/
                    ELSIF log_student.operation = 'UPDATE'
                    THEN
                        UPDATE students
                        SET id        = log_student.oldId,
                            name      = log_student.oldName,
                            group_id  = log_student.oldgroupid,
                            date_time = log_student.oldtime
                        WHERE id = log_student.newId
                          AND group_id = log_student.newgroupid;
                        /* IF DELETE => DOING INSERT*/
                    ELSIF log_student.operation = 'DELETE'
                    THEN
                        INSERT INTO students(id, name, group_id, date_time)
                        VALUES (log_student.oldId, log_student.oldName, log_student.oldgroupid, log_student.oldtime);

                    END IF;
                    DELETE FROM students_logs WHERE id = log_student.id;
                    log_student := NULL;
                ELSE
                    finish := TRUE;
                END IF;
            ELSE
                finish := TRUE;
            END IF;
        END LOOP;


EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('asd');

END;

/
--------------------------------------------------------
--  DDL for Procedure STUDENTS_RECOVER
--------------------------------------------------------
set define off;

CREATE OR REPLACE NONEDITIONABLE PROCEDURE "STUDENTS_RECOVER"(tm TIMESTAMP)
    IS
    log    students_logs%ROWTYPE DEFAULT NULL;
    finish BOOLEAN DEFAULT FALSE;
BEGIN
    WHILE NOT finish
        LOOP

            SELECT * INTO log FROM (SELECT * FROM STUDENTS_LOGS ORDER BY recordedon DESC) WHERE ROWNUM = 1;
            dbms_output.put_line(log.id);
            IF (tm <= log.recordedon)
            THEN
                /* IF INSERT => DOING DELETE*/
                IF log.operation = 'INSERT'
                THEN
                    DELETE FROM students WHERE id = log.newId AND group_id = log.newgroupid;
                    /* IF UPDATE => DOING REVERSED UPDATE*/
                ELSIF log.operation = 'UPDATE'
                THEN
                    UPDATE students
                    SET id       = log.oldId,
                        name     = log.oldName,
                        group_id = log.oldgroupid
                    WHERE id = log.newId
                      AND group_id = log.newgroupid;
                    /* IF DELETE => DOING INSERT*/
                ELSIF log.operation = 'DELETE'
                THEN
                    INSERT INTO students(id, name, group_id) VALUES (log.oldId, log.oldName, log.oldgroupid);

                END IF;
                DELETE FROM students_logs WHERE id = log.id;
                log := NULL;

            ELSE
                finish := TRUE;
            END IF;
        END LOOP;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('');
END;

/
--------------------------------------------------------
--  DDL for Package OT_HTML_PKG
--------------------------------------------------------

CREATE OR REPLACE NONEDITIONABLE PACKAGE "OT_HTML_PKG" wrapped
a000000
b2
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
9
fe d6
6o6Ut0LzoyayI2aU9fB/
yWeEk3Mwg5DQ2ssVfC+iJhAYzfFaIWngzFYzBlQIrhND6s1/
UyIY
L/
OURGRY/
PDJq0W9HTWUpGxJeV6pVxMOwXVax4EaeErmxfUfzo8nWERt3ZQx8IX4P3jd7udV
AwPoUjJdljSn5pp3gBtJjSyjfLbbwuW6HZ3eu2KqMNE961FWrVSElaq1oMlO4dkErc4=

/
--------------------------------------------------------
--  DDL for Package OVERLOADED_PACKAGE
--------------------------------------------------------

CREATE OR REPLACE NONEDITIONABLE PACKAGE "OVERLOADED_PACKAGE" as
    procedure recover_table(tm in timestamp);
    procedure recover_table(delta in number);
end;

/
--------------------------------------------------------
--  DDL for Package RECOVER_DATA
--------------------------------------------------------

CREATE OR REPLACE NONEDITIONABLE PACKAGE "RECOVER_DATA" as
    procedure recover_date(tm TIMESTAMP);
    procedure recover_delta(delta VARCHAR2);
end;

create or replace package body recover_data is

    PROCEDURE recover_date(tm TIMESTAMP)
        IS
        log_student students_logs%ROWTYPE DEFAULT NULL;
        log_group   groups_logs%ROWTYPE DEFAULT NULL;
        log_mytable mytable_logs%ROWTYPE DEFAULT NULL;
        finish      BOOLEAN DEFAULT FALSE;
    BEGIN

        --mytable recover
        WHILE NOT finish
            LOOP
                SELECT * INTO log_mytable FROM (SELECT * FROM mytable_logs ORDER BY recordedon DESC) WHERE ROWNUM = 1;
                IF (tm <= log_mytable.recordedon)
                THEN
                    /* IF INSERT => DOING DELETE*/
                    IF log_mytable.operation = 'INSERT'
                    THEN
                        DELETE
                        FROM mytable
                        WHERE id = log_mytable.newid
                          AND name = log_mytable.newname
                          AND val = log_mytable.newval;
                        /* IF UPDATE => DOING REVERSED UPDATE*/
                    ELSIF log_mytable.operation = 'UPDATE'
                    THEN
                        UPDATE mytable
                        SET id   = log_mytable.oldid,
                            name = log_mytable.oldname,
                            val  = log_mytable.oldval
                        WHERE id = log_mytable.newid
                          AND name = log_mytable.newname
                          AND val = log_mytable.newval;
                        /* IF DELETE => DOING INSERT*/
                    ELSIF log_mytable.operation = 'DELETE'
                    THEN
                        INSERT INTO mytable(id, name, val)
                        VALUES (log_mytable.oldid, log_mytable.oldname, log_mytable.oldval);
                    END IF;
                    DELETE FROM mytable_logs WHERE id = log_mytable.id;
                    log_mytable := NULL;
                ELSE
                    finish := TRUE;
                END IF;
            END LOOP;

        --groups recover
        WHILE NOT finish
            LOOP
                SELECT * INTO log_group FROM (SELECT * FROM GROUPS_LOGS ORDER BY recordedon DESC) WHERE ROWNUM = 1;
                IF (tm <= log_group.recordedon)
                THEN
                    /* IF INSERT => DOING DELETE*/
                    IF log_group.operation = 'INSERT'
                    THEN
                        DELETE FROM groups WHERE id = log_group.newid AND name = log_group.newname;
                        /* IF UPDATE => DOING REVERSED UPDATE*/
                    ELSIF log_group.operation = 'UPDATE'
                    THEN
                        UPDATE groups
                        SET id    = log_group.oldid,
                            name  = log_group.oldname,
                            c_val = log_group.old_c_val
                        WHERE id = log_group.newid
                          AND name = log_group.newname;
                        /* IF DELETE => DOING INSERT*/
                    ELSIF log_group.operation = 'DELETE'
                    THEN
                        INSERT INTO groups(id, name, c_val)
                        VALUES (log_group.oldid, log_group.oldname, log_group.old_c_val);
                    END IF;
                    DELETE FROM groups_logs WHERE id = log_group.id;
                    log_group := NULL;

                ELSE
                    finish := TRUE;
                END IF;
            END LOOP;

        -- students recover
        finish := false;
        WHILE NOT finish
            LOOP
                SELECT * INTO log_student FROM (SELECT * FROM STUDENTS_LOGS ORDER BY recordedon DESC) WHERE ROWNUM = 1;
                IF (tm <= log_student.recordedon)
                THEN
                    /* IF INSERT => DOING DELETE*/
                    IF log_student.operation = 'INSERT'
                    THEN
                        DELETE FROM students WHERE id = log_student.newId AND group_id = log_student.newgroupid;
                        /* IF UPDATE => DOING REVERSED UPDATE*/
                    ELSIF log_student.operation = 'UPDATE'
                    THEN
                        UPDATE students
                        SET id        = log_student.oldId,
                            name      = log_student.oldName,
                            group_id  = log_student.oldgroupid,
                            date_time = log_student.oldtime
                        WHERE id = log_student.newId
                          AND group_id = log_student.newgroupid;
                        /* IF DELETE => DOING INSERT*/
                    ELSIF log_student.operation = 'DELETE'
                    THEN
                        INSERT INTO students(id, name, group_id, date_time)
                        VALUES (log_student.oldId, log_student.oldName, log_student.oldgroupid, log_student.oldtime);

                    END IF;
                    DELETE FROM students_logs WHERE id = log_student.id;
                    log_student := NULL;
                ELSE
                    finish := TRUE;
                END IF;
            END LOOP;


    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('');
    END;


    PROCEDURE recover_delta(delta VARCHAR2)
        IS
        log_student students_logs%ROWTYPE DEFAULT NULL;
        log_group   groups_logs%ROWTYPE DEFAULT NULL;
        log_mytable mytable_logs%ROWTYPE DEFAULT NULL;
        tm          TIMESTAMP;
        finish      BOOLEAN DEFAULT FALSE;
    BEGIN
        tm := SYSTIMESTAMP - INTERVAL '1' SECOND * delta;
        --mytable recover
        WHILE NOT finish
            LOOP
                SELECT * INTO log_mytable FROM (SELECT * FROM mytable_logs ORDER BY recordedon DESC) WHERE ROWNUM = 1;
                IF (tm <= log_mytable.recordedon)
                THEN
                    /* IF INSERT => DOING DELETE*/
                    IF log_mytable.operation = 'INSERT'
                    THEN
                        DELETE
                        FROM mytable
                        WHERE id = log_mytable.newid
                          AND name = log_mytable.newname
                          AND val = log_mytable.newval;
                        /* IF UPDATE => DOING REVERSED UPDATE*/
                    ELSIF log_mytable.operation = 'UPDATE'
                    THEN
                        UPDATE mytable
                        SET id   = log_mytable.oldid,
                            name = log_mytable.oldname,
                            val  = log_mytable.oldval
                        WHERE id = log_mytable.newid
                          AND name = log_mytable.newname
                          AND val = log_mytable.newval;
                        /* IF DELETE => DOING INSERT*/
                    ELSIF log_mytable.operation = 'DELETE'
                    THEN
                        INSERT INTO mytable(id, name, val)
                        VALUES (log_mytable.oldid, log_mytable.oldname, log_mytable.oldval);
                    END IF;
                    DELETE FROM mytable_logs WHERE id = log_mytable.id;
                    log_mytable := NULL;
                ELSE
                    finish := TRUE;
                END IF;
            END LOOP;

        --groups recover
        WHILE NOT finish
            LOOP
                SELECT * INTO log_group FROM (SELECT * FROM GROUPS_LOGS ORDER BY recordedon DESC) WHERE ROWNUM = 1;
                IF (tm <= log_group.recordedon)
                THEN
                    /* IF INSERT => DOING DELETE*/
                    IF log_group.operation = 'INSERT'
                    THEN
                        DELETE FROM groups WHERE id = log_group.newid AND name = log_group.newname;
                        /* IF UPDATE => DOING REVERSED UPDATE*/
                    ELSIF log_group.operation = 'UPDATE'
                    THEN
                        UPDATE groups
                        SET id    = log_group.oldid,
                            name  = log_group.oldname,
                            c_val = log_group.old_c_val
                        WHERE id = log_group.newid
                          AND name = log_group.newname;
                        /* IF DELETE => DOING INSERT*/
                    ELSIF log_group.operation = 'DELETE'
                    THEN
                        INSERT INTO groups(id, name, c_val)
                        VALUES (log_group.oldid, log_group.oldname, log_group.old_c_val);
                    END IF;
                    DELETE FROM groups_logs WHERE id = log_group.id;
                    log_group := NULL;

                ELSE
                    finish := TRUE;
                END IF;
            END LOOP;

        -- students recover
        finish := false;
        WHILE NOT finish
            LOOP
                SELECT * INTO log_student FROM (SELECT * FROM STUDENTS_LOGS ORDER BY recordedon DESC) WHERE ROWNUM = 1;
                IF (tm <= log_student.recordedon)
                THEN
                    /* IF INSERT => DOING DELETE*/
                    IF log_student.operation = 'INSERT'
                    THEN
                        DELETE FROM students WHERE id = log_student.newId AND group_id = log_student.newgroupid;
                        /* IF UPDATE => DOING REVERSED UPDATE*/
                    ELSIF log_student.operation = 'UPDATE'
                    THEN
                        UPDATE students
                        SET id        = log_student.oldId,
                            name      = log_student.oldName,
                            group_id  = log_student.oldgroupid,
                            date_time = log_student.oldtime
                        WHERE id = log_student.newId
                          AND group_id = log_student.newgroupid;
                        /* IF DELETE => DOING INSERT*/
                    ELSIF log_student.operation = 'DELETE'
                    THEN
                        INSERT INTO students(id, name, group_id, date_time)
                        VALUES (log_student.oldId, log_student.oldName, log_student.oldgroupid, log_student.oldtime);

                    END IF;
                    DELETE FROM students_logs WHERE id = log_student.id;
                    log_student := NULL;
                ELSE
                    finish := TRUE;
                END IF;
            END LOOP;


    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('');
    END;
end;

/
--------------------------------------------------------
--  DDL for Package RECOVER_TABLES_DATA
--------------------------------------------------------

CREATE OR REPLACE NONEDITIONABLE PACKAGE "RECOVER_TABLES_DATA" as
    procedure recover_date(tm in TIMESTAMP);
    procedure recover_date(delta in number);
end recover_tables_data;

create or replace package body recover_tables_data as

    PROCEDURE recover_date(tm TIMESTAMP)
        IS
        log_student students_logs%ROWTYPE DEFAULT NULL;
        log_group   groups_logs%ROWTYPE DEFAULT NULL;
        log_mytable mytable_logs%ROWTYPE DEFAULT NULL;
        finish      BOOLEAN DEFAULT FALSE;
    BEGIN

        --mytable recover
        WHILE NOT finish
            LOOP
                SELECT * INTO log_mytable FROM (SELECT * FROM mytable_logs ORDER BY recordedon DESC) WHERE ROWNUM = 1;
                IF (tm <= log_mytable.recordedon)
                THEN
                    /* IF INSERT => DOING DELETE*/
                    IF log_mytable.operation = 'INSERT'
                    THEN
                        DELETE
                        FROM mytable
                        WHERE id = log_mytable.newid
                          AND name = log_mytable.newname
                          AND val = log_mytable.newval;
                        /* IF UPDATE => DOING REVERSED UPDATE*/
                    ELSIF log_mytable.operation = 'UPDATE'
                    THEN
                        UPDATE mytable
                        SET id   = log_mytable.oldid,
                            name = log_mytable.oldname,
                            val  = log_mytable.oldval
                        WHERE id = log_mytable.newid
                          AND name = log_mytable.newname
                          AND val = log_mytable.newval;
                        /* IF DELETE => DOING INSERT*/
                    ELSIF log_mytable.operation = 'DELETE'
                    THEN
                        INSERT INTO mytable(id, name, val)
                        VALUES (log_mytable.oldid, log_mytable.oldname, log_mytable.oldval);
                    END IF;
                    DELETE FROM mytable_logs WHERE id = log_mytable.id;
                    log_mytable := NULL;
                ELSE
                    finish := TRUE;
                END IF;
            END LOOP;

        --groups recover
        WHILE NOT finish
            LOOP
                SELECT * INTO log_group FROM (SELECT * FROM GROUPS_LOGS ORDER BY recordedon DESC) WHERE ROWNUM = 1;
                IF (tm <= log_group.recordedon)
                THEN
                    /* IF INSERT => DOING DELETE*/
                    IF log_group.operation = 'INSERT'
                    THEN
                        DELETE FROM groups WHERE id = log_group.newid AND name = log_group.newname;
                        /* IF UPDATE => DOING REVERSED UPDATE*/
                    ELSIF log_group.operation = 'UPDATE'
                    THEN
                        UPDATE groups
                        SET id    = log_group.oldid,
                            name  = log_group.oldname,
                            c_val = log_group.old_c_val
                        WHERE id = log_group.newid
                          AND name = log_group.newname;
                        /* IF DELETE => DOING INSERT*/
                    ELSIF log_group.operation = 'DELETE'
                    THEN
                        INSERT INTO groups(id, name, c_val)
                        VALUES (log_group.oldid, log_group.oldname, log_group.old_c_val);
                    END IF;
                    DELETE FROM groups_logs WHERE id = log_group.id;
                    log_group := NULL;

                ELSE
                    finish := TRUE;
                END IF;
            END LOOP;

        -- students recover
        finish := false;
        WHILE NOT finish
            LOOP
                SELECT * INTO log_student FROM (SELECT * FROM STUDENTS_LOGS ORDER BY recordedon DESC) WHERE ROWNUM = 1;
                IF (tm <= log_student.recordedon)
                THEN
                    /* IF INSERT => DOING DELETE*/
                    IF log_student.operation = 'INSERT'
                    THEN
                        DELETE FROM students WHERE id = log_student.newId AND group_id = log_student.newgroupid;
                        /* IF UPDATE => DOING REVERSED UPDATE*/
                    ELSIF log_student.operation = 'UPDATE'
                    THEN
                        UPDATE students
                        SET id        = log_student.oldId,
                            name      = log_student.oldName,
                            group_id  = log_student.oldgroupid,
                            date_time = log_student.oldtime
                        WHERE id = log_student.newId
                          AND group_id = log_student.newgroupid;
                        /* IF DELETE => DOING INSERT*/
                    ELSIF log_student.operation = 'DELETE'
                    THEN
                        INSERT INTO students(id, name, group_id, date_time)
                        VALUES (log_student.oldId, log_student.oldName, log_student.oldgroupid, log_student.oldtime);

                    END IF;
                    DELETE FROM students_logs WHERE id = log_student.id;
                    log_student := NULL;
                ELSE
                    finish := TRUE;
                END IF;
            END LOOP;


    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('');
    END recover_date;

    PROCEDURE recover_date(delta VARCHAR2)
        IS
        log_student students_logs%ROWTYPE DEFAULT NULL;
        log_group   groups_logs%ROWTYPE DEFAULT NULL;
        log_mytable mytable_logs%ROWTYPE DEFAULT NULL;
        tm          TIMESTAMP;
        finish      BOOLEAN DEFAULT FALSE;
    BEGIN
        tm := SYSTIMESTAMP - INTERVAL || delta || SECOND;
        --mytable recover
        WHILE NOT finish
            LOOP
                SELECT * INTO log_mytable FROM (SELECT * FROM mytable_logs ORDER BY recordedon DESC) WHERE ROWNUM = 1;
                IF (tm <= log_mytable.recordedon)
                THEN
                    /* IF INSERT => DOING DELETE*/
                    IF log_mytable.operation = 'INSERT'
                    THEN
                        DELETE
                        FROM mytable
                        WHERE id = log_mytable.newid
                          AND name = log_mytable.newname
                          AND val = log_mytable.newval;
                        /* IF UPDATE => DOING REVERSED UPDATE*/
                    ELSIF log_mytable.operation = 'UPDATE'
                    THEN
                        UPDATE mytable
                        SET id   = log_mytable.oldid,
                            name = log_mytable.oldname,
                            val  = log_mytable.oldval
                        WHERE id = log_mytable.newid
                          AND name = log_mytable.newname
                          AND val = log_mytable.newval;
                        /* IF DELETE => DOING INSERT*/
                    ELSIF log_mytable.operation = 'DELETE'
                    THEN
                        INSERT INTO mytable(id, name, val)
                        VALUES (log_mytable.oldid, log_mytable.oldname, log_mytable.oldval);
                    END IF;
                    DELETE FROM mytable_logs WHERE id = log_mytable.id;
                    log_mytable := NULL;
                ELSE
                    finish := TRUE;
                END IF;
            END LOOP;

        --groups recover
        WHILE NOT finish
            LOOP
                SELECT * INTO log_group FROM (SELECT * FROM GROUPS_LOGS ORDER BY recordedon DESC) WHERE ROWNUM = 1;
                IF (tm <= log_group.recordedon)
                THEN
                    /* IF INSERT => DOING DELETE*/
                    IF log_group.operation = 'INSERT'
                    THEN
                        DELETE FROM groups WHERE id = log_group.newid AND name = log_group.newname;
                        /* IF UPDATE => DOING REVERSED UPDATE*/
                    ELSIF log_group.operation = 'UPDATE'
                    THEN
                        UPDATE groups
                        SET id    = log_group.oldid,
                            name  = log_group.oldname,
                            c_val = log_group.old_c_val
                        WHERE id = log_group.newid
                          AND name = log_group.newname;
                        /* IF DELETE => DOING INSERT*/
                    ELSIF log_group.operation = 'DELETE'
                    THEN
                        INSERT INTO groups(id, name, c_val)
                        VALUES (log_group.oldid, log_group.oldname, log_group.old_c_val);
                    END IF;
                    DELETE FROM groups_logs WHERE id = log_group.id;
                    log_group := NULL;

                ELSE
                    finish := TRUE;
                END IF;
            END LOOP;

        -- students recover
        finish := false;
        WHILE NOT finish
            LOOP
                SELECT * INTO log_student FROM (SELECT * FROM STUDENTS_LOGS ORDER BY recordedon DESC) WHERE ROWNUM = 1;
                IF (tm <= log_student.recordedon)
                THEN
                    /* IF INSERT => DOING DELETE*/
                    IF log_student.operation = 'INSERT'
                    THEN
                        DELETE FROM students WHERE id = log_student.newId AND group_id = log_student.newgroupid;
                        /* IF UPDATE => DOING REVERSED UPDATE*/
                    ELSIF log_student.operation = 'UPDATE'
                    THEN
                        UPDATE students
                        SET id        = log_student.oldId,
                            name      = log_student.oldName,
                            group_id  = log_student.oldgroupid,
                            date_time = log_student.oldtime
                        WHERE id = log_student.newId
                          AND group_id = log_student.newgroupid;
                        /* IF DELETE => DOING INSERT*/
                    ELSIF log_student.operation = 'DELETE'
                    THEN
                        INSERT INTO students(id, name, group_id, date_time)
                        VALUES (log_student.oldId, log_student.oldName, log_student.oldgroupid, log_student.oldtime);

                    END IF;
                    DELETE FROM students_logs WHERE id = log_student.id;
                    log_student := NULL;
                ELSE
                    finish := TRUE;
                END IF;
            END LOOP;


    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('');
    END recover_date;
end recover_tables_data;

/
--------------------------------------------------------
--  DDL for Package REPORTS
--------------------------------------------------------

CREATE OR REPLACE NONEDITIONABLE PACKAGE "REPORTS" as
    procedure get_report(required_date in timestamp);
    procedure get_report;
end;

/
--------------------------------------------------------
--  DDL for Package TEST_PKG
--------------------------------------------------------

CREATE OR REPLACE NONEDITIONABLE PACKAGE "TEST_PKG" IS

    PROCEDURE Out_Screen(TOSC IN VARCHAR2);

    FUNCTION Add_Two_Num(A IN NUMBER, B IN NUMBER) RETURN NUMBER;

    FUNCTION Min_Two_Num(A IN NUMBER, B IN NUMBER) RETURN NUMBER;

    FUNCTION FACTORIAL(NUM IN NUMBER) RETURN NUMBER;

END test_pkg;

/
--------------------------------------------------------
--  DDL for Package Body OT_HTML_PKG
--------------------------------------------------------

CREATE OR REPLACE NONEDITIONABLE PACKAGE BODY "OT_HTML_PKG" wrapped
a000000
b2
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
b
355 1fa
I7tqxpxRQNE1poIEiKDbwQsJpVwwg41e2Uhqyi+KMQ+vf8zMXegJXj3N+xNEjHBnqRNd27W1
6ULOlFzwwyyKTMmfv8kBdCn/Rh0nKu2ozYS7W4hHWO/uxQsyW/WgfB0RF+GUb3tkzWIWZabT
nhC2BYHbHFICHAAbfKjutVyQd3nFWpoQ6XFd2WjlL2APwoS5uSA57EcRgNTdG9R63v4jeu2Q
M0Qb1hyNrrjVjvRIRpvdC6/GHyNkHkVLX5+3SrLkCUsaSVppmTzDYrhrua+FsM2P5kcods96
BryuEkef7D1ZFOIroPRjnafwxNrb45yRUI4VlZ4sVWo9C6CDNNImxy0IvlxsDd9Cu23fmUb/
wqXCLHEYCMJyaJ8D9YIjoNUImhTUXX2SWHhr6Vz1TKzBAcmsNbPYf5X2E03Xr+iycdp8hxGN
O2C6g/5wpBggjRfnYSuZH5crsJuNgRGi5rcEr/J+9LgIWwyA65BTDCXX3uWwLPzHcnU=

/
--------------------------------------------------------
--  DDL for Package Body OVERLOADED_PACKAGE
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE PACKAGE BODY "OVERLOADED_PACKAGE" as
    PROCEDURE recover_table(tm in TIMESTAMP)
    IS
            log_student students_logs%ROWTYPE DEFAULT NULL;
log_group groups_logs%ROWTYPE DEFAULT NULL;
log_mytable mytable_logs%ROWTYPE DEFAULT NULL;
counter NUMBER;
finish BOOLEAN DEFAULT FALSE;
BEGIN
    WHILE NOT finish
        LOOP
            SELECT COUNT(*) INTO counter FROM mytable;
            IF counter > 0 THEN
                SELECT * INTO log_mytable FROM (SELECT * FROM mytable_logs ORDER BY recordedon DESC) WHERE ROWNUM = 1;
                IF (tm <= log_mytable.recordedon)
                THEN
                    /* IF INSERT => DOING DELETE*/
                    IF log_mytable.operation = 'INSERT'
                    THEN
                        DELETE
                        FROM mytable
                        WHERE id = log_mytable.newid
                          AND name = log_mytable.newname
                          AND val = log_mytable.newval;
                        /* IF UPDATE => DOING REVERSED UPDATE*/
                    ELSIF log_mytable.operation = 'UPDATE'
                    THEN
                        UPDATE mytable
                        SET id   = log_mytable.oldid,
                            name = log_mytable.oldname,
                            val  = log_mytable.oldval
                        WHERE id = log_mytable.newid
                          AND name = log_mytable.newname
                          AND val = log_mytable.newval;
                        /* IF DELETE => DOING INSERT*/
                    ELSIF log_mytable.operation = 'DELETE'
                    THEN
                        INSERT INTO mytable(id, name, val)
                        VALUES (log_mytable.oldid, log_mytable.oldname, log_mytable.oldval);
                    END IF;
                    DELETE FROM mytable_logs WHERE id = log_mytable.id;
                    log_mytable := NULL;
                ELSE
                    finish := TRUE;
                END IF;
            ELSE
                finish := TRUE;
            END IF;

        END LOOP;

    finish := false;
    --groups recover
    WHILE NOT finish
        LOOP
            SELECT COUNT(*) INTO counter FROM groups;
            IF counter > 0 THEN
                SELECT * INTO log_group FROM (SELECT * FROM GROUPS_LOGS ORDER BY recordedon DESC) WHERE ROWNUM = 1;
                IF (tm <= log_group.recordedon)
                THEN
                    /* IF INSERT => DOING DELETE*/
                    IF log_group.operation = 'INSERT'
                    THEN
                        DELETE FROM groups WHERE id = log_group.newid AND name = log_group.newname;
                        /* IF UPDATE => DOING REVERSED UPDATE*/
                    ELSIF log_group.operation = 'UPDATE'
                    THEN
                        UPDATE groups
                        SET id    = log_group.oldid,
                            name  = log_group.oldname,
                            c_val = log_group.old_c_val
                        WHERE id = log_group.newid
                          AND name = log_group.newname;
                        /* IF DELETE => DOING INSERT*/
                    ELSIF log_group.operation = 'DELETE'
                    THEN
                        INSERT INTO groups(id, name, c_val)
                        VALUES (log_group.oldid, log_group.oldname, log_group.old_c_val);
                    END IF;
                    DELETE FROM groups_logs WHERE id = log_group.id;
                    log_group := NULL;

                ELSE
                    finish := TRUE;
                END IF;
            ELSE
                finish := TRUE;
            END IF;
        END LOOP;

    -- students recover
    finish := false;

    WHILE NOT finish
        LOOP
            SELECT COUNT(*) INTO counter FROM students;
            IF counter > 0 THEN
                SELECT * INTO log_student FROM (SELECT * FROM STUDENTS_LOGS ORDER BY recordedon DESC) WHERE ROWNUM = 1;
                IF (tm <= log_student.recordedon)
                THEN
                    /* IF INSERT => DOING DELETE*/
                    IF log_student.operation = 'INSERT'
                    THEN
                        DELETE FROM students WHERE id = log_student.newId AND group_id = log_student.newgroupid;
                        /* IF UPDATE => DOING REVERSED UPDATE*/
                    ELSIF log_student.operation = 'UPDATE'
                    THEN
                        UPDATE students
                        SET id        = log_student.oldId,
                            name      = log_student.oldName,
                            group_id  = log_student.oldgroupid,
                            date_time = log_student.oldtime
                        WHERE id = log_student.newId
                          AND group_id = log_student.newgroupid;
                        /* IF DELETE => DOING INSERT*/
                    ELSIF log_student.operation = 'DELETE'
                    THEN
                        INSERT INTO students(id, name, group_id, date_time)
                        VALUES (log_student.oldId, log_student.oldName, log_student.oldgroupid, log_student.oldtime);

                    END IF;
                    DELETE FROM students_logs WHERE id = log_student.id;
                    log_student := NULL;
                ELSE
                    finish := TRUE;
                END IF;
            ELSE
                finish := TRUE;
            END IF;
        END LOOP;

END;

PROCEDURE recover_table(delta in NUMBER)
    IS
        log_student students_logs%ROWTYPE DEFAULT NULL;
log_group groups_logs%ROWTYPE DEFAULT NULL;
log_mytable mytable_logs%ROWTYPE DEFAULT NULL;
tm TIMESTAMP;
counter NUMBER;
finish BOOLEAN DEFAULT FALSE;
BEGIN
    tm := SYSTIMESTAMP - INTERVAL '1' SECOND * delta;
    WHILE NOT finish
        LOOP
            SELECT COUNT(*) INTO counter FROM mytable;
            IF counter > 0 THEN
                SELECT * INTO log_mytable FROM (SELECT * FROM mytable_logs ORDER BY recordedon DESC) WHERE ROWNUM = 1;
                IF (tm <= log_mytable.recordedon)
                THEN
                    /* IF INSERT => DOING DELETE*/
                    IF log_mytable.operation = 'INSERT'
                    THEN
                        DELETE
                        FROM mytable
                        WHERE id = log_mytable.newid
                          AND name = log_mytable.newname
                          AND val = log_mytable.newval;
                        /* IF UPDATE => DOING REVERSED UPDATE*/
                    ELSIF log_mytable.operation = 'UPDATE'
                    THEN
                        UPDATE mytable
                        SET id   = log_mytable.oldid,
                            name = log_mytable.oldname,
                            val  = log_mytable.oldval
                        WHERE id = log_mytable.newid
                          AND name = log_mytable.newname
                          AND val = log_mytable.newval;
                        /* IF DELETE => DOING INSERT*/
                    ELSIF log_mytable.operation = 'DELETE'
                    THEN
                        INSERT INTO mytable(id, name, val)
                        VALUES (log_mytable.oldid, log_mytable.oldname, log_mytable.oldval);
                    END IF;
                    DELETE FROM mytable_logs WHERE id = log_mytable.id;
                    log_mytable := NULL;
                ELSE
                    finish := TRUE;
                END IF;
            ELSE
                finish := TRUE;
            END IF;

        END LOOP;

    finish := false;
    --groups recover
    WHILE NOT finish
        LOOP
            SELECT COUNT(*) INTO counter FROM groups;
            IF counter > 0 THEN
                SELECT * INTO log_group FROM (SELECT * FROM GROUPS_LOGS ORDER BY recordedon DESC) WHERE ROWNUM = 1;
                IF (tm <= log_group.recordedon)
                THEN
                    /* IF INSERT => DOING DELETE*/
                    IF log_group.operation = 'INSERT'
                    THEN
                        DELETE FROM groups WHERE id = log_group.newid AND name = log_group.newname;
                        /* IF UPDATE => DOING REVERSED UPDATE*/
                    ELSIF log_group.operation = 'UPDATE'
                    THEN
                        UPDATE groups
                        SET id    = log_group.oldid,
                            name  = log_group.oldname,
                            c_val = log_group.old_c_val
                        WHERE id = log_group.newid
                          AND name = log_group.newname;
                        /* IF DELETE => DOING INSERT*/
                    ELSIF log_group.operation = 'DELETE'
                    THEN
                        INSERT INTO groups(id, name, c_val)
                        VALUES (log_group.oldid, log_group.oldname, log_group.old_c_val);
                    END IF;
                    DELETE FROM groups_logs WHERE id = log_group.id;
                    log_group := NULL;

                ELSE
                    finish := TRUE;
                END IF;
            ELSE
                finish := TRUE;
            END IF;
        END LOOP;

    -- students recover
    finish := false;
    WHILE NOT finish
        LOOP
            SELECT COUNT(*) INTO counter FROM students;
            IF counter > 0 THEN
                SELECT * INTO log_student FROM (SELECT * FROM STUDENTS_LOGS ORDER BY recordedon DESC) WHERE ROWNUM = 1;
                IF (tm <= log_student.recordedon)
                THEN
                    /* IF INSERT => DOING DELETE*/
                    IF log_student.operation = 'INSERT'
                    THEN
                        DELETE FROM students WHERE id = log_student.newId AND group_id = log_student.newgroupid;
                        /* IF UPDATE => DOING REVERSED UPDATE*/
                    ELSIF log_student.operation = 'UPDATE'
                    THEN
                        UPDATE students
                        SET id        = log_student.oldId,
                            name      = log_student.oldName,
                            group_id  = log_student.oldgroupid,
                            date_time = log_student.oldtime
                        WHERE id = log_student.newId
                          AND group_id = log_student.newgroupid;
                        /* IF DELETE => DOING INSERT*/
                    ELSIF log_student.operation = 'DELETE'
                    THEN
                        INSERT INTO students(id, name, group_id, date_time)
                        VALUES (log_student.oldId, log_student.oldName, log_student.oldgroupid, log_student.oldtime);

                    END IF;
                    DELETE FROM students_logs WHERE id = log_student.id;
                    log_student := NULL;
                ELSE
                    finish := TRUE;
                END IF;
            ELSE
                finish := TRUE;
            END IF;
        END LOOP;


EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('asd');

END;
end;

/
--------------------------------------------------------
--  DDL for Package Body RECOVER_DATA
--------------------------------------------------------

CREATE OR REPLACE NONEDITIONABLE PACKAGE BODY "RECOVER_DATA" is

    PROCEDURE recover_date(tm TIMESTAMP)
        IS
        log_student students_logs%ROWTYPE DEFAULT NULL;
        log_group   groups_logs%ROWTYPE DEFAULT NULL;
        log_mytable mytable_logs%ROWTYPE DEFAULT NULL;
        finish      BOOLEAN DEFAULT FALSE;
    BEGIN

        --mytable recover
        WHILE NOT finish
            LOOP
                SELECT * INTO log_mytable FROM (SELECT * FROM mytable_logs ORDER BY recordedon DESC) WHERE ROWNUM = 1;
                IF (tm <= log_mytable.recordedon)
                THEN
                    /* IF INSERT => DOING DELETE*/
                    IF log_mytable.operation = 'INSERT'
                    THEN
                        DELETE
                        FROM mytable
                        WHERE id = log_mytable.newid
                          AND name = log_mytable.newname
                          AND val = log_mytable.newval;
                        /* IF UPDATE => DOING REVERSED UPDATE*/
                    ELSIF log_mytable.operation = 'UPDATE'
                    THEN
                        UPDATE mytable
                        SET id   = log_mytable.oldid,
                            name = log_mytable.oldname,
                            val  = log_mytable.oldval
                        WHERE id = log_mytable.newid
                          AND name = log_mytable.newname
                          AND val = log_mytable.newval;
                        /* IF DELETE => DOING INSERT*/
                    ELSIF log_mytable.operation = 'DELETE'
                    THEN
                        INSERT INTO mytable(id, name, val)
                        VALUES (log_mytable.oldid, log_mytable.oldname, log_mytable.oldval);
                    END IF;
                    DELETE FROM mytable_logs WHERE id = log_mytable.id;
                    log_mytable := NULL;
                ELSE
                    finish := TRUE;
                END IF;
            END LOOP;

        --groups recover
        WHILE NOT finish
            LOOP
                SELECT * INTO log_group FROM (SELECT * FROM GROUPS_LOGS ORDER BY recordedon DESC) WHERE ROWNUM = 1;
                IF (tm <= log_group.recordedon)
                THEN
                    /* IF INSERT => DOING DELETE*/
                    IF log_group.operation = 'INSERT'
                    THEN
                        DELETE FROM groups WHERE id = log_group.newid AND name = log_group.newname;
                        /* IF UPDATE => DOING REVERSED UPDATE*/
                    ELSIF log_group.operation = 'UPDATE'
                    THEN
                        UPDATE groups
                        SET id    = log_group.oldid,
                            name  = log_group.oldname,
                            c_val = log_group.old_c_val
                        WHERE id = log_group.newid
                          AND name = log_group.newname;
                        /* IF DELETE => DOING INSERT*/
                    ELSIF log_group.operation = 'DELETE'
                    THEN
                        INSERT INTO groups(id, name, c_val)
                        VALUES (log_group.oldid, log_group.oldname, log_group.old_c_val);
                    END IF;
                    DELETE FROM groups_logs WHERE id = log_group.id;
                    log_group := NULL;

                ELSE
                    finish := TRUE;
                END IF;
            END LOOP;

        -- students recover
        finish := false;
        WHILE NOT finish
            LOOP
                SELECT * INTO log_student FROM (SELECT * FROM STUDENTS_LOGS ORDER BY recordedon DESC) WHERE ROWNUM = 1;
                IF (tm <= log_student.recordedon)
                THEN
                    /* IF INSERT => DOING DELETE*/
                    IF log_student.operation = 'INSERT'
                    THEN
                        DELETE FROM students WHERE id = log_student.newId AND group_id = log_student.newgroupid;
                        /* IF UPDATE => DOING REVERSED UPDATE*/
                    ELSIF log_student.operation = 'UPDATE'
                    THEN
                        UPDATE students
                        SET id        = log_student.oldId,
                            name      = log_student.oldName,
                            group_id  = log_student.oldgroupid,
                            date_time = log_student.oldtime
                        WHERE id = log_student.newId
                          AND group_id = log_student.newgroupid;
                        /* IF DELETE => DOING INSERT*/
                    ELSIF log_student.operation = 'DELETE'
                    THEN
                        INSERT INTO students(id, name, group_id, date_time)
                        VALUES (log_student.oldId, log_student.oldName, log_student.oldgroupid, log_student.oldtime);

                    END IF;
                    DELETE FROM students_logs WHERE id = log_student.id;
                    log_student := NULL;
                ELSE
                    finish := TRUE;
                END IF;
            END LOOP;


    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('');

    END recover_date;


    PROCEDURE recover_delta(delta VARCHAR2)
        IS
        log_student students_logs%ROWTYPE DEFAULT NULL;
        log_group   groups_logs%ROWTYPE DEFAULT NULL;
        log_mytable mytable_logs%ROWTYPE DEFAULT NULL;
        tm          TIMESTAMP;
        finish      BOOLEAN DEFAULT FALSE;
    BEGIN
        tm := SYSTIMESTAMP - INTERVAL '1' SECOND * delta;
        --mytable recover
        WHILE NOT finish
            LOOP
                SELECT * INTO log_mytable FROM (SELECT * FROM mytable_logs ORDER BY recordedon DESC) WHERE ROWNUM = 1;
                IF (tm <= log_mytable.recordedon)
                THEN
                    /* IF INSERT => DOING DELETE*/
                    IF log_mytable.operation = 'INSERT'
                    THEN
                        DELETE
                        FROM mytable
                        WHERE id = log_mytable.newid
                          AND name = log_mytable.newname
                          AND val = log_mytable.newval;
                        /* IF UPDATE => DOING REVERSED UPDATE*/
                    ELSIF log_mytable.operation = 'UPDATE'
                    THEN
                        UPDATE mytable
                        SET id   = log_mytable.oldid,
                            name = log_mytable.oldname,
                            val  = log_mytable.oldval
                        WHERE id = log_mytable.newid
                          AND name = log_mytable.newname
                          AND val = log_mytable.newval;
                        /* IF DELETE => DOING INSERT*/
                    ELSIF log_mytable.operation = 'DELETE'
                    THEN
                        INSERT INTO mytable(id, name, val)
                        VALUES (log_mytable.oldid, log_mytable.oldname, log_mytable.oldval);
                    END IF;
                    DELETE FROM mytable_logs WHERE id = log_mytable.id;
                    log_mytable := NULL;
                ELSE
                    finish := TRUE;
                END IF;
            END LOOP;

        --groups recover
        WHILE NOT finish
            LOOP
                SELECT * INTO log_group FROM (SELECT * FROM GROUPS_LOGS ORDER BY recordedon DESC) WHERE ROWNUM = 1;
                IF (tm <= log_group.recordedon)
                THEN
                    /* IF INSERT => DOING DELETE*/
                    IF log_group.operation = 'INSERT'
                    THEN
                        DELETE FROM groups WHERE id = log_group.newid AND name = log_group.newname;
                        /* IF UPDATE => DOING REVERSED UPDATE*/
                    ELSIF log_group.operation = 'UPDATE'
                    THEN
                        UPDATE groups
                        SET id    = log_group.oldid,
                            name  = log_group.oldname,
                            c_val = log_group.old_c_val
                        WHERE id = log_group.newid
                          AND name = log_group.newname;
                        /* IF DELETE => DOING INSERT*/
                    ELSIF log_group.operation = 'DELETE'
                    THEN
                        INSERT INTO groups(id, name, c_val)
                        VALUES (log_group.oldid, log_group.oldname, log_group.old_c_val);
                    END IF;
                    DELETE FROM groups_logs WHERE id = log_group.id;
                    log_group := NULL;

                ELSE
                    finish := TRUE;
                END IF;
            END LOOP;

        -- students recover
        finish := false;
        WHILE NOT finish
            LOOP
                SELECT * INTO log_student FROM (SELECT * FROM STUDENTS_LOGS ORDER BY recordedon DESC) WHERE ROWNUM = 1;
                IF (tm <= log_student.recordedon)
                THEN
                    /* IF INSERT => DOING DELETE*/
                    IF log_student.operation = 'INSERT'
                    THEN
                        DELETE FROM students WHERE id = log_student.newId AND group_id = log_student.newgroupid;
                        /* IF UPDATE => DOING REVERSED UPDATE*/
                    ELSIF log_student.operation = 'UPDATE'
                    THEN
                        UPDATE students
                        SET id        = log_student.oldId,
                            name      = log_student.oldName,
                            group_id  = log_student.oldgroupid,
                            date_time = log_student.oldtime
                        WHERE id = log_student.newId
                          AND group_id = log_student.newgroupid;
                        /* IF DELETE => DOING INSERT*/
                    ELSIF log_student.operation = 'DELETE'
                    THEN
                        INSERT INTO students(id, name, group_id, date_time)
                        VALUES (log_student.oldId, log_student.oldName, log_student.oldgroupid, log_student.oldtime);

                    END IF;
                    DELETE FROM students_logs WHERE id = log_student.id;
                    log_student := NULL;
                ELSE
                    finish := TRUE;
                END IF;
            END LOOP;


    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('');

    END recover_delta;

end recover_data;

/
--------------------------------------------------------
--  DDL for Package Body RECOVER_TABLES_DATA
--------------------------------------------------------

CREATE OR REPLACE NONEDITIONABLE PACKAGE BODY "RECOVER_TABLES_DATA" is

    PROCEDURE recover_date(tm TIMESTAMP)
        IS
        log_student students_logs%ROWTYPE DEFAULT NULL;
        log_group   groups_logs%ROWTYPE DEFAULT NULL;
        log_mytable mytable_logs%ROWTYPE DEFAULT NULL;
        finish      BOOLEAN DEFAULT FALSE;
    BEGIN

        --mytable recover
        WHILE NOT finish
            LOOP
                SELECT * INTO log_mytable FROM (SELECT * FROM mytable_logs ORDER BY recordedon DESC) WHERE ROWNUM = 1;
                IF (tm <= log_mytable.recordedon)
                THEN
                    /* IF INSERT => DOING DELETE*/
                    IF log_mytable.operation = 'INSERT'
                    THEN
                        DELETE
                        FROM mytable
                        WHERE id = log_mytable.newid
                          AND name = log_mytable.newname
                          AND val = log_mytable.newval;
                        /* IF UPDATE => DOING REVERSED UPDATE*/
                    ELSIF log_mytable.operation = 'UPDATE'
                    THEN
                        UPDATE mytable
                        SET id   = log_mytable.oldid,
                            name = log_mytable.oldname,
                            val  = log_mytable.oldval
                        WHERE id = log_mytable.newid
                          AND name = log_mytable.newname
                          AND val = log_mytable.newval;
                        /* IF DELETE => DOING INSERT*/
                    ELSIF log_mytable.operation = 'DELETE'
                    THEN
                        INSERT INTO mytable(id, name, val)
                        VALUES (log_mytable.oldid, log_mytable.oldname, log_mytable.oldval);
                    END IF;
                    DELETE FROM mytable_logs WHERE id = log_mytable.id;
                    log_mytable := NULL;
                ELSE
                    finish := TRUE;
                END IF;
            END LOOP;

        --groups recover
        WHILE NOT finish
            LOOP
                SELECT * INTO log_group FROM (SELECT * FROM GROUPS_LOGS ORDER BY recordedon DESC) WHERE ROWNUM = 1;
                IF (tm <= log_group.recordedon)
                THEN
                    /* IF INSERT => DOING DELETE*/
                    IF log_group.operation = 'INSERT'
                    THEN
                        DELETE FROM groups WHERE id = log_group.newid AND name = log_group.newname;
                        /* IF UPDATE => DOING REVERSED UPDATE*/
                    ELSIF log_group.operation = 'UPDATE'
                    THEN
                        UPDATE groups
                        SET id    = log_group.oldid,
                            name  = log_group.oldname,
                            c_val = log_group.old_c_val
                        WHERE id = log_group.newid
                          AND name = log_group.newname;
                        /* IF DELETE => DOING INSERT*/
                    ELSIF log_group.operation = 'DELETE'
                    THEN
                        INSERT INTO groups(id, name, c_val)
                        VALUES (log_group.oldid, log_group.oldname, log_group.old_c_val);
                    END IF;
                    DELETE FROM groups_logs WHERE id = log_group.id;
                    log_group := NULL;

                ELSE
                    finish := TRUE;
                END IF;
            END LOOP;

        -- students recover
        finish := false;
        WHILE NOT finish
            LOOP
                SELECT * INTO log_student FROM (SELECT * FROM STUDENTS_LOGS ORDER BY recordedon DESC) WHERE ROWNUM = 1;
                IF (tm <= log_student.recordedon)
                THEN
                    /* IF INSERT => DOING DELETE*/
                    IF log_student.operation = 'INSERT'
                    THEN
                        DELETE FROM students WHERE id = log_student.newId AND group_id = log_student.newgroupid;
                        /* IF UPDATE => DOING REVERSED UPDATE*/
                    ELSIF log_student.operation = 'UPDATE'
                    THEN
                        UPDATE students
                        SET id        = log_student.oldId,
                            name      = log_student.oldName,
                            group_id  = log_student.oldgroupid,
                            date_time = log_student.oldtime
                        WHERE id = log_student.newId
                          AND group_id = log_student.newgroupid;
                        /* IF DELETE => DOING INSERT*/
                    ELSIF log_student.operation = 'DELETE'
                    THEN
                        INSERT INTO students(id, name, group_id, date_time)
                        VALUES (log_student.oldId, log_student.oldName, log_student.oldgroupid, log_student.oldtime);

                    END IF;
                    DELETE FROM students_logs WHERE id = log_student.id;
                    log_student := NULL;
                ELSE
                    finish := TRUE;
                END IF;
            END LOOP;


    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('');
    END recover_date;

    PROCEDURE recover_date(delta VARCHAR2)
        IS
        log_student students_logs%ROWTYPE DEFAULT NULL;
        log_group   groups_logs%ROWTYPE DEFAULT NULL;
        log_mytable mytable_logs%ROWTYPE DEFAULT NULL;
        tm          TIMESTAMP;
        finish      BOOLEAN DEFAULT FALSE;
    BEGIN
        tm := SYSTIMESTAMP - INTERVAL || delta || SECOND;
        --mytable recover
        WHILE NOT finish
            LOOP
                SELECT * INTO log_mytable FROM (SELECT * FROM mytable_logs ORDER BY recordedon DESC) WHERE ROWNUM = 1;
                IF (tm <= log_mytable.recordedon)
                THEN
                    /* IF INSERT => DOING DELETE*/
                    IF log_mytable.operation = 'INSERT'
                    THEN
                        DELETE
                        FROM mytable
                        WHERE id = log_mytable.newid
                          AND name = log_mytable.newname
                          AND val = log_mytable.newval;
                        /* IF UPDATE => DOING REVERSED UPDATE*/
                    ELSIF log_mytable.operation = 'UPDATE'
                    THEN
                        UPDATE mytable
                        SET id   = log_mytable.oldid,
                            name = log_mytable.oldname,
                            val  = log_mytable.oldval
                        WHERE id = log_mytable.newid
                          AND name = log_mytable.newname
                          AND val = log_mytable.newval;
                        /* IF DELETE => DOING INSERT*/
                    ELSIF log_mytable.operation = 'DELETE'
                    THEN
                        INSERT INTO mytable(id, name, val)
                        VALUES (log_mytable.oldid, log_mytable.oldname, log_mytable.oldval);
                    END IF;
                    DELETE FROM mytable_logs WHERE id = log_mytable.id;
                    log_mytable := NULL;
                ELSE
                    finish := TRUE;
                END IF;
            END LOOP;

        --groups recover
        WHILE NOT finish
            LOOP
                SELECT * INTO log_group FROM (SELECT * FROM GROUPS_LOGS ORDER BY recordedon DESC) WHERE ROWNUM = 1;
                IF (tm <= log_group.recordedon)
                THEN
                    /* IF INSERT => DOING DELETE*/
                    IF log_group.operation = 'INSERT'
                    THEN
                        DELETE FROM groups WHERE id = log_group.newid AND name = log_group.newname;
                        /* IF UPDATE => DOING REVERSED UPDATE*/
                    ELSIF log_group.operation = 'UPDATE'
                    THEN
                        UPDATE groups
                        SET id    = log_group.oldid,
                            name  = log_group.oldname,
                            c_val = log_group.old_c_val
                        WHERE id = log_group.newid
                          AND name = log_group.newname;
                        /* IF DELETE => DOING INSERT*/
                    ELSIF log_group.operation = 'DELETE'
                    THEN
                        INSERT INTO groups(id, name, c_val)
                        VALUES (log_group.oldid, log_group.oldname, log_group.old_c_val);
                    END IF;
                    DELETE FROM groups_logs WHERE id = log_group.id;
                    log_group := NULL;

                ELSE
                    finish := TRUE;
                END IF;
            END LOOP;

        -- students recover
        finish := false;
        WHILE NOT finish
            LOOP
                SELECT * INTO log_student FROM (SELECT * FROM STUDENTS_LOGS ORDER BY recordedon DESC) WHERE ROWNUM = 1;
                IF (tm <= log_student.recordedon)
                THEN
                    /* IF INSERT => DOING DELETE*/
                    IF log_student.operation = 'INSERT'
                    THEN
                        DELETE FROM students WHERE id = log_student.newId AND group_id = log_student.newgroupid;
                        /* IF UPDATE => DOING REVERSED UPDATE*/
                    ELSIF log_student.operation = 'UPDATE'
                    THEN
                        UPDATE students
                        SET id        = log_student.oldId,
                            name      = log_student.oldName,
                            group_id  = log_student.oldgroupid,
                            date_time = log_student.oldtime
                        WHERE id = log_student.newId
                          AND group_id = log_student.newgroupid;
                        /* IF DELETE => DOING INSERT*/
                    ELSIF log_student.operation = 'DELETE'
                    THEN
                        INSERT INTO students(id, name, group_id, date_time)
                        VALUES (log_student.oldId, log_student.oldName, log_student.oldgroupid, log_student.oldtime);

                    END IF;
                    DELETE FROM students_logs WHERE id = log_student.id;
                    log_student := NULL;
                ELSE
                    finish := TRUE;
                END IF;
            END LOOP;


    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('');
    END recover_date;
end recover_tables_data;

/
--------------------------------------------------------
--  DDL for Package Body REPORTS
--------------------------------------------------------

CREATE OR REPLACE NONEDITIONABLE PACKAGE BODY "REPORTS" as
    last_date TIMESTAMP;
    procedure get_report(required_date in timestamp) IS
        l_clob clob;
    begin
        last_date := SYSTIMESTAMP;
        l_clob := '<html><head>
    <style>
    table, th, td {
      border: 1px solid black;
      border-collapse: collapse;
    }
    table.center {
      margin-left: auto;
      margin-right: auto;
    }
    </style>
    </head><body> <h1 style="text-align: center"> EMPLOYEES LIST </h1> <table style="width:100%" class="center">
      <h1 align="center">GROUPS INFO</h1>
      <tr align="center">
        <th align="center">OPERATION</th>
        <th align="center">RECORDED ON </th>
      </tr>';
        for l_rec in (select * from groups_logs where recordedon > required_date)
            loop
                l_clob := l_clob || '<tr align="center"> <td align="left">' || l_rec.operation ||
                          '</td> <td align="center">'
                    || l_rec.recordedon || '</td> </tr>';
            end loop;
        l_clob := l_clob || '</table></body></html>';
        OT_HTML_PKG.OT_HTML('OT_HTML_DIR', 'groups.html', l_clob);

        l_clob := '<html><head>
    <style>
    table, th, td {
      border: 1px solid black;
      border-collapse: collapse;
    }
    table.center {
      margin-left: auto;
      margin-right: auto;
    }
    </style>
    </head><body> <h1 style="text-align: center"> EMPLOYEES LIST </h1> <table style="width:100%" class="center">
      <h1 align="center">STUDENTS INFO</h1>
      <tr align="center">
        <th align="center">OPERATION</th>
        <th align="center">RECORDED ON </th>
      </tr>';
        for l_rec in (select * from students_logs where recordedon > required_date)
            loop
                l_clob := l_clob || '<tr align="center"> <td align="left">' || l_rec.operation ||
                          '</td> <td align="center">'
                    || l_rec.recordedon || '</td> </tr>';
            end loop;
        l_clob := l_clob || '</table></body></html>';
        OT_HTML_PKG.OT_HTML('OT_HTML_DIR', 'students.html', l_clob);


        l_clob := '<html><head>
    <style>
    table, th, td {
      border: 1px solid black;
      border-collapse: collapse;
    }
    table.center {
      margin-left: auto;
      margin-right: auto;
    }
    </style>
    </head><body> <h1 style="text-align: center"> EMPLOYEES LIST </h1> <table style="width:100%" class="center">
      <h1 align="center">MYTABLE INFO</h1>
      <tr align="center">
        <th align="center">OPERATION</th>
        <th align="center">RECORDED ON </th>
      </tr>';
        for l_rec in (select * from mytable_logs where recordedon > required_date)
            loop
                l_clob := l_clob || '<tr align="center"> <td align="left">' || l_rec.operation ||
                          '</td> <td align="center">'
                    || l_rec.recordedon || '</td> </tr>';
            end loop;
        l_clob := l_clob || '</table></body></html>';
        OT_HTML_PKG.OT_HTML('OT_HTML_DIR', 'mytable.html', l_clob);
    end;


    procedure get_report IS
        l_clob clob;
    begin
        l_clob := '<html><head>
    <style>
    table, th, td {
      border: 1px solid black;
      border-collapse: collapse;
    }
    table.center {
      margin-left: auto;
      margin-right: auto;
    }
    </style>
    </head><body> <h1 style="text-align: center"> EMPLOYEES LIST </h1> <table style="width:100%" class="center">
      <h1 align="center">GROUPS INFO</h1>
      <tr align="center">
        <th align="center">OPERATION</th>
        <th align="center">RECORDED ON </th>
      </tr>';
        for l_rec in (select * from groups_logs where recordedon > last_date)
            loop
                l_clob := l_clob || '<tr align="center"> <td align="left">' || l_rec.operation ||
                          '</td> <td align="center">'
                    || l_rec.recordedon || '</td> </tr>';
            end loop;
        l_clob := l_clob || '</table></body></html>';
        OT_HTML_PKG.OT_HTML('OT_HTML_DIR', 'groups.html', l_clob);

        l_clob := '<html><head>
    <style>
    table, th, td {
      border: 1px solid black;
      border-collapse: collapse;
    }
    table.center {
      margin-left: auto;
      margin-right: auto;
    }
    </style>
    </head><body> <h1 style="text-align: center"> EMPLOYEES LIST </h1> <table style="width:100%" class="center">
      <h1 align="center">STUDENTS INFO</h1>
      <tr align="center">
        <th align="center">OPERATION</th>
        <th align="center">RECORDED ON </th>
      </tr>';
        for l_rec in (select * from students_logs where recordedon > last_date)
            loop
                l_clob := l_clob || '<tr align="center"> <td align="left">' || l_rec.operation ||
                          '</td> <td align="center">'
                    || l_rec.recordedon || '</td> </tr>';
            end loop;
        l_clob := l_clob || '</table></body></html>';
        OT_HTML_PKG.OT_HTML('OT_HTML_DIR', 'students.html', l_clob);


        l_clob := '<html><head>
    <style>
    table, th, td {
      border: 1px solid black;
      border-collapse: collapse;
    }
    table.center {
      margin-left: auto;
      margin-right: auto;
    }
    </style>
    </head><body> <h1 style="text-align: center"> EMPLOYEES LIST </h1> <table style="width:100%" class="center">
      <h1 align="center">MYTABLE INFO</h1>
      <tr align="center">
        <th align="center">OPERATION</th>
        <th align="center">RECORDED ON </th>
      </tr>';
        for l_rec in (select * from mytable_logs where recordedon > last_date)
            loop
                l_clob := l_clob || '<tr align="center"> <td align="left">' || l_rec.operation ||
                          '</td> <td align="center">'
                    || l_rec.recordedon || '</td> </tr>';
            end loop;
        l_clob := l_clob || '</table></body></html>';
        OT_HTML_PKG.OT_HTML('OT_HTML_DIR', 'mytable.html', l_clob);
        last_date := SYSTIMESTAMP;
    end;


end;

/
--------------------------------------------------------
--  DDL for Package Body TEST_PKG
--------------------------------------------------------

CREATE OR REPLACE NONEDITIONABLE PACKAGE BODY "TEST_PKG" IS

    -- PROCEDURE Out_Screen -- ***************
    PROCEDURE Out_Screen(TOSC IN VARCHAR2)
        IS

    BEGIN

        DBMS_OUTPUT.enable;
        DBMS_OUTPUT.put_line(TOSC);

    END Out_Screen;

-- FUNCTION Min_Two_Num -- ***************
    FUNCTION Min_Two_Num(A IN NUMBER, B IN NUMBER) RETURN NUMBER
        IS

    BEGIN

        RETURN (A - B);

    END Min_Two_Num;

-- FUNCTION Add_Two_Num -- ***************
    FUNCTION Add_Two_Num(A IN NUMBER, B IN NUMBER) RETURN NUMBER
        IS

    BEGIN

        RETURN (A + B);

    END Add_Two_Num;

-- FUNCTION FACTORIAL -- *****************
    FUNCTION FACTORIAL(NUM IN NUMBER) RETURN NUMBER
        IS

    BEGIN

        IF (NUM <= 1) THEN
            RETURN (NUM);
        ELSE
            RETURN (NUM * FACTORIAL(NUM - 1));

        END IF;

    END FACTORIAL;

END test_pkg;

/

--------------------------------------------------------
--  DDL for Function BOOLEAN_TO_CHAR
--------------------------------------------------------

CREATE OR REPLACE NONEDITIONABLE FUNCTION "BOOLEAN_TO_CHAR"(STATUS IN BOOLEAN)
    RETURN VARCHAR2 IS
BEGIN
    RETURN
        CASE STATUS
            WHEN TRUE THEN 'TRUE'
            WHEN FALSE THEN 'FALSE'
            ELSE 'NULL'
            END;
END;

/
--------------------------------------------------------
--  DDL for Function EVEN_ODD
--------------------------------------------------------

CREATE OR REPLACE NONEDITIONABLE FUNCTION "EVEN_ODD" RETURN VARCHAR2 AS
    counter_odd  NUMBER DEFAULT 0;
    counter_even NUMBER DEFAULT 0;
    counter      NUMBER DEFAULT 1;
    rows_number  NUMBER;
    check_val    NUMBER;
BEGIN

    LOOP
        SELECT val INTO check_val FROM (SELECT val, ROWNUM AS RN FROM mytable) WHERE RN = counter;
        IF MOD(check_val, 2) = 0 THEN
            counter_even := counter_even + 1;
        ELSE
            counter_odd := counter_odd + 1;
        END IF;
        counter := counter + 1;
        EXIT WHEN counter > 10000;
    END LOOP;

    IF counter_odd > counter_even
    THEN
        RETURN 'ODD';
    ELSIF counter_odd < counter_even
    THEN
        RETURN 'EVEN';
    ELSE
        RETURN 'EVEN===ODD';
    END IF;

END;

/
--------------------------------------------------------
--  DDL for Function GET_PRIZE
--------------------------------------------------------

CREATE OR REPLACE NONEDITIONABLE FUNCTION "GET_PRIZE"(sal REAL, perc REAL) RETURN BOOLEAN AS
    res            REAL;
    sal_is_number  BOOLEAN;
    perc_is_number BOOLEAN;
BEGIN
    sal_is_number := REGEXP_LIKE(sal, '^[[:digit:]]+$');
    perc_is_number := REGEXP_LIKE(sal, '^[[:digit:]]+$');

    IF sal_is_number AND perc_is_number THEN
        IF sal > 0 AND perc > 0 AND perc <= 100 THEN
            res := (1 + perc / 100) * 12 * sal;
            dbms_output.put_line('Total prize:  ' || res);
            RETURN TRUE;
        ELSE
            dbms_output.put_line('Check your arguments. Salary and(or) percent are not in valid value range!');
            RETURN FALSE;
        END IF;
    ELSE
        dbms_output.put_line('Check your arguments. Salary and(or) percent is not a numbers here!');
        RETURN FALSE;
    END IF;
END;

/
--------------------------------------------------------
--  Constraints for Table GROUPS_LOGS
--------------------------------------------------------

ALTER TABLE "GROUPS_LOGS"
    MODIFY ("ID" NOT NULL ENABLE);
ALTER TABLE "GROUPS_LOGS"
    ADD CONSTRAINT "GROUPS_LOGS_PK" PRIMARY KEY ("ID")
        USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
            STORAGE (INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
            PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
            BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
            TABLESPACE "USERS" ENABLE;
--------------------------------------------------------
--  Constraints for Table STUDENTS_LOGS
--------------------------------------------------------

ALTER TABLE "STUDENTS_LOGS"
    MODIFY ("ID" NOT NULL ENABLE);
ALTER TABLE "STUDENTS_LOGS"
    ADD PRIMARY KEY ("ID")
        USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
            STORAGE (INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
            PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
            BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
            TABLESPACE "USERS" ENABLE;
--------------------------------------------------------
--  Constraints for Table MYTABLE_LOGS
--------------------------------------------------------

ALTER TABLE "MYTABLE_LOGS"
    MODIFY ("ID" NOT NULL ENABLE);
ALTER TABLE "MYTABLE_LOGS"
    ADD CONSTRAINT "MYTABLE_LOGS_PK" PRIMARY KEY ("ID")
        USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
            STORAGE (INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
            PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
            BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
            TABLESPACE "USERS" ENABLE;
--------------------------------------------------------
--  Constraints for Table STUDENTS
--------------------------------------------------------

ALTER TABLE "STUDENTS"
    MODIFY ("ID" NOT NULL ENABLE);
ALTER TABLE "STUDENTS"
    ADD CONSTRAINT "STUDENTS_PK" PRIMARY KEY ("ID")
        USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
            STORAGE (INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
            PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
            BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
            TABLESPACE "USERS" ENABLE;
--------------------------------------------------------
--  Constraints for Table T1
--------------------------------------------------------

ALTER TABLE "T1"
    MODIFY ("C1" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MYTABLE
--------------------------------------------------------

ALTER TABLE "MYTABLE"
    MODIFY ("ID" NOT NULL ENABLE);
ALTER TABLE "MYTABLE"
    ADD CONSTRAINT "MYTABLE_PK" PRIMARY KEY ("ID")
        USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
            STORAGE (INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
            PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
            BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
            TABLESPACE "USERS" ENABLE;
--------------------------------------------------------
--  Constraints for Table GROUPS
--------------------------------------------------------

ALTER TABLE "GROUPS"
    MODIFY ("ID" NOT NULL ENABLE);
ALTER TABLE "GROUPS"
    ADD CONSTRAINT "GROUPS_PK" PRIMARY KEY ("ID")
        USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
            STORAGE (INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
            PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
            BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
            TABLESPACE "USERS" ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table STUDENTS
--------------------------------------------------------

ALTER TABLE "STUDENTS"
    ADD CONSTRAINT "FK_GROUP_ID" FOREIGN KEY ("GROUP_ID")
        REFERENCES "GROUPS" ("ID") ENABLE;


