-- SQLite
-- Jak się nazywa państwo 
--o największej gęstości zaludnienia na każdym z kontynentów?

-- ENG: What is the name of a country with 
--the biggest population density in every continent?

SELECT COUNTRY.CONTINENT, COUNTRY.NAME, MAX(COUNTRY.POPULATION/COUNTRY.SURFACE_AREA) AS density FROM COUNTRY
GROUP BY COUNTRY.CONTINENT;

-- ANSWER:
--Africa - MAuritius
--Antarctica - Antarctica
--Asia - Macao
--Europe - Monaco
--North America - Bermuda
--Ocenia - Nauru
--South America - Ecuador
