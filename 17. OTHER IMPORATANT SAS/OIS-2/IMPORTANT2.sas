/* 1. IFC: */
/* IFC(COLUMN_NAME=VALUE_NAME,TRUE_VALUE,FALSE_VALE,MISSING_VALUE) */
/* IFC USE FOR CHARACTER VALUE. */
/* IFN USE FOR NUMERIC VALUE. */

DATA SAMPLE;
SET WORK.cond;
S_GEN=IFC(GENDER="FEMALE","F","M","NA");
N_GEN=IFN(GENDER="FEMALE",0,1);
RUN;




/* 2. HOW TO COPY TABLE FROM ONE LIBRARY TO OTHER LIBRARY: */

/* a. IF YOU WANT TO COPY ONLY ONE TABLE: */
PROC COPY IN=LA OUT=MD;
SELECT B9;
RUN;



/* b. IF YOU WANT TO COPY MORE THAN ONE TABLES: */
PROC COPY IN=LA OUT=MD;
SELECT B9 OU KAG;
RUN;



/* c. IF YOU WANT TO COPY ALL TABLES: */
PROC COPY IN=LA OUT=MD;
RUN;





/* 3. CONVERT TO DATE FORMAT: */

/* 3.1. LONG WAY;--> MDY: */
DATA TEST;
SET WORK.d_data;
MONTH=INPUT(SUBSTR(COMPRESS(PUT(DATE,BETS.)),3,2),Z2.);
DAY=INPUT(SUBSTR(COMPRESS(PUT(DATE,BETS.)),1,2),Z2.);
YEAR=INPUT(SUBSTR(COMPRESS(PUT(DATE,BETS.)),5,4),Z4.);

FORMAT NEW_DATE DATE9.;
NEW_DATE=MDY(MONTH,DAY,YEAR);
RUN;




/* 3.2. SHORT WAY:-->FORMAT: */
DATA TEST;
SET WORK.d_data;
MONTH=INPUT(SUBSTR(COMPRESS(PUT(DATE,BETS.)),3,2),Z2.);
DAY=INPUT(SUBSTR(COMPRESS(PUT(DATE,BETS.)),1,2),Z2.);
YEAR=INPUT(SUBSTR(COMPRESS(PUT(DATE,BETS.)),5,4),Z4.);

FORMAT NEW_DATE_V1 DATE9.;
NEW_DATE_V1=INPUT(PUT(DATE,8.),DDMMYY8.);
RUN;




/* 4. EXPORT A FILE: */

PROC EXPORT DATA=SASHELP.CARS
			OUTFILE="/home/u63730693/my_sas/CAR.xlsx"
			DBMS=xlsx REPLACE;
RUN;




