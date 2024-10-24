-- SQLite
--1. O ile osób zmieniła się liczba studentów w każdym miesiącu? 
--Wynikiem zapytania muszą być 3 kolumny:
--data_od, data_do, i zmiana.


select dane1.DATA as data_od, dane2.DATA as data_do, (dane2.ILE - dane1.ILE) as zmiana
from DANE as dane2, DANE as dane1 on (dane2.ROWID = dane1.ROWID+1);
