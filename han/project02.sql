--------------------------------------------------------
--  파일이 생성됨 - 수요일-5월-22-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence BTSEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."BTSEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence DSEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."DSEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence ESQE
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."ESQE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 2041 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence LOGMNR_DIDS$
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."LOGMNR_DIDS$"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence LOGMNR_EVOLVE_SEQ$
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."LOGMNR_EVOLVE_SEQ$"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence LOGMNR_SEQ$
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."LOGMNR_SEQ$"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence LOGMNR_UIDS$
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."LOGMNR_UIDS$"  MINVALUE 100 MAXVALUE 99999 INCREMENT BY 1 START WITH 100 NOCACHE  ORDER  CYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence MVIEW$_ADVSEQ_GENERIC
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."MVIEW$_ADVSEQ_GENERIC"  MINVALUE 1 MAXVALUE 4294967295 INCREMENT BY 1 START WITH 1 CACHE 50 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence MVIEW$_ADVSEQ_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."MVIEW$_ADVSEQ_ID"  MINVALUE 1 MAXVALUE 4294967295 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence NOTICE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."NOTICE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 3 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence NSEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."NSEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence QNA_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."QNA_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 4 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence QSEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."QSEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence ROLLING_EVENT_SEQ$
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."ROLLING_EVENT_SEQ$"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence STSEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."STSEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."MEMBER" 
   (	"ID" VARCHAR2(50 BYTE), 
	"PW" VARCHAR2(100 BYTE), 
	"NAME" VARCHAR2(100 BYTE), 
	"BIRTH" VARCHAR2(10 BYTE), 
	"GENDER" VARCHAR2(10 BYTE), 
	"POSTCODE" VARCHAR2(20 BYTE), 
	"ADDR" VARCHAR2(255 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table QNA
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."QNA" 
   (	"NO" NUMBER(*,0), 
	"PLEVEL" NUMBER(*,0), 
	"PARNO" NUMBER(*,0), 
	"TITLE" VARCHAR2(200 BYTE), 
	"CONTENT" VARCHAR2(2000 BYTE), 
	"RESDATE" TIMESTAMP (6) DEFAULT sysdate, 
	"VISITED" NUMBER(*,0) DEFAULT 0, 
	"AID" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table NOTICE
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."NOTICE" 
   (	"BNO" NUMBER, 
	"TITLE" VARCHAR2(200 BYTE), 
	"CONTENT" VARCHAR2(2000 BYTE), 
	"AUTHOR" VARCHAR2(100 BYTE), 
	"VISITED" NUMBER DEFAULT 0, 
	"RESDATE" TIMESTAMP (6) DEFAULT CURRENT_TIMESTAMP
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.MEMBER
SET DEFINE OFF;
Insert into SYSTEM.MEMBER (ID,PW,NAME,BIRTH,GENDER,POSTCODE,ADDR) values ('a1234','$2a$10$RPbM4hZkZ2eVd9uzBnDJIeYagnOqRgkPWxYVNnOTcP/EcyaNddIiS','hty','1998-02-16','남','13529','null null');
Insert into SYSTEM.MEMBER (ID,PW,NAME,BIRTH,GENDER,POSTCODE,ADDR) values ('b1234','$2a$10$vo.VGmHPklNvdxG.fJoE9uZx1WKVjR6pm5HoZqaGAmHr9.9VsIyBa','hty','1998-01-16','여','13529','null null');
Insert into SYSTEM.MEMBER (ID,PW,NAME,BIRTH,GENDER,POSTCODE,ADDR) values ('c1234','$2a$10$FZ62lHe/vmrDNONE71mYq.rRdQZ2jaAIdtRwQg5t/lPGutPGQqAcS','hty','1998-02-17','남','13529','경기 성남시 분당구 판교역로 166 (백현동)');
Insert into SYSTEM.MEMBER (ID,PW,NAME,BIRTH,GENDER,POSTCODE,ADDR) values ('d1357','$2a$10$xNI1xzV2uCBUMlZ/5aUQTe3h4afZTu0CBIKi9obX6nfEQzb6nhGfS','hty','1998-01-13','남','13529','경기 성남시 분당구 판교역로 166 (백현동)');
Insert into SYSTEM.MEMBER (ID,PW,NAME,BIRTH,GENDER,POSTCODE,ADDR) values ('f123123','$2a$10$lTYx7bJrLYMmm.e4H/DjReUY8ZLlkB75W4qI/I4ZO9ULRO67cBakG','kim','1998-09-17','남','27606','충북 음성군 감곡면 가곡로532번길 8');
Insert into SYSTEM.MEMBER (ID,PW,NAME,BIRTH,GENDER,POSTCODE,ADDR) values ('q1234','$2a$10$bKUEU6kulNbPEAeTKfiwr.FYQ6Z0anSh9A9qPU7GioBEKiZRUDk72','hty','1998-01-01','남','63309','제주특별자치도 제주시 첨단로 242 (영평동)');
Insert into SYSTEM.MEMBER (ID,PW,NAME,BIRTH,GENDER,POSTCODE,ADDR) values ('a12345','$2a$10$IhLRbcRzJ6EEdA/ajnNememDkYIRdrBldKuut6cdiknF6cr5wncOq','hty','1998-08-15','남','63309','제주특별자치도 제주시 첨단로 242 (영평동)');
REM INSERTING into SYSTEM.QNA
SET DEFINE OFF;
Insert into SYSTEM.QNA (NO,PLEVEL,PARNO,TITLE,CONTENT,RESDATE,VISITED,AID) values (3,1,0,'Title1','안녕하세요~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~',to_timestamp('24/05/21 17:52:50.990000000','RR/MM/DD HH24:MI:SSXFF'),0,'ㅁㄴㅇㄹ');
REM INSERTING into SYSTEM.NOTICE
SET DEFINE OFF;
Insert into SYSTEM.NOTICE (BNO,TITLE,CONTENT,AUTHOR,VISITED,RESDATE) values (1,'ㅁㄴㅇㄹ','ㅁㄴㅇㄹㅁㄴㅇㄹ','ㅁㄴㅇㄹ',0,to_timestamp('24/05/21 00:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SYSTEM.NOTICE (BNO,TITLE,CONTENT,AUTHOR,VISITED,RESDATE) values (2,'asdf','asdf','asdf',0,to_timestamp('24/05/21 00:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'));
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MEMBER" MODIFY ("PW" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MEMBER" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table QNA
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."QNA" ADD CONSTRAINT "QNA_PK" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."NOTICE" ADD PRIMARY KEY ("BNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
