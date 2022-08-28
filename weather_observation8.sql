-- Query the list of CITY names from STATION
-- which have vowels (i.e., a, e, i, o, and u)
-- as both their first and last characters.
-- Your result cannot contain duplicates.

-- SELECT
--     DISTINCT CITY
-- FROM STATION
-- WHERE
--     (CITY LIKE 'a%' OR
--     CITY LIKE 'i%' OR
--     CITY LIKE 'u%' OR
--     CITY LIKE 'e%' OR
--     CITY LIKE 'o%')
--     AND
--     (CITY LIKE '%a' OR
--     CITY LIKE '%i' OR
--     CITY LIKE '%u' OR
--     CITY LIKE '%e' OR
--     CITY LIKE '%o')

SELECT
    DISTINCT CITY
FROM STATION
WHERE
    CITY RLIKE '[^aiueo]'
    OR
    CITY RLIKE '[aiueo$]';