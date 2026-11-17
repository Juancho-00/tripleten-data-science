-- Paso 2 · Ejercicio 2
-- Cantidad de viajes por empresa cuyo nombre contiene "Yellow" o "Blue",
-- entre el 1 y el 7 de noviembre de 2017.

SELECT
    c.company_name AS company_name,
    COUNT(t.trip_id) AS trips_amount
FROM
    trips t
    INNER JOIN cabs c ON t.cab_id = c.cab_id
WHERE
    CAST(t.start_ts AS DATE) BETWEEN '2017-11-01' AND '2017-11-07'
    -- Los paréntesis son necesarios: AND se evalúa antes que OR
    AND (c.company_name LIKE '%Yellow%' OR c.company_name LIKE '%Blue%')
GROUP BY
    c.company_name
ORDER BY
    trips_amount DESC;
