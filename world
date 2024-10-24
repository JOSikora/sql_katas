-- SQLite
--Jakie jest największe co do liczby ludności miasto w państwach, 
--w których językiem oficjalnym jest arabski, 
--i w jakim państwie ono się znajduje?

-- ENG: What is the most populated city in countries 
-- with Arabic as an official language and 
--in which country is this city located?

SELECT COUNTRY.NAME, CITY.NAME, CITY.POPULATION FROM COUNTRY
JOIN CITY ON COUNTRY.CODE = CITY.COUNTRY_CODE
JOIN COUNTRY_LANGUAGE ON CITY.COUNTRY_CODE = COUNTRY_LANGUAGE.COUNTRY_CODE
WHERE LANGUAGE= 'Arabic' AND IS_OFFICIAL = 'T'
ORDER BY CITY.POPULATION DESC
LIMIT 1;

-- ANSWER: Cairo in Egypt
