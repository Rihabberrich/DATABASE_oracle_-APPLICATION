--------------------------------------------------------
--  Fichier créé - jeudi-décembre-15-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEQADH
--------------------------------------------------------

   CREATE SEQUENCE  "BIB"."SEQADH"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQFONDS
--------------------------------------------------------

   CREATE SEQUENCE  "BIB"."SEQFONDS"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQRES
--------------------------------------------------------

   CREATE SEQUENCE  "BIB"."SEQRES"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table ADHERENT
--------------------------------------------------------

  CREATE TABLE "BIB"."ADHERENT" 
   (	"NOADH" VARCHAR2(20 BYTE), 
	"NOM" VARCHAR2(20 BYTE), 
	"PRENOM" VARCHAR2(20 BYTE), 
	"ADRESSE" VARCHAR2(20 BYTE), 
	"DATEADH" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CATALOGUE
--------------------------------------------------------

  CREATE TABLE "BIB"."CATALOGUE" 
   (	"TITRE" VARCHAR2(20 BYTE), 
	"NOMAUT" VARCHAR2(20 BYTE), 
	"PRENOMAUT" VARCHAR2(20 BYTE), 
	"ANED" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table EMPRUNT
--------------------------------------------------------

  CREATE TABLE "BIB"."EMPRUNT" 
   (	"COTEF" VARCHAR2(20 BYTE), 
	"DATEEMP" VARCHAR2(20 BYTE), 
	"NOADH" VARCHAR2(20 BYTE), 
	"DATERET" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table FONDS
--------------------------------------------------------

  CREATE TABLE "BIB"."FONDS" 
   (	"COTEF" VARCHAR2(20 BYTE), 
	"TITRE" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table RESERVATION
--------------------------------------------------------

  CREATE TABLE "BIB"."RESERVATION" 
   (	"CODER" NUMBER(10,0), 
	"TITRE" VARCHAR2(20 BYTE), 
	"NOADH" VARCHAR2(20 BYTE), 
	"DATERES" DATE, 
	"DATEEMP" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into BIB.ADHERENT
SET DEFINE OFF;
Insert into BIB.ADHERENT (NOADH,NOM,PRENOM,ADRESSE,DATEADH) values ('10','1','1','1',to_date('10/10/10','DD/MM/RR'));
Insert into BIB.ADHERENT (NOADH,NOM,PRENOM,ADRESSE,DATEADH) values ('1','1','1','1',to_date('10/10/10','DD/MM/RR'));
Insert into BIB.ADHERENT (NOADH,NOM,PRENOM,ADRESSE,DATEADH) values ('A03','1','1','1',to_date('10/10/10','DD/MM/RR'));
Insert into BIB.ADHERENT (NOADH,NOM,PRENOM,ADRESSE,DATEADH) values ('A001','RENAULT','Robert','Lausanne',to_date('08/04/01','DD/MM/RR'));
Insert into BIB.ADHERENT (NOADH,NOM,PRENOM,ADRESSE,DATEADH) values ('A002','VOLVO','Robert','Geneve',to_date('01/01/02','DD/MM/RR'));
Insert into BIB.ADHERENT (NOADH,NOM,PRENOM,ADRESSE,DATEADH) values ('A003','AQUA','Robert','Sion',to_date('25/06/01','DD/MM/RR'));
REM INSERTING into BIB.CATALOGUE
SET DEFINE OFF;
Insert into BIB.CATALOGUE (TITRE,NOMAUT,PRENOMAUT,ANED) values ('Base
de
donnees','ADIBA','Michel','1995');
Insert into BIB.CATALOGUE (TITRE,NOMAUT,PRENOMAUT,ANED) values ('Base
des
objets','COLLAND','Rollet','1990');
Insert into BIB.CATALOGUE (TITRE,NOMAUT,PRENOMAUT,ANED) values ('OO
DMBS','ADIBA','Michel','1998');
Insert into BIB.CATALOGUE (TITRE,NOMAUT,PRENOMAUT,ANED) values ('ORACLE
SQL','LINDEN','Brian','2000');
Insert into BIB.CATALOGUE (TITRE,NOMAUT,PRENOMAUT,ANED) values ('SQL*Plus
reference','LINDEN','Brian','2001');
Insert into BIB.CATALOGUE (TITRE,NOMAUT,PRENOMAUT,ANED) values ('Web
Database','BUYENS','Jim','2000');
REM INSERTING into BIB.EMPRUNT
SET DEFINE OFF;
Insert into BIB.EMPRUNT (COTEF,DATEEMP,NOADH,DATERET) values ('BDD_02','21/04/2012','A001',to_date('03/05/11','DD/MM/RR'));
Insert into BIB.EMPRUNT (COTEF,DATEEMP,NOADH,DATERET) values ('OOMS_01','05/01/12','A002',to_date('01/01/12','DD/MM/RR'));
Insert into BIB.EMPRUNT (COTEF,DATEEMP,NOADH,DATERET) values ('OOMS_01','06/01/12','A001',to_date('01/01/12','DD/MM/RR'));
Insert into BIB.EMPRUNT (COTEF,DATEEMP,NOADH,DATERET) values ('SQLP_01','04/06/12','A001',null);
Insert into BIB.EMPRUNT (COTEF,DATEEMP,NOADH,DATERET) values ('SQLP_01','05/06/12','A001',null);
Insert into BIB.EMPRUNT (COTEF,DATEEMP,NOADH,DATERET) values ('BDD_02','08/04/01','A001',to_date('03/05/11','DD/MM/RR'));
Insert into BIB.EMPRUNT (COTEF,DATEEMP,NOADH,DATERET) values ('OOMS_02','03/06/12','A001',null);
Insert into BIB.EMPRUNT (COTEF,DATEEMP,NOADH,DATERET) values ('ORA.SQL_01','01/06/12','A001',null);
Insert into BIB.EMPRUNT (COTEF,DATEEMP,NOADH,DATERET) values ('BDD_02','21/04/11','A001',to_date('03/05/11','DD/MM/RR'));
Insert into BIB.EMPRUNT (COTEF,DATEEMP,NOADH,DATERET) values ('SQLP_01','01/06/12','A001',null);
Insert into BIB.EMPRUNT (COTEF,DATEEMP,NOADH,DATERET) values ('SQLP_01','01/01/02','A002',null);
REM INSERTING into BIB.FONDS
SET DEFINE OFF;
Insert into BIB.FONDS (COTEF,TITRE) values ('BDD_03','Base
de
donnees');
Insert into BIB.FONDS (COTEF,TITRE) values ('BDD_02','Base
de
donnees');
Insert into BIB.FONDS (COTEF,TITRE) values ('BD0_01','Base
des
objets');
Insert into BIB.FONDS (COTEF,TITRE) values ('OOMS_01','OO
DMBS');
Insert into BIB.FONDS (COTEF,TITRE) values ('OOMS_02','OO
DMBS');
Insert into BIB.FONDS (COTEF,TITRE) values ('ORA.SQL_01','ORACLE
SQL');
Insert into BIB.FONDS (COTEF,TITRE) values ('SQLP_01','SQL*Plus
reference');
Insert into BIB.FONDS (COTEF,TITRE) values ('WDB_00','Web
Database');
REM INSERTING into BIB.RESERVATION
SET DEFINE OFF;
Insert into BIB.RESERVATION (CODER,TITRE,NOADH,DATERES,DATEEMP) values ('50','Base
de
donnees','A001',to_date('09/04/11','DD/MM/RR'),null);
Insert into BIB.RESERVATION (CODER,TITRE,NOADH,DATERES,DATEEMP) values ('51','Base
de
donnees','A002',to_date('10/01/12','DD/MM/RR'),null);
Insert into BIB.RESERVATION (CODER,TITRE,NOADH,DATERES,DATEEMP) values ('52','OO
DMBS','A002',to_date('02/01/02','DD/MM/RR'),null);
Insert into BIB.RESERVATION (CODER,TITRE,NOADH,DATERES,DATEEMP) values ('53','Base
de
donnees','A002',to_date('01/01/02','DD/MM/RR'),null);
--------------------------------------------------------
--  DDL for Index EMPRUNTINDEXNOADH
--------------------------------------------------------

  CREATE INDEX "BIB"."EMPRUNTINDEXNOADH" ON "BIB"."EMPRUNT" ("NOADH") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index INDEXCATNOMAUT
--------------------------------------------------------

  CREATE INDEX "BIB"."INDEXCATNOMAUT" ON "BIB"."CATALOGUE" ("NOMAUT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CATALOGUE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BIB"."CATALOGUE_PK" ON "BIB"."CATALOGUE" ("TITRE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index RESERVATION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BIB"."RESERVATION_PK" ON "BIB"."RESERVATION" ("CODER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index EMPRUNT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BIB"."EMPRUNT_PK" ON "BIB"."EMPRUNT" ("COTEF", "DATEEMP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index FONDS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BIB"."FONDS_PK" ON "BIB"."FONDS" ("COTEF") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index EMPRUNTCOEFINDEX
--------------------------------------------------------

  CREATE INDEX "BIB"."EMPRUNTCOEFINDEX" ON "BIB"."EMPRUNT" ("COTEF") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index INDEXADHNOM
--------------------------------------------------------

  CREATE INDEX "BIB"."INDEXADHNOM" ON "BIB"."ADHERENT" ("NOM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index INDEXPRENOMADH
--------------------------------------------------------

  CREATE INDEX "BIB"."INDEXPRENOMADH" ON "BIB"."ADHERENT" ("PRENOM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index RESNOADHINDEX
--------------------------------------------------------

  CREATE INDEX "BIB"."RESNOADHINDEX" ON "BIB"."RESERVATION" ("NOADH") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index ADHERENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BIB"."ADHERENT_PK" ON "BIB"."ADHERENT" ("NOADH") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index TITREINDEXRES
--------------------------------------------------------

  CREATE INDEX "BIB"."TITREINDEXRES" ON "BIB"."RESERVATION" ("TITRE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index INDEXPRENOMAUT
--------------------------------------------------------

  CREATE INDEX "BIB"."INDEXPRENOMAUT" ON "BIB"."CATALOGUE" ("PRENOMAUT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table RESERVATION
--------------------------------------------------------

  ALTER TABLE "BIB"."RESERVATION" ADD CONSTRAINT "RESERVATION_PK" PRIMARY KEY ("CODER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "BIB"."RESERVATION" MODIFY ("DATERES" NOT NULL ENABLE);
  ALTER TABLE "BIB"."RESERVATION" MODIFY ("NOADH" NOT NULL ENABLE);
  ALTER TABLE "BIB"."RESERVATION" MODIFY ("TITRE" NOT NULL ENABLE);
  ALTER TABLE "BIB"."RESERVATION" MODIFY ("CODER" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FONDS
--------------------------------------------------------

  ALTER TABLE "BIB"."FONDS" ADD CONSTRAINT "FONDS_PK" PRIMARY KEY ("COTEF")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "BIB"."FONDS" MODIFY ("TITRE" NOT NULL ENABLE);
  ALTER TABLE "BIB"."FONDS" MODIFY ("COTEF" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ADHERENT
--------------------------------------------------------

  ALTER TABLE "BIB"."ADHERENT" ADD CONSTRAINT "ADHERENT_PK" PRIMARY KEY ("NOADH")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "BIB"."ADHERENT" MODIFY ("DATEADH" NOT NULL ENABLE);
  ALTER TABLE "BIB"."ADHERENT" MODIFY ("ADRESSE" NOT NULL ENABLE);
  ALTER TABLE "BIB"."ADHERENT" MODIFY ("PRENOM" NOT NULL ENABLE);
  ALTER TABLE "BIB"."ADHERENT" MODIFY ("NOM" NOT NULL ENABLE);
  ALTER TABLE "BIB"."ADHERENT" MODIFY ("NOADH" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EMPRUNT
--------------------------------------------------------

  ALTER TABLE "BIB"."EMPRUNT" ADD CONSTRAINT "EMPRUNT_PK" PRIMARY KEY ("COTEF", "DATEEMP")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "BIB"."EMPRUNT" MODIFY ("NOADH" NOT NULL ENABLE);
  ALTER TABLE "BIB"."EMPRUNT" MODIFY ("DATEEMP" NOT NULL ENABLE);
  ALTER TABLE "BIB"."EMPRUNT" MODIFY ("COTEF" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CATALOGUE
--------------------------------------------------------

  ALTER TABLE "BIB"."CATALOGUE" ADD CONSTRAINT "CATALOGUE_PK" PRIMARY KEY ("TITRE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "BIB"."CATALOGUE" MODIFY ("ANED" NOT NULL ENABLE);
  ALTER TABLE "BIB"."CATALOGUE" MODIFY ("PRENOMAUT" NOT NULL ENABLE);
  ALTER TABLE "BIB"."CATALOGUE" MODIFY ("NOMAUT" NOT NULL ENABLE);
  ALTER TABLE "BIB"."CATALOGUE" MODIFY ("TITRE" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table EMPRUNT
--------------------------------------------------------

  ALTER TABLE "BIB"."EMPRUNT" ADD CONSTRAINT "EMPRUNT_FK1" FOREIGN KEY ("NOADH")
	  REFERENCES "BIB"."ADHERENT" ("NOADH") ENABLE;
  ALTER TABLE "BIB"."EMPRUNT" ADD CONSTRAINT "EMPRUNT_FK2" FOREIGN KEY ("COTEF")
	  REFERENCES "BIB"."FONDS" ("COTEF") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FONDS
--------------------------------------------------------

  ALTER TABLE "BIB"."FONDS" ADD CONSTRAINT "FONDS_FK1" FOREIGN KEY ("TITRE")
	  REFERENCES "BIB"."CATALOGUE" ("TITRE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RESERVATION
--------------------------------------------------------

  ALTER TABLE "BIB"."RESERVATION" ADD CONSTRAINT "RESERVATION_FK1" FOREIGN KEY ("NOADH")
	  REFERENCES "BIB"."ADHERENT" ("NOADH") ENABLE;
  ALTER TABLE "BIB"."RESERVATION" ADD CONSTRAINT "RESERVATION_FK2" FOREIGN KEY ("TITRE")
	  REFERENCES "BIB"."CATALOGUE" ("TITRE") ENABLE;
--------------------------------------------------------
--  DDL for Trigger EX10
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BIB"."EX10" 
before insert on EMPRUNT
for each row
declare
nb_exmp number(8) :=0 ;
begin 
select count(*) into nb_exmp from EMPRUNT e , FONDS f where e.cotef=f.cotef
and e.noAdh = :new.noAdh and e.dateret<sysdate;

if (nb_exmp>0) then
raise_application_error (-20350,'Vous ne pouvez emprunter qu une seul fois le meme titre');
end if;
end;
/
ALTER TRIGGER "BIB"."EX10" DISABLE;
--------------------------------------------------------
--  DDL for Trigger EX11
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BIB"."EX11" 
before update of dateret on emprunt 
for each row 
DECLARE
begin 
if (:new.dateret<:old.dateemp) 
then
raise_application_error(-20304,'date emprunt superieur à date retour');
end if;
end;
/
ALTER TRIGGER "BIB"."EX11" ENABLE;
--------------------------------------------------------
--  DDL for Trigger EX15
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BIB"."EX15" 
before update of dateemp on emprunt for each row 

begin 
if (:old.dateret<:new.dateemp) then
raise_application_error(-20312,'Date emprunt superieur à date retour');
end if;
end;
/
ALTER TRIGGER "BIB"."EX15" ENABLE;
--------------------------------------------------------
--  DDL for Trigger EX17
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BIB"."EX17" 
before delete on emprunt for each row 
declare 
n number ;
vtitre catalogue.titre%type;
begin 
select titre into vtitre from fonds f where f.COTEF=:old.cotef;
select count(*) into n from reservation r where 
r.NOADH=:old.noadh and vtitre=r.TITRE and r.DATEEMP=:old.dateemp;
if(n<>0) then 
raise_application_error(-20312,'cet emprunt concerne une réservation ');
end if;
end;
/
ALTER TRIGGER "BIB"."EX17" ENABLE;
--------------------------------------------------------
--  DDL for Trigger EX4
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BIB"."EX4" 
before update of dateadh on adherent for each row 
DECLARE
nbemp number(8):=0 ;
nbres number(8):=0 ;
begin 
select count(*) into nbres from reservation r where :old.noadh=r.NOADH and 
(:new.dateadh> r.DATERES or :new.dateadh>r.DATEEMP) ;
select count(*) into nbemp from emprunt e where :old.noadh=e.NOADH and 
(:new.dateadh>e.DATEEMP) ;
if(nbemp=0 and nbres=0) then 
DBMS_OUTPUT.PUT_LINE('ligne modifié ') ;
else
raise_application_error(-20300,'error date d''adhesion ');
end if;
end;
/
ALTER TRIGGER "BIB"."EX4" ENABLE;
--------------------------------------------------------
--  DDL for Trigger EX5
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BIB"."EX5" 
before insert on reservation for each row 
DECLARE
datead date;
begin 
select dateadh into datead from adherent a where :new.noadh=a.NOADH;

if(datead>:new.dateres)then
DBMS_OUTPUT.PUT_LINE('La date de reservation devient '||datead) ;
:new.dateres:=datead;
end if;
end;
/
ALTER TRIGGER "BIB"."EX5" ENABLE;
--------------------------------------------------------
--  DDL for Trigger EX6
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BIB"."EX6" 
before insert on emprunt for each row 
DECLARE
datead date;
begin 
select dateadh into datead from adherent a where :new.noadh=a.NOADH;

if(datead>:new.dateemp)then
DBMS_OUTPUT.PUT_LINE('La date d''emprunt devient '||datead) ;
:new.dateemp:=datead;
end if;
end;
/
ALTER TRIGGER "BIB"."EX6" ENABLE;
--------------------------------------------------------
--  DDL for Trigger EX7
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BIB"."EX7" 
before update of noadh on adherent for each row 
DECLARE
nr number:=0;
ne number:=0;
begin 
select count(*) into ne from emprunt e where :old.noadh=e.NOADH;
select count(*) into nr from reservation r where :old.noadh=r.NOADH;
if(ne<>0 or nr<>0 )then
RAISE_APPLICATION_ERROR(-20324, 'modification interdite ');
end if;
end;
/
ALTER TRIGGER "BIB"."EX7" ENABLE;
--------------------------------------------------------
--  DDL for Trigger EX8
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BIB"."EX8" 
before insert  on emprunt for each row 
DECLARE
n number:=0;
begin 
select count(*) into n from emprunt e where :new.noadh=e.NOADH and (e.DATERET>:new.dateemp);

if(n>=5)then
raise_application_error(-20301,'nbre d''emprunt superieur à 5 ');
end if;
end;
/
ALTER TRIGGER "BIB"."EX8" ENABLE;
--------------------------------------------------------
--  DDL for Trigger EX9
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BIB"."EX9" 
before update of dateret on emprunt for each row 
DECLARE
begin 
if (to_date(:new.dateret)-to_date(:old.dateemp)>30) then
raise_application_error(-20302,'reservation depasse 30 jours ');
end if;
end;
/
ALTER TRIGGER "BIB"."EX9" ENABLE;
--------------------------------------------------------
--  DDL for Trigger Q12
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BIB"."Q12" 
before update of titre on fonds for each row
declare 
n number ;
begin
select count(*) into n from  emprunt e where e.cotef = :old.cotef ;
if(n<>0) then 
raise_application_error(-20310,'il y a un exemplaire emprunté de ce titre ');
end if;
end;
/
ALTER TRIGGER "BIB"."Q12" ENABLE;
--------------------------------------------------------
--  DDL for Trigger Q13
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BIB"."Q13" 
before delete  on fonds for each row

begin

raise_application_error(-20311,'impossible de supprimer un fonds ');

end;
/
ALTER TRIGGER "BIB"."Q13" ENABLE;
--------------------------------------------------------
--  DDL for Trigger Q14
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BIB"."Q14" 
before insert on reservation for each row
begin
if(:new.dateemp is not NULL)then
raise_application_error(-20307,'la date d''emprunt doit etre Null');
end if;
end;
/
ALTER TRIGGER "BIB"."Q14" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRAFF
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BIB"."TRAFF" 
before update of noadh on adherent for each row
DECLARE
n number:=0;
begin 
select count(*) into n from ADHERENT a, RESERVATION r where a.NOADH=r.NOADH and :new.dateadh>r.DATERES;
DBMS_OUTPUT.PUT_LINE('hamza selmi');
end;
/
ALTER TRIGGER "BIB"."TRAFF" ENABLE;
