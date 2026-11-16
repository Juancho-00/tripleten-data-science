-- Paso 3 · Ejercicio 4
-- Identificadores de los barrios Loop y O'Hare en la tabla neighborhoods.
-- La comilla simple de O'Hare se escapa duplicándola ('O''Hare').

SELECT
    neighborhood_id,
    name
FROM
    neighborhoods
WHERE
    name = 'O''Hare'
    OR name = 'Loop';
