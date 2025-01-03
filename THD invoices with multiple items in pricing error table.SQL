CREATE VIEW "THD"."THD invoices with multiple items in pricing error table" AS

WITH ml AS (
    SELECT
        "INVOICE#",
        count("INVOICE#") AS "ITEMS"
    FROM "THD"."THDPricingError"
    GROUP BY "INVOICE#"
    HAVING (count("INVOICE#") > 1)
)
                            
SELECT "THDPricingError".*
FROM "THD"."THDPricingError"
JOIN ml ON "THDPricingError"."INVOICE#" = ml."INVOICE#"