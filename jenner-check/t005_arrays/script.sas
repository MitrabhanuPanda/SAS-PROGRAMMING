/* ARRAYS IN SAS (adapted from SAS_ARRAY.sas) */
/* The WORK.sales_cus / WORK.mis_vall tables the original relied on are recreated
   here as small samples so each ARRAY technique runs exactly as written. */

/* Simple array declaration */
DATA TEST;
ARRAY X(10) D1-D10;
RUN;

/* 'OF' operator and MAX/MIN across an array */
DATA WORK.sales_cus;
INPUT CUST $ JAN FEB MAR APR MAY JUN JUL AUG SEP OCT NOV DEC;
DATALINES;
North 12 15 9 22 30 18 25 40 11 19 27 33
South 8 14 20 5 17 29 12 24 31 16 22 10
;
RUN;

DATA SAMPLE2;
SET WORK.sales_cus;
ARRAY Y(12) JAN FEB MAR APR MAY JUN JUL AUG SEP OCT NOV DEC;
MAX_UNIT_SOLD = MAX(OF Y(*));
MIN_UNIT_SOLD = MIN(OF Y(*));
RUN;
PROC PRINT DATA=SAMPLE2;
RUN;

/* _NUMERIC_ shorthand for the same */
DATA SAMPLE2B;
SET WORK.sales_cus;
ARRAY Y1(*)  _NUMERIC_ ;
MAX_UNIT_SOLD = MAX(OF Y1(*));
MIN_UNIT_SOLD = MIN(OF Y1(*));
RUN;
PROC PRINT DATA=SAMPLE2B;
RUN;

/* DO loop over an array to replace missing values with 0 */
DATA WORK.mis_vall;
INPUT ID a1 a2 a3 a4 a5 a6 a7 a8 a9 a10;
DATALINES;
1 3 . 5 . 7 . 9 . 11 .
2 . 2 . 4 . 6 . 8 . 10
;
RUN;

DATA SAMPLE3;
SET WORK.mis_vall;
ARRAY Z(10) a1-a10;
DO i = 1 TO 10;
	IF MISSING(Z(i)) THEN Z(i) = 0;
END;
RUN;
PROC PRINT DATA=SAMPLE3;
RUN;

/* DIM() with _NUMERIC_ */
DATA SAMPLE4;
SET WORK.mis_vall;
ARRAY Z1(*) _NUMERIC_;
DO j = 1 TO DIM(Z1);
	IF MISSING(Z1(j)) THEN Z1(j) = 0;
END;
RUN;
PROC PRINT DATA=SAMPLE4;
RUN;
