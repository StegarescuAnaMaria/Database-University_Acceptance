alter table cereri_ast
drop constraint SYS_C00367783; 
commit;
alter table cereri_ast
drop constraint SYS_C00367785; 
alter table cereri_ast
drop constraint CERERI_AST_PK; 

alter table cereri_ast
drop (id_candidat, id_spec);

alter table cereri_ast
drop column id_spec;

alter table cereri_ast
ADD CONSTRAINT cerere_pk PRIMARY KEY(id_cerere);
commit;

ALTER TABLE candidati_spec_ast 
ADD program_stud varchar2(10) not null;

ALTER TABLE specializari_ast
ADD program_stud varchar2(10) not null;

ALTER TABLE universitati_ast
ADD oras varchar2(15) not null;

alter table facultati_ast
drop column nr_spec;
commit;


alter table universitati_ast
add constraint unique_nume unique(nume_univ);
commit;

ALTER TABLE candidat_spec_ast 
ADD program_stud varchar2(10) not null;

insert into universitati_ast
values (0 ,'Universitatea Babes-Bolyai', 21, 'Cluj-Napoca');
commit;

insert into universitati_ast
values (1 ,'Universitatea Alexandru Ioan Cuza', 15, 'Iasi');
commit;

insert into universitati_ast
values (2 ,'Academia de Studii Economice', 13, 'Bucuresti');
commit;

insert into universitati_ast
values (3 ,'Universitatea Politehnica', 15, 'Bucuresti');
commit;

insert into universitati_ast
values (4 ,'Universitatea din Bucuresti', 20, 'Bucuresti');
commit;

commit;
alter table universitati_ast
add constraint unique_id unique(id_univ);
-----------------------------------------------------------------------------------------------

alter table facultati_ast
add constraint unique_id_facultate unique(id_facultate);

insert into facultati_ast
values('Matematica si Informatica', 0, 4);
commit;

insert into facultati_ast
values('Fizica', 1, 4);
commit;

insert into facultati_ast
values('Istorie', 2, 4);
commit;

insert into facultati_ast
values('Drept', 3, 4);
commit;

insert into facultati_ast
values('Litere', 4, 4);
commit;

insert into facultati_ast
values('Geografie', 5, 4);
commit;
----------------------------------------------------
alter table specializari_ast
add constraint unique_id_spec unique(id_spec);

alter table specializari_ast
drop column program_stud;

alter table specializari_ast
add id_program number;

insert into specializari_ast
values('Matematica', 0, 0, 'licenta');
commit;

insert into specializari_ast
values('Analiza matematica si aplicatii', 1, 0, 'master');
commit;

insert into specializari_ast
values('Stiinta Mediului', 2, 5, 'licenta');
commit;

insert into specializari_ast
values('Informatica', 3, 5, 'licenta');
commit;

insert into specializari_ast
values('CTI', 4, 5, 'licenta');
commit;

---------------------------------------------------
alter table candidati_ast
add constraint unique_id_candidat unique(id_candidat);


alter table candidati_ast
add constraint check_id_candidat id_candidat not null;

insert into candidati_ast
values('Popa','Ion', 0, to_date('26-02-1999', 'dd-mm-yyyy'), 21, 'strain');
commit;

insert into candidati_ast
values('Stoica','Maria', 1, to_date('02-02-1999', 'dd-mm-yyyy'), 21, 'nativ');
commit;

insert into candidati_ast
values('Munteanu','Victor', 2, to_date('05-04-1996', 'dd-mm-yyyy'), 24, 'strain');
commit;

insert into candidati_ast
values('Matei','Constantin', 3, to_date('28-01-1999', 'dd-mm-yyyy'), 21, 'nativ');
commit;

insert into candidati_ast
values('Rusu','Marin', 4, to_date('01-05-1996', 'dd-mm-yyyy'), 24, 'nativ');
commit;

insert into candidati_ast
values('Dumitrescu','Stefan', 5, to_date('06-04-1999', 'dd-mm-yyyy'), 21, 'nativ');
commit;

insert into candidati_ast
values('Anghel','Ana', 6, to_date('07-06-1998', 'dd-mm-yyyy'), 22, 'nativ');
commit;

insert into candidati_ast
values('Constantinescu','Ilie', 7, to_date('22-03-1999', 'dd-mm-yyyy'), 21, 'nativ');
commit;
---------------------------------------------------------------------------
alter table candidati_spec_ast
drop constraint unique_id_candidat2;

alter table candidati_spec_ast
drop constraint unique_id_cerere;

insert into candidati_spec_ast
values(0, 0, 0, 'licenta');
commit;

insert into candidati_spec_ast
values(0, 3, 1, 'licenta');
commit;

insert into candidati_spec_ast
values(1, 3, 2, 'licenta');
commit;

insert into candidati_spec_ast
values(2, 4, 3, 'master');
commit;

insert into candidati_spec_ast
values(3, 4, 4, 'licenta');
commit;

insert into candidati_spec_ast
values(4, 1, 5, 'master');
commit;

insert into candidati_spec_ast
values(5, 2, 6, 'licenta');
commit;

insert into candidati_spec_ast
values(6, 4, 7, 'licenta');
commit;

insert into candidati_spec_ast
values(7, 2, 8, 'licenta');
commit;

-----------------------------------

insert into candidati_spec_ast
values(0, 0);
commit;

insert into candidati_spec_ast
values(0, 3);
commit;

insert into candidati_spec_ast
values(1, 3);
commit;

insert into candidati_spec_ast
values(2, 4);
commit;

insert into candidati_spec_ast
values(3, 4);
commit;

insert into candidati_spec_ast
values(4, 1);
commit;

insert into candidati_spec_ast
values(5, 2);
commit;

insert into candidati_spec_ast
values(6, 4);
commit;

insert into candidati_spec_ast
values(7, 2);
commit;

insert into candidati_spec_ast
values(1, 0);
commit;
---------------------------------------------------------------------
alter table examene_ast
add id_cerere number not null;

alter table examene_ast
drop constraint EXAMENE_AST_PK;

alter table examene_ast
drop column nume_materie;

alter table examene_ast
drop column id_cerere;

alter table examene_ast
drop column id_spec;

alter table examene_ast
add nume_materie varchar(30);

alter table examene_ast
add nota number not null;

insert into examene_ast
values('bac', 0, 0, 8, 'Matematica');
commit;

insert into examene_ast
values('bac', 8, 0, 6, 'Limba engleza');
commit;

insert into examene_ast
values('admitere', 1, 1, 6, 'Matematica');
commit;

insert into examene_ast
values('bac', 2, 0, 7, 'Limba si literatura romana');
commit;

insert into examene_ast
values('bac', 3, 0, 9, 'Informatica');
commit;

insert into examene_ast
values('bac', 4, 0, 8, 'Matematica');
commit;

insert into examene_ast
values('bac', 5, 0, 7, 'Limba si literatura romana');
commit;

insert into examene_ast
values('bac', 5, 1, 8, 'Fizica');
commit;

insert into examene_ast
values('bac', 6, 1, 5, 'Matematica');
commit;

insert into examene_ast
values('bac', 7, 1, 6, 'Limba si literatura romana');
commit;

insert into examene_ast
values('bac', 6, 0, 9, 'Informatica');
commit;

insert into examene_ast
values('admitere', 7, 1, 7, 'Informatica');
commit;

insert into examene_ast
values('admitere', 8, 1, 6, 'Matematica');
commit;

insert into examene_ast
values('admitere', 4, 1, 7, 'Informatica');
commit;

insert into examene_ast
values('admitere', 9, 1, 8, 'Matematica');
commit;
-----------------------------------------------------

insert into cereri_examene_ast
values(0,0);
commit;

insert into cereri_examene_ast
values(9,0);
commit;

insert into cereri_examene_ast
values(9,2);
commit;

insert into cereri_examene_ast
values(0,2);
commit;

insert into cereri_examene_ast
values(0,3);
commit;

insert into cereri_examene_ast
values(9,3);
commit;

insert into cereri_examene_ast
values(1,7);
commit;

insert into cereri_examene_ast
values(2,7);
commit;

insert into cereri_examene_ast
values(9,8);
commit;

insert into cereri_examene_ast
values(4,1);
commit;

insert into cereri_examene_ast
values(2,9);
commit;

-------------------------------------------------------------------------
alter table cereri_ast
add medie number;

alter table cereri_ast
add id_spec number;

alter table cereri_ast
add id_candidat number;

insert into cereri_ast
values(0, 'respins', to_date(SYSDATE+15, 'dd-mm-yyyy'),0, 7.5);
commit;

insert into cereri_ast
values(1, 'admis', to_date(SYSDATE+3, 'dd-mm-yyyy'),1, 6.066);
commit;

insert into cereri_ast
values(2, 'admis', to_date(SYSDATE, 'dd-mm-yyyy'),1, 7.0128);
commit;

insert into cereri_ast
values(9, 'in proces', to_date(SYSDATE, 'dd-mm-yyyy'),0, null);
commit;

---------------------------------------------------------------------------------
alter table facultati_programe_ast
add id_program number;

alter table facultati_programe_ast
drop column program_stud;

insert into facultati_programe_ast
values(0, 'licenta', 3);
commit;

insert into facultati_programe_ast
values(0, 'master', 12);
commit;

insert into facultati_programe_ast
values(0, 'doctorat', 10);
commit;

insert into facultati_programe_ast
values(1, 'licenta', 4);
commit;

insert into facultati_programe_ast
values(1, 'master', 7);
commit;

insert into facultati_programe_ast
values(1, 'doctorat', 10);
commit;

insert into facultati_programe_ast
values(2, 'licenta', 3);
commit;

insert into facultati_programe_ast
values(2, 'master', 8);
commit;

insert into facultati_programe_ast
values(2, 'doctorat', 1);
commit;

insert into facultati_programe_ast
values(3, 'licenta', 1);
commit;

insert into facultati_programe_ast
values(3, 'master', 11);
commit;

insert into facultati_programe_ast
values(3, 'doctorat', 5);
commit;
---------------------------------------------------------------------------

insert into programe_studii_ast
values(0, 'licenta');

insert into programe_studii_ast
values(0, 'master');

insert into programe_studii_ast
values(2, 'ldoctorat');