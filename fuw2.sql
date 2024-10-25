-- SQLite
-- Dla każdego objętego danymi w bazie roku akademickiego,
--w którym miesiącu (lub miesiącach) następował
--największy ubytek liczby studentów, i ile on wynosił? 
--W zbiorze wynikowym zapytania występują: rok, miesiąc
--(1-12), ubytek (liczba całkowita dodatnia).

select CYKLE.KOD as rok_akademicki, strftime('%Y', dane2.DATA) as rok, strftime('%m', dane2.DATA) as miesiac, - min(dane2.ILE - dane1.ILE) as ubytek
from CYKLE, DANE as dane1, DANE as dane2
on (dane2.ROWID = dane1.ROWID+1) and CYKLE.KOD regexp '^[0-9]{4}$' and (dane1.DATA >= CYKLE.DATA_OD) and (dane2.DATA <= CYKLE.DATA_ZAKON)
where (dane2.ILE - dane1.ILE < 0)
group by CYKLE.KOD
