-- Paso 3 · Ejercicio 5
-- Clasificación de cada hora de weather_records según el clima:
-- "Bad" si la descripción contiene "rain" o "storm"; "Good" en cualquier otro caso.

SELECT
    ts,
    CASE
        WHEN description LIKE '%rain%' OR description LIKE '%storm%' THEN 'Bad'
        ELSE 'Good'
    END AS weather_conditions
FROM
    weather_records;
