Create view "THD"."THD Items With More Than 1 Cost" as
SELECT "PART#", count(DISTINCT "HOME DEPOT COST") as "COSTS"
FROM "THD"."THDPricingError"
GROUP BY "PART#"
HAVING count(DISTINCT "HOME DEPOT COST") > 1;
