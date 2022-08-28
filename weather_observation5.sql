-- Query the two cities in STATION with the shortest and longest CITY names,
-- as well as their respective lengths (i.e.: number of characters in the name).
-- If there is more than one smallest or largest city,
-- choose the one that comes first when ordered alphabetically.

-- RESULT WITH 2 TABLES
-- SELECT
--     CITY,
--     LENGTH(CITY) AS City_Length
-- FROM STATION
-- ORDER BY
--     City_Length ASC,
--     CITY ASC
-- LIMIT 1;

-- SELECT
--     CITY,
--     LENGTH(CITY) AS City_Length
-- FROM STATION
-- ORDER BY
--     City_Length DESC,
--     CITY ASC
-- LIMIT 1;

-- RESULT WITH 1 TABLE
SELECT * FROM(
    SELECT
        CITY,
        LENGTH(CITY) AS City_length
    FROM STATION
    ORDER BY
        City_Length ASC,
        CITY ASC
    LIMIT 1
) AS City_Min

UNION ALL

SELECT * FROM(
    SELECT
        CITY,
        LENGTH(CITY) AS City_length
    FROM STATION
    ORDER BY
        City_Length DESC,
        CITY ASC
    LIMIT 1
) AS City_Max