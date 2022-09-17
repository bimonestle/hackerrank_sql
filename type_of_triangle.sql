-- Write a query identifying the type of each record
-- in the TRIANGLES table using its three side lengths.
-- Output one of the following statements for each record in the table:
-- Equilateral: It's a triangle with 3 sides of equal length.
-- Isosceles: It's a triangle with 2 sides of equal length.
-- Scalene: It's a triangle with 3 sides of differing lengths.
-- Not A Triangle: The given values of A, B, and C don't form a triangle
-- because the combined value of A & B is not larger than C.

SELECT
    CASE
        -- Check if given input is a triangle
        WHEN (A + B) <= C OR (A + C) <= B OR (B + C) <= A THEN 'Not A Triangle'

        -- If given in input is a triangle, check what type of triangle
        WHEN A = B AND B = C THEN 'Equilateral'
        WHEN A = B OR A = C OR B = C THEN 'Isosceles'
        WHEN A <> B AND B <> C THEN 'Scalene'
END AS 'Triangle_Type'
FROM
    TRIANGLES;