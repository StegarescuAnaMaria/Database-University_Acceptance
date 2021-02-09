--interogari:

-- Utilizând clauza WITH, s? se scrie o cerere care afi?eaz? numele departamentelor ?i valoarea
-- total? a salariilor din cadrul acestora. Se vor considera departamentele a c?ror valoare total? a
-- salariilor este mai mare decât media valorilor totale ale salariilor tuturor angajatilor

select dep.department_name, sum(salary), ang.department_id
from employees ang join departments dep on(ang.department_id = dep.department_id)
where (select sum(salary)
        from employees
        where department_id = ang.department_id) > (select avg(salary)
                                                   from employees)
group by dep.department_name, ang.department_id;

WITH info AS 
(SELECT department_id, SUM(salary) s
FROM employees
GROUP BY department_id)
SELECT department_name, s
FROM departments d JOIN info ON (d.department_id = info.department_id)
WHERE s > (SELECT AVG(s)
          FROM info);
          
          
          
with info as
(select nume_facultate, nume_univ, avg(medie) medie
from facultati_ast join universitati_ast using(id_univ) 
join specializari_ast using(id_spec)
join candidati_spec_ast using(id_spec)
join candidati_ast using(id_candidat)
join cereri_ast using(id_cereri)
group by id_facultate),
info2 as
(select nume_facultate, nume_univ nume1, avg(medie) medie
from facultati_ast join universitati_ast using(id_univ) 
--join specializari_ast using(id_spec)
join candidati_spec_ast using(id_spec)
join candidati_ast using(id_candidat)
join cereri_ast using(id_cereri)
group by id_univ)
select nume_facultate, nume_univ, medie
from info
where medie>(select medie
from info2
where nume_univ=nume1);



--Sa se afiseze media notelor de aplicare pe specializari (specializarile cu id-ul 0 si 3), 
--pentru specializarile incepand cu id-ul 2 (specializarea cu id-ul 3)
select avg(medie), nume_spec, id_spec
from specializari_ast join candidati_spec_ast using(id_spec)
join  candidati_ast using(id_candidat) join cereri_ast using(id_candidat)
group by id_spec, nume_spec
having id_spec>=2;


--sa se afiseze toti candidatii Universitatii din bucuresti, ordonati dupa nume
select nume, prenume, id_candidat
from universitati_ast join facultati_ast using(id_univ) join specializari_ast using(id_facultate)
join candidati_spec_ast using(id_spec) join candidati_ast using(id_candidat)
where lower(nume_univ) like '%universitatea din bucuresti%'
order by 1;

--sa se afiseze numarul de cereri de aplicare cu nota de aplicare mai mare decat media totala a notelor de aplicare la universitatea data
with info as
(select id_univ, avg(medie) medie1
from universitati_ast join facultati_ast using(id_univ) join specializari_ast using(id_facultate)
join candidati_spec_ast using(id_spec) join candidati_ast using(id_candidat) join cereri_ast using(id_candidat)
group by id_univ)
select count(distinct(id_cerere)) nr_cereri
from cereri_ast join candidati_ast using(id_candidat) join candidati_spec_ast using(id_candidat) join specializari_ast using(id_spec) join facultati_ast using(id_facultate) join universitati_ast using(id_univ) join info using(id_univ)
where medie>medie1;


---sa se afisze nr de luni dintre inceputul anului studentesc (1 oct) si data cererii pentru toate cererile
select id_cerere, round(months_between(to_date('01-10-2020', 'dd-mm-yyyy'), data_cerere),3) luni_ramase
from cereri_ast;

--sa se afiseze specializarile fara candidati
(select  id_spec, id_candidat from
specializari_ast right join candidati_spec_ast using(id_spec) right join candidati_ast using(id_candidat))
minus
(select id_spec, id_candidat from
specializari_ast join candidati_spec_ast using(id_spec) join candidati_ast using(id_candidat));


--sa se afiseza universitatile care au introdusa in baza de date cel putin o facultate
select u.id_univ, u.nume_univ
from universitati_ast u
where exists(select 'x'
             from facultati_ast 
             where id_univ = u.id_univ);
            
                   
--candidatii cu primele 3 note de aplicare cele mai mari (obs:Un candidat poate avea mai multe cereri, 
--ca rezultat mai multe note, in acest caz, avem un candidat ce ocupa 2 locuri in clasamentul celor prime 3 note)
  select distinct id_candidat, nume, prenume
  from candidati_ast join cereri_ast using(id_candidat)
  where medie in(select medie
                 from
                      (select nvl(medie,0)
                      from candidati_ast join cereri_ast using(id_candidat)
                      order by medie desc)
                 where rownum<4);

--sa se afiseze candidatii + detaliile examenelor lor daca nota pentru acel examen este >=5, altfel null
select nume, prenume, examene_ast.tip, nume_materie,
case 
when nota>=5 then nota
else null
end "nota"
from candidati_ast join examene_ast using(id_candidat);
