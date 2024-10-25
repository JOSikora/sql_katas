-- SQLite
--Ile wynosiła średnia z comiesięcznych liczb studentów 
--dla każdego z semestrów, dla których w bazie istnieją dane.

--ENG: What was the average number of students for each term from the database?

select CYKLE.KOD as semestr, round(avg(DANE.ILE), 2) as srednia from DANE
join CYKLE on (DANE.DATA >= CYKLE.DATA_OD) and (DANE.DATA <= CYKLE.DATA_ZAKON)  
where semestr regexp '^[0-9]{4}[ZL]$'
group by semestr
order by substr(semestr, 1, 4), substr(semestr, -1, 1) desc
