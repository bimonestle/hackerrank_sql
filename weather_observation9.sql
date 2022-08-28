-- Query the list of CITY names from STATION
-- that do not start with vowels.
-- Your result cannot contain duplicates.

-- SELECT
--     DISTINCT CITY
-- FROM STATION
-- WHERE
--     CITY NOT LIKE '%a' AND
--     CITY NOT LIKE '%i' AND
--     CITY NOT LIKE '%u' AND
--     CITY NOT LIKE '%e' AND
--     CITY NOT LIKE '%o';

SELECT
    DISTINCT CITY
FROM STATION
WHERE
    CITY NOT RLIKE '^[aiueo]';