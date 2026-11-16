-- Paso 3 · Ejercicio 6
-- Viajes del Loop (50) a O'Hare (63) que empezaron un sábado, con la condición
-- climática de la hora de inicio y su duración (resultado exportado como project_sql_result_07.csv).
-- La subconsulta reutiliza la clasificación Good/Bad del ejercicio 5. El INNER JOIN
-- descarta los viajes sin registro de clima a esa hora.

SELECT
    t.start_ts,
    ws.weather_conditions,
    t.duration_seconds
FROM
    trips t
    INNER JOIN (
        SELECT
            ts,
            CASE
                WHEN description LIKE '%rain%' OR description LIKE '%storm%' THEN 'Bad'
                ELSE 'Good'
            END AS weather_conditions
        FROM
            weather_records
    ) AS ws ON ws.ts = t.start_ts
WHERE
    t.pickup_location_id = 50
    AND t.dropoff_location_id = 63
    -- ISODOW: lunes = 1 ... domingo = 7, por lo que el sábado es 6
    AND EXTRACT(ISODOW FROM t.start_ts) = 6
ORDER BY
    t.trip_id;
