-- Paso 2 · Ejercicio 1
-- Cantidad de viajes en taxi por empresa entre el 15 y el 16 de noviembre de 2017,
-- ordenada de mayor a menor.

SELECT
    c.company_name,
    COUNT(t.trip_id) AS trips_amount
FROM
    trips t
    INNER JOIN cabs c ON t.cab_id = c.cab_id
WHERE
    CAST(t.start_ts AS DATE) BETWEEN '2017-11-15' AND '2017-11-16'
GROUP BY
    c.company_name
ORDER BY
    trips_amount DESC;
