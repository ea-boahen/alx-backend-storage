-- Search bands with style Glam rock
-- Durantion current

-- SELECT band_name, IFNULL(split, 2020) - IFNULL(formed, 0) AS lifespan 
-- FROM metal_bands 
-- WHERE style LIKE '%Glam rock%';

SELECT
    band_name,
    CASE
        WHEN split IS NOT NULL THEN 2022 - CAST(split AS UNSIGNED)
        WHEN formed IS NOT NULL THEN 2022 - CAST(formed AS UNSIGNED)
        ELSE NULL
    END AS lifespan
FROM metal_bands
WHERE style LIKE '%Glam rock%'
ORDER BY lifespan;


