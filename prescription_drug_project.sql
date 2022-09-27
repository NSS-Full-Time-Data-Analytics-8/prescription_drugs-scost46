--question 1A
SELECT npi, MAX(total_claim_count) AS largest_claim
FROM prescription
GROUP BY npi
ORDER BY largest_claim DESC;

--question 1B
SELECT *
FROM prescription INNER JOIN prescriber USING (npi);

