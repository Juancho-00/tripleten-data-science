-- Paso 2 · Ejercicio 3
-- Viajes del 1 al 7 de noviembre de 2017 de las dos empresas más populares
-- (Flash Cab y Taxi Affiliation Services); el resto se agrupa como "Other".

SELECT
    CASE
        WHEN c.company_name IN ('Flash Cab', 'Taxi Affiliation Services') THEN c.company_name
        ELSE 'Other'
    END AS company,
    COUNT(t.trip_id) AS trips_amount
FROM
    trips t
    INNER JOIN cabs c ON c.cab_id = t.cab_id
WHERE
    CAST(t.start_ts AS DATE) BETWEEN '2017-11-01' AND '2017-11-07'
GROUP BY
    company
ORDER BY
    trips_amount DESC;
