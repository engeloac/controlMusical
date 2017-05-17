--------------------------------------------------------
--  File created - Wednesday-May-17-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ARTIST
--------------------------------------------------------

  CREATE TABLE "ADMINMEDIA"."ARTIST" 
   (	"NAME" VARCHAR2(50 BYTE), 
	"LASTNAME" VARCHAR2(50 BYTE), 
	"AGE" NUMBER(9,0), 
	"NUMBERDISCS" NUMBER(9,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DISC
--------------------------------------------------------

  CREATE TABLE "ADMINMEDIA"."DISC" 
   (	"NAME" VARCHAR2(50 BYTE), 
	"YEAR" NUMBER(9,0), 
	"PRODUCEDBY" VARCHAR2(50 BYTE), 
	"ARTIST_FK" VARCHAR2(50 BYTE), 
	"NUMBERSONGS" NUMBER(9,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SONG
--------------------------------------------------------

  CREATE TABLE "ADMINMEDIA"."SONG" 
   (	"TITLE" VARCHAR2(50 BYTE), 
	"ARTIST_FK" VARCHAR2(50 BYTE), 
	"DISC_FK" VARCHAR2(50 BYTE), 
	"TIME" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Sequence ARTIST_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ADMINMEDIA"."ARTIST_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ARTIST_SEQU
--------------------------------------------------------

   CREATE SEQUENCE  "ADMINMEDIA"."ARTIST_SEQU"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence DEMO_CUST_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ADMINMEDIA"."DEMO_CUST_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 8 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence DEMO_ORDER_ITEMS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ADMINMEDIA"."DEMO_ORDER_ITEMS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 50 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence DEMO_ORD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ADMINMEDIA"."DEMO_ORD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 11 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence DEMO_PROD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ADMINMEDIA"."DEMO_PROD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 11 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence DEMO_USERS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ADMINMEDIA"."DEMO_USERS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 3 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence DISC_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ADMINMEDIA"."DISC_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SONG_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ADMINMEDIA"."SONG_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
REM INSERTING into ADMINMEDIA.ARTIST
SET DEFINE OFF;
Insert into ADMINMEDIA.ARTIST (NAME,LASTNAME,AGE,NUMBERDISCS) values ('Daniel','Campos',21,5);
Insert into ADMINMEDIA.ARTIST (NAME,LASTNAME,AGE,NUMBERDISCS) values ('jack','aguilar',25,1);
Insert into ADMINMEDIA.ARTIST (NAME,LASTNAME,AGE,NUMBERDISCS) values ('kkkkkkk','kkkkkk',4,2);
Insert into ADMINMEDIA.ARTIST (NAME,LASTNAME,AGE,NUMBERDISCS) values ('qqqqqqqqqqq','qqqqqqqqqqq',74,0);
Insert into ADMINMEDIA.ARTIST (NAME,LASTNAME,AGE,NUMBERDISCS) values ('ui','ui',45,0);
Insert into ADMINMEDIA.ARTIST (NAME,LASTNAME,AGE,NUMBERDISCS) values ('f','f',3,0);
Insert into ADMINMEDIA.ARTIST (NAME,LASTNAME,AGE,NUMBERDISCS) values ('yu','js',47,0);
Insert into ADMINMEDIA.ARTIST (NAME,LASTNAME,AGE,NUMBERDISCS) values ('carloa','ma',14,0);
Insert into ADMINMEDIA.ARTIST (NAME,LASTNAME,AGE,NUMBERDISCS) values ('uiaaa','fa',78,0);
Insert into ADMINMEDIA.ARTIST (NAME,LASTNAME,AGE,NUMBERDISCS) values ('po','op',96,0);
Insert into ADMINMEDIA.ARTIST (NAME,LASTNAME,AGE,NUMBERDISCS) values ('prueba','pr',65,0);
Insert into ADMINMEDIA.ARTIST (NAME,LASTNAME,AGE,NUMBERDISCS) values ('tr','tr',14,0);
Insert into ADMINMEDIA.ARTIST (NAME,LASTNAME,AGE,NUMBERDISCS) values ('qwerty','qwerty',12,0);
Insert into ADMINMEDIA.ARTIST (NAME,LASTNAME,AGE,NUMBERDISCS) values ('Engela','ampos',25,0);
Insert into ADMINMEDIA.ARTIST (NAME,LASTNAME,AGE,NUMBERDISCS) values ('elPro','crack',12,0);
Insert into ADMINMEDIA.ARTIST (NAME,LASTNAME,AGE,NUMBERDISCS) values ('Engel','Aguilar',21,6);
Insert into ADMINMEDIA.ARTIST (NAME,LASTNAME,AGE,NUMBERDISCS) values ('sandra','campos',47,0);
REM INSERTING into ADMINMEDIA.DISC
SET DEFINE OFF;
Insert into ADMINMEDIA.DISC (NAME,YEAR,PRODUCEDBY,ARTIST_FK,NUMBERSONGS) values ('black parede',25,'Sir company','jack',4);
Insert into ADMINMEDIA.DISC (NAME,YEAR,PRODUCEDBY,ARTIST_FK,NUMBERSONGS) values ('fff',56,'56','Daniel',56);
Insert into ADMINMEDIA.DISC (NAME,YEAR,PRODUCEDBY,ARTIST_FK,NUMBERSONGS) values ('f',3,'3','Daniel',3);
Insert into ADMINMEDIA.DISC (NAME,YEAR,PRODUCEDBY,ARTIST_FK,NUMBERSONGS) values ('4',4,'4','Daniel',4);
Insert into ADMINMEDIA.DISC (NAME,YEAR,PRODUCEDBY,ARTIST_FK,NUMBERSONGS) values ('8',8,'8','Daniel',8);
Insert into ADMINMEDIA.DISC (NAME,YEAR,PRODUCEDBY,ARTIST_FK,NUMBERSONGS) values ('9',9,'9','Engel',4);
Insert into ADMINMEDIA.DISC (NAME,YEAR,PRODUCEDBY,ARTIST_FK,NUMBERSONGS) values ('j',4,'4','jack',4);
Insert into ADMINMEDIA.DISC (NAME,YEAR,PRODUCEDBY,ARTIST_FK,NUMBERSONGS) values ('ffffff',4,'r','kkkkkkk',74);
Insert into ADMINMEDIA.DISC (NAME,YEAR,PRODUCEDBY,ARTIST_FK,NUMBERSONGS) values ('rerrr',4,'r','kkkkkkk',74);
Insert into ADMINMEDIA.DISC (NAME,YEAR,PRODUCEDBY,ARTIST_FK,NUMBERSONGS) values ('uo',4,'r','Daniel',74);
Insert into ADMINMEDIA.DISC (NAME,YEAR,PRODUCEDBY,ARTIST_FK,NUMBERSONGS) values ('Madre',45,'oracle','Engela',56);
Insert into ADMINMEDIA.DISC (NAME,YEAR,PRODUCEDBY,ARTIST_FK,NUMBERSONGS) values ('Dolor',2010,'Pingui Corporation','Engel',5);
Insert into ADMINMEDIA.DISC (NAME,YEAR,PRODUCEDBY,ARTIST_FK,NUMBERSONGS) values ('tyu',14,'14','Daniel',5);
REM INSERTING into ADMINMEDIA.SONG
SET DEFINE OFF;
Insert into ADMINMEDIA.SONG (TITLE,ARTIST_FK,DISC_FK,TIME) values ('ventana','Engel','Dolor','3 min-180 seg');
--------------------------------------------------------
--  DDL for Index DISC_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMINMEDIA"."DISC_PK" ON "ADMINMEDIA"."DISC" ("NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TITLE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMINMEDIA"."TITLE_PK" ON "ADMINMEDIA"."SONG" ("TITLE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index name_pk
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMINMEDIA"."name_pk" ON "ADMINMEDIA"."ARTIST" ("NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger BI_ARTIST
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMINMEDIA"."BI_ARTIST" 
  before insert on "ARTIST"               
  for each row  
begin   
  if :NEW."NAME" is null then 
    select "ARTIST_SEQU".nextval into :NEW."NAME" from dual; 
  end if; 
end; 

/
ALTER TRIGGER "ADMINMEDIA"."BI_ARTIST" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BI_DISC
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMINMEDIA"."BI_DISC" 
  before insert on "DISC"               
  for each row  
begin   
  if :NEW."NAME" is null then 
    select "DISC_SEQ".nextval into :NEW."NAME" from dual; 
  end if; 
end; 

/
ALTER TRIGGER "ADMINMEDIA"."BI_DISC" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BI_SONG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMINMEDIA"."BI_SONG" 
  before insert on "SONG"               
  for each row  
begin   
  if :NEW."TITLE" is null then 
    select "SONG_SEQ".nextval into :NEW."TITLE" from dual; 
  end if; 
end; 

/
ALTER TRIGGER "ADMINMEDIA"."BI_SONG" ENABLE;
--------------------------------------------------------
--  DDL for Function CUSTOM_AUTH
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "ADMINMEDIA"."CUSTOM_AUTH" (p_username in VARCHAR2, p_password in VARCHAR2)
return BOOLEAN
is
  l_password varchar2(4000);
  l_stored_password varchar2(4000);
  l_expires_on date;
  l_count number;
begin
-- First, check to see if the user is in the user table
select count(*) into l_count from demo_users where user_name = p_username;
if l_count > 0 then
  -- First, we fetch the stored hashed password & expire date
  select password, expires_on into l_stored_password, l_expires_on
   from demo_users where user_name = p_username;

  -- Next, we check to see if the user's account is expired
  -- If it is, return FALSE
  if l_expires_on > sysdate or l_expires_on is null then

    -- If the account is not expired, we have to apply the custom hash
    -- function to the password
    l_password := custom_hash(p_username, p_password);

    -- Finally, we compare them to see if they are the same and return
    -- either TRUE or FALSE
    if l_password = l_stored_password then
      return true;
    else
      return false;
    end if;
  else
    return false;
  end if;
else
  -- The username provided is not in the DEMO_USERS table
  return false;
end if;
end;

/
--------------------------------------------------------
--  DDL for Function CUSTOM_HASH
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "ADMINMEDIA"."CUSTOM_HASH" (p_username in varchar2, p_password in varchar2)
return varchar2
is
  l_password varchar2(4000);
  l_salt varchar2(4000) := 'ZYF8ODWHTPZNGKLC0ZIC3QKJ6RKKW5';
begin

-- This function should be wrapped, as the hash algorhythm is exposed here.
-- You can change the value of l_salt or the method of which to call the
-- DBMS_OBFUSCATOIN toolkit, but you much reset all of your passwords
-- if you choose to do this.

l_password := utl_raw.cast_to_raw(dbms_obfuscation_toolkit.md5
  (input_string => p_password || substr(l_salt,10,13) || p_username ||
    substr(l_salt, 4,10)));
return l_password;
end;

/
--------------------------------------------------------
--  Constraints for Table ARTIST
--------------------------------------------------------

  ALTER TABLE "ADMINMEDIA"."ARTIST" ADD CONSTRAINT "name_pk" PRIMARY KEY ("NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ADMINMEDIA"."ARTIST" MODIFY ("NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DISC
--------------------------------------------------------

  ALTER TABLE "ADMINMEDIA"."DISC" ADD CONSTRAINT "DISC_PK" PRIMARY KEY ("NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ADMINMEDIA"."DISC" MODIFY ("NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SONG
--------------------------------------------------------

  ALTER TABLE "ADMINMEDIA"."SONG" ADD CONSTRAINT "TITLE_PK" PRIMARY KEY ("TITLE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ADMINMEDIA"."SONG" MODIFY ("DISC_FK" NOT NULL ENABLE);
  ALTER TABLE "ADMINMEDIA"."SONG" MODIFY ("ARTIST_FK" NOT NULL ENABLE);
  ALTER TABLE "ADMINMEDIA"."SONG" MODIFY ("TITLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table DISC
--------------------------------------------------------

  ALTER TABLE "ADMINMEDIA"."DISC" ADD CONSTRAINT "DISC_FK" FOREIGN KEY ("ARTIST_FK")
	  REFERENCES "ADMINMEDIA"."ARTIST" ("NAME") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SONG
--------------------------------------------------------

  ALTER TABLE "ADMINMEDIA"."SONG" ADD CONSTRAINT "SONG_FK" FOREIGN KEY ("ARTIST_FK")
	  REFERENCES "ADMINMEDIA"."ARTIST" ("NAME") ENABLE;
  ALTER TABLE "ADMINMEDIA"."SONG" ADD CONSTRAINT "SONG_FK2" FOREIGN KEY ("DISC_FK")
	  REFERENCES "ADMINMEDIA"."DISC" ("NAME") ENABLE;
