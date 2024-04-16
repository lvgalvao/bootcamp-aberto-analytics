{{ config(materialized='view') }}

SELECT "Cargo", COUNT(*) AS "Número de Respondentes"
FROM {{ ref('Pesquisa') }}
GROUP BY "Cargo"
ORDER BY "Número de Respondentes" DESC;