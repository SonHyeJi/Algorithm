-- 코드를 입력하세요
SELECT a.APNT_NO, p.PT_NAME, p.PT_NO, a.MCDP_CD, d.DR_NAME, a.APNT_YMD
FROM APPOINTMENT a
JOIN DOCTOR d
ON a.MDDR_ID = d.DR_ID
JOIN PATIENT p
ON p.PT_NO = a.PT_NO
WHERE DATE_FORMAT(a.APNT_YMD,'%Y-%m-%d') LIKE '2022-04-13'
AND a.APNT_CNCL_YN LIKE 'N' AND d.MCDP_CD LIKE 'CS'
ORDER BY 6
