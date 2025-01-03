Create view "THD"."THD Items With More Than 1 Vendor Cost" as
SELECT "PART#", count(DISTINCT "VENDOR COST") as "VENDOR COSTS"
FROM "THD"."THDPricingError"
GROUP BY "PART#"
HAVING count(DISTINCT "VENDOR COST") > 1;