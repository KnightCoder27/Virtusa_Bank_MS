--HIGHEST AMOUNT DEBITED FROM THE BANK IN EACH YEAR

SELECT EXTRACT(YEAR FROM "DATE") AS YEAR,
MAX(CAST(REGEXP_REPLACE(WITHDRAWAL_AMT, '[^0-9.]', '') AS NUMBER)) AS HIGHEST_AMOUNT_DEBITED
FROM WITHDRAW_Q
WHERE WITHDRAWAL_AMT IS NOT NULL
GROUP BY EXTRACT(YEAR FROM "DATE");

--LOWEST AMOUNT DEBITED FROM THE BANK IN EACH YEAR

SELECT EXTRACT(YEAR FROM "DATE") AS YEAR,
MIN(CAST(REGEXP_REPLACE(WITHDRAWAL_AMT, '[^0-9.]', '') AS NUMBER)) AS LOWEST_AMOUNT_DEBITED
FROM WITHDRAW_Q
WHERE WITHDRAWAL_AMT IS NOT NULL
GROUP BY EXTRACT(YEAR FROM "DATE");