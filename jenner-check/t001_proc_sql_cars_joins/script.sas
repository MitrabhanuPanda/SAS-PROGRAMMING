/* PROCEDURAL SQL IN SAS: (adapted from SAS_PROCEDURAL _SQL.sas) */
/* Part 1-2: queries on SASHELP.CARS run unmodified. */

/* Select specific variables */
PROC SQL;
SELECT MODEL, TYPE
FROM SASHELP.CARS;
QUIT;

/* Filter the data */
PROC SQL;
SELECT MODEL, TYPE, ORIGIN, MSRP
FROM SASHELP.CARS
WHERE TYPE= "Sedan" AND ORIGIN="Asia" ;
QUIT;

/* Summarize by TYPE, ORIGIN */
PROC SQL;
SELECT  TYPE,
        ORIGIN,
        SUM(MSRP) AS TOTAL_MSRP
        FROM SASHELP.CARS
        GROUP BY TYPE,ORIGIN;
QUIT;

/* Summarize by TYPE with HAVING */
PROC SQL;
SELECT  TYPE,
        COUNT(TYPE) AS TOTAL_UNITS,
        SUM(MSRP) AS TOTAL_MSRP
        FROM SASHELP.CARS
        WHERE MSRP>=60000
        GROUP BY TYPE
        HAVING TOTAL_UNITS<=50;
QUIT;

/* ORDER BY */
PROC SQL;
SELECT  TYPE,
        COUNT(TYPE) AS TOTAL_UNITS,
        SUM(MSRP) AS TOTAL_MSRP
        FROM SASHELP.CARS
        GROUP BY TYPE
        ORDER BY TYPE DESC;
QUIT;

/* CASE WHEN — the WORK.SCAS table from the original repo is recreated here as a
   small sample so the CASE expression runs exactly as written. */
DATA WORK.SCAS;
INPUT CUSTOMER_ID Company $ GENDER $ Age;
DATALINES;
1 Acme M 25
2 Beta F 34
3 Gamma F 42
4 Delta M 61
5 Zeta M 29
6 Theta F 55
;
RUN;

PROC SQL;
SELECT
        CUSTOMER_ID,
        Company,
        GENDER,
        Age,
        CASE
            WHEN AGE>=60 THEN 'OLD_AGE'
            WHEN AGE>=40 THEN 'MID_AGE'
            WHEN AGE>=30 THEN 'MID_YOUNG_AGE'
            ELSE 'YOUNG_AGE'
        END AS AGE_BUCKET
        FROM WORK.SCAS;
QUIT;

/* JOINS — WORK.PERS_INFO / WORK.PHY_INFO recreated as small samples so the
   LEFT/RIGHT/INNER/FULL joins run exactly as written. */
DATA WORK.PERS_INFO;
INPUT NAME $ SEX $ AGE;
DATALINES;
Alfred M 14
Alice F 13
Barbara F 13
Carol F 14
Henry M 14
;
RUN;

DATA WORK.PHY_INFO;
INPUT STD_NAME $ HEIGHT WEIGHT;
DATALINES;
Alfred 69 112
Alice 56 84
Barbara 65 98
James 57 83
Jane 59 84
;
RUN;

/* LEFT JOIN */
PROC SQL;
        SELECT
        A.NAME,
        A.SEX,
        A.AGE,
        B.HEIGHT,
        B.WEIGHT
        FROM WORK.PERS_INFO AS A
        LEFT JOIN
        WORK.PHY_INFO AS B
        ON A.NAME = B.STD_NAME;
QUIT;

/* INNER JOIN */
PROC SQL;
        SELECT
        A.NAME,
        A.SEX,
        A.AGE,
        B.HEIGHT,
        B.WEIGHT
        FROM WORK.PERS_INFO AS A
        INNER JOIN
        WORK.PHY_INFO AS B
        ON A.NAME = B.STD_NAME;
QUIT;

/* FULL JOIN */
PROC SQL;
        SELECT
        A.NAME,
        A.SEX,
        A.AGE,
        B.HEIGHT,
        B.WEIGHT
        FROM WORK.PERS_INFO AS A
        FULL JOIN
        WORK.PHY_INFO AS B
        ON A.NAME = B.STD_NAME;
QUIT;
