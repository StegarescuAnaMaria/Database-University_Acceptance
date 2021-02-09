
--------------------------------------------------------
--  File created - Wednesday-June-24-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table UNIVERSITATI_AST
--------------------------------------------------------

  CREATE TABLE "GRUPA41"."UNIVERSITATI_AST" 
   (	"ID_UNIV" NUMBER, 
	"NUME_UNIV" VARCHAR2(35 BYTE), 
	"NR_FACULTATI" NUMBER, 
	"ORAS" VARCHAR2(15 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into GRUPA41.UNIVERSITATI_AST
SET DEFINE OFF;
Insert into GRUPA41.UNIVERSITATI_AST (ID_UNIV,NUME_UNIV,NR_FACULTATI,ORAS) values (0,'Universitatea Babes-Bolyai',21,'Cluj-Napoca');
Insert into GRUPA41.UNIVERSITATI_AST (ID_UNIV,NUME_UNIV,NR_FACULTATI,ORAS) values (1,'Universitatea Alexandru Ioan Cuza',15,'Iasi');
Insert into GRUPA41.UNIVERSITATI_AST (ID_UNIV,NUME_UNIV,NR_FACULTATI,ORAS) values (2,'Academia de Studii Economice',13,'Bucuresti');
Insert into GRUPA41.UNIVERSITATI_AST (ID_UNIV,NUME_UNIV,NR_FACULTATI,ORAS) values (3,'Universitatea Politehnica',15,'Bucuresti');
Insert into GRUPA41.UNIVERSITATI_AST (ID_UNIV,NUME_UNIV,NR_FACULTATI,ORAS) values (4,'Universitatea din Bucuresti',20,'Bucuresti');


--------------------------------------------------------
--  File created - Wednesday-June-24-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table FACULTATI_AST
--------------------------------------------------------

  CREATE TABLE "GRUPA41"."FACULTATI_AST" 
   (	"NUME_FACULTATE" VARCHAR2(35 BYTE), 
	"ID_FACULTATE" NUMBER, 
	"ID_UNIV" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into GRUPA41.FACULTATI_AST
SET DEFINE OFF;
Insert into GRUPA41.FACULTATI_AST (NUME_FACULTATE,ID_FACULTATE,ID_UNIV) values ('Matematica si Informatica',0,4);
Insert into GRUPA41.FACULTATI_AST (NUME_FACULTATE,ID_FACULTATE,ID_UNIV) values ('Fizica',1,4);
Insert into GRUPA41.FACULTATI_AST (NUME_FACULTATE,ID_FACULTATE,ID_UNIV) values ('Istorie',2,4);
Insert into GRUPA41.FACULTATI_AST (NUME_FACULTATE,ID_FACULTATE,ID_UNIV) values ('Drept',3,4);
Insert into GRUPA41.FACULTATI_AST (NUME_FACULTATE,ID_FACULTATE,ID_UNIV) values ('Litere',4,4);
Insert into GRUPA41.FACULTATI_AST (NUME_FACULTATE,ID_FACULTATE,ID_UNIV) values ('Geografie',5,4);

--------------------------------------------------------
--  File created - Wednesday-June-24-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table SPECIALIZARI_AST
--------------------------------------------------------

  CREATE TABLE "GRUPA41"."SPECIALIZARI_AST" 
   (	"NUME_SPEC" VARCHAR2(35 BYTE), 
	"ID_SPEC" NUMBER, 
	"ID_FACULTATE" NUMBER, 
	"PROGRAM" VARCHAR2(10 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into GRUPA41.SPECIALIZARI_AST
SET DEFINE OFF;
Insert into GRUPA41.SPECIALIZARI_AST (NUME_SPEC,ID_SPEC,ID_FACULTATE,PROGRAM) values ('Matematica',0,0,'licenta');
Insert into GRUPA41.SPECIALIZARI_AST (NUME_SPEC,ID_SPEC,ID_FACULTATE,PROGRAM) values ('Analiza matematica si aplicatii',1,0,'master');
Insert into GRUPA41.SPECIALIZARI_AST (NUME_SPEC,ID_SPEC,ID_FACULTATE,PROGRAM) values ('Stiinta Mediului',2,5,'licenta');
Insert into GRUPA41.SPECIALIZARI_AST (NUME_SPEC,ID_SPEC,ID_FACULTATE,PROGRAM) values ('Informatica',3,5,'licenta');
Insert into GRUPA41.SPECIALIZARI_AST (NUME_SPEC,ID_SPEC,ID_FACULTATE,PROGRAM) values ('CTI',4,5,'licenta');


--------------------------------------------------------
--  File created - Wednesday-June-24-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CANDIDATI_SPEC_AST
--------------------------------------------------------

  CREATE TABLE "GRUPA41"."CANDIDATI_SPEC_AST" 
   (	"ID_CANDIDAT" NUMBER, 
	"ID_SPEC" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into GRUPA41.CANDIDATI_SPEC_AST
SET DEFINE OFF;
Insert into GRUPA41.CANDIDATI_SPEC_AST (ID_CANDIDAT,ID_SPEC) values (0,0);
Insert into GRUPA41.CANDIDATI_SPEC_AST (ID_CANDIDAT,ID_SPEC) values (0,3);
Insert into GRUPA41.CANDIDATI_SPEC_AST (ID_CANDIDAT,ID_SPEC) values (1,0);
Insert into GRUPA41.CANDIDATI_SPEC_AST (ID_CANDIDAT,ID_SPEC) values (1,3);
Insert into GRUPA41.CANDIDATI_SPEC_AST (ID_CANDIDAT,ID_SPEC) values (2,4);
Insert into GRUPA41.CANDIDATI_SPEC_AST (ID_CANDIDAT,ID_SPEC) values (3,4);
Insert into GRUPA41.CANDIDATI_SPEC_AST (ID_CANDIDAT,ID_SPEC) values (4,1);
Insert into GRUPA41.CANDIDATI_SPEC_AST (ID_CANDIDAT,ID_SPEC) values (5,2);
Insert into GRUPA41.CANDIDATI_SPEC_AST (ID_CANDIDAT,ID_SPEC) values (6,4);
Insert into GRUPA41.CANDIDATI_SPEC_AST (ID_CANDIDAT,ID_SPEC) values (7,2);


--------------------------------------------------------
--  File created - Wednesday-June-24-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CANDIDATI_AST
--------------------------------------------------------

  CREATE TABLE "GRUPA41"."CANDIDATI_AST" 
   (	"NUME" VARCHAR2(15 BYTE), 
	"PRENUME" VARCHAR2(15 BYTE), 
	"ID_CANDIDAT" NUMBER, 
	"DATA_NASTERE" DATE, 
	"VARSTA" NUMBER, 
	"TIP" VARCHAR2(10 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into GRUPA41.CANDIDATI_AST
SET DEFINE OFF;
Insert into GRUPA41.CANDIDATI_AST (NUME,PRENUME,ID_CANDIDAT,DATA_NASTERE,VARSTA,TIP) values ('Popa','Ion',0,to_date('26-FEB-99','DD-MON-RR'),21,'strain');
Insert into GRUPA41.CANDIDATI_AST (NUME,PRENUME,ID_CANDIDAT,DATA_NASTERE,VARSTA,TIP) values ('Stoica','Maria',1,to_date('02-FEB-99','DD-MON-RR'),21,'nativ');
Insert into GRUPA41.CANDIDATI_AST (NUME,PRENUME,ID_CANDIDAT,DATA_NASTERE,VARSTA,TIP) values ('Munteanu','Victor',2,to_date('05-APR-96','DD-MON-RR'),24,'strain');
Insert into GRUPA41.CANDIDATI_AST (NUME,PRENUME,ID_CANDIDAT,DATA_NASTERE,VARSTA,TIP) values ('Matei','Constantin',3,to_date('28-JAN-99','DD-MON-RR'),21,'nativ');
Insert into GRUPA41.CANDIDATI_AST (NUME,PRENUME,ID_CANDIDAT,DATA_NASTERE,VARSTA,TIP) values ('Rusu','Marin',4,to_date('01-MAY-96','DD-MON-RR'),24,'nativ');
Insert into GRUPA41.CANDIDATI_AST (NUME,PRENUME,ID_CANDIDAT,DATA_NASTERE,VARSTA,TIP) values ('Dumitrescu','Stefan',5,to_date('06-APR-99','DD-MON-RR'),21,'nativ');
Insert into GRUPA41.CANDIDATI_AST (NUME,PRENUME,ID_CANDIDAT,DATA_NASTERE,VARSTA,TIP) values ('Anghel','Ana',6,to_date('07-JUN-98','DD-MON-RR'),22,'nativ');
Insert into GRUPA41.CANDIDATI_AST (NUME,PRENUME,ID_CANDIDAT,DATA_NASTERE,VARSTA,TIP) values ('Constantinescu','Ilie',7,to_date('22-MAR-99','DD-MON-RR'),21,'nativ');


--------------------------------------------------------
--  File created - Wednesday-June-24-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CERERI_AST
--------------------------------------------------------

  CREATE TABLE "GRUPA41"."CERERI_AST" 
   (	"ID_CERERE" NUMBER, 
	"STATUT" VARCHAR2(10 BYTE), 
	"DATA_CERERE" DATE, 
	"ID_CANDIDAT" NUMBER, 
	"MEDIE" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into GRUPA41.CERERI_AST
SET DEFINE OFF;
Insert into GRUPA41.CERERI_AST (ID_CERERE,STATUT,DATA_CERERE,ID_CANDIDAT,MEDIE) values (0,'respins',to_date('09-JUL-20','DD-MON-RR'),0,7.5);
Insert into GRUPA41.CERERI_AST (ID_CERERE,STATUT,DATA_CERERE,ID_CANDIDAT,MEDIE) values (1,'admis',to_date('27-JUN-20','DD-MON-RR'),1,6.066);
Insert into GRUPA41.CERERI_AST (ID_CERERE,STATUT,DATA_CERERE,ID_CANDIDAT,MEDIE) values (2,'admis',to_date('24-JUN-20','DD-MON-RR'),1,7.0128);
Insert into GRUPA41.CERERI_AST (ID_CERERE,STATUT,DATA_CERERE,ID_CANDIDAT,MEDIE) values (9,'in proces',to_date('24-JUN-20','DD-MON-RR'),0,null);


--------------------------------------------------------
--  File created - Wednesday-June-24-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table EXAMENE_AST
--------------------------------------------------------

  CREATE TABLE "GRUPA41"."EXAMENE_AST" 
   (	"TIP" VARCHAR2(10 BYTE), 
	"ID_EXAMEN" NUMBER, 
	"ID_CANDIDAT" NUMBER, 
	"NOTA" NUMBER, 
	"NUME_MATERIE" VARCHAR2(35 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into GRUPA41.EXAMENE_AST
SET DEFINE OFF;
Insert into GRUPA41.EXAMENE_AST (TIP,ID_EXAMEN,ID_CANDIDAT,NOTA,NUME_MATERIE) values ('bac',0,0,8,'Matematica');
Insert into GRUPA41.EXAMENE_AST (TIP,ID_EXAMEN,ID_CANDIDAT,NOTA,NUME_MATERIE) values ('bac',8,0,6,'Limba engleza');
Insert into GRUPA41.EXAMENE_AST (TIP,ID_EXAMEN,ID_CANDIDAT,NOTA,NUME_MATERIE) values ('admitere',1,1,6,'Matematica');
Insert into GRUPA41.EXAMENE_AST (TIP,ID_EXAMEN,ID_CANDIDAT,NOTA,NUME_MATERIE) values ('bac',2,0,7,'Limba si literatura romana');
Insert into GRUPA41.EXAMENE_AST (TIP,ID_EXAMEN,ID_CANDIDAT,NOTA,NUME_MATERIE) values ('bac',3,0,9,'Informatica');
Insert into GRUPA41.EXAMENE_AST (TIP,ID_EXAMEN,ID_CANDIDAT,NOTA,NUME_MATERIE) values ('bac',5,1,8,'Informatica');
Insert into GRUPA41.EXAMENE_AST (TIP,ID_EXAMEN,ID_CANDIDAT,NOTA,NUME_MATERIE) values ('bac',6,1,5,'Matematica');
Insert into GRUPA41.EXAMENE_AST (TIP,ID_EXAMEN,ID_CANDIDAT,NOTA,NUME_MATERIE) values ('bac',7,1,6,'Limba si literatura romana');
Insert into GRUPA41.EXAMENE_AST (TIP,ID_EXAMEN,ID_CANDIDAT,NOTA,NUME_MATERIE) values ('admitere',9,1,8,'Matematica');
Insert into GRUPA41.EXAMENE_AST (TIP,ID_EXAMEN,ID_CANDIDAT,NOTA,NUME_MATERIE) values ('admitere',4,1,7,'Informatica');
