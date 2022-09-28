--question 1A
SELECT npi, MAX(total_claim_count) AS largest_claim
FROM prescription
GROUP BY npi
ORDER BY largest_claim DESC;

--question 1B
--SELECT MAX(total_claim_count) AS largest_claim, nppes_provider_last_org_name, nppes_provider_first_name, specialty_description
--FROM prescription INNER JOIN prescriber USING (npi)
--GROUP BY nppes_provider_last_org_name;

--question 2
SELECT DISTINCT (specialty_description) AS specialty, MAX(total_claim_count) AS claim_count
FROM prescription INNER JOIN prescriber 
USING (npi)
GROUP BY specialty
ORDER BY claim_count DESC;

--question 2b
SELECT DISTINCT (specialty_description) AS specialty, MAX(total_claim_count) AS claim_count
FROM drug INNER JOIN prescription 
USING (drug_name)
INNER JOIN prescriber 
USING (npi) 
WHERE opioid_drug_flag = 'Y'
GROUP BY specialty
ORDER BY claim_count DESC;

--question 3 
SELECT generic_name AS g_name, MAX(total_drug_cost) AS cost
FROM drug INNER JOIN prescription
USING (drug_name)
GROUP BY g_name
ORDER BY cost DESC;

--question 3b




