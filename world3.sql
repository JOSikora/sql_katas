-- SQLite
--Czy są jakieś języki (a jeżeli, to jakie), 
--które występują w co najmniej 5 państwach, 
--ale w żadnym z nich nie mają statusu oficjalnego?


SELECT LANGUAGE, COUNT(COUNTRY_LANGUAGE.IS_OFFICIAL) AS licznik FROM COUNTRY_LANGUAGE
WHERE IS_OFFICIAL = 'F'
GROUP BY LANGUAGE HAVING licznik >= 5 ORDER BY licznik DESC;
