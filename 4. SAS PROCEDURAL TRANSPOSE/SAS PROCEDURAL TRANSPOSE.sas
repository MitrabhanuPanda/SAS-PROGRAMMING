/* PROCEDURAL TRANSPOSE:  */

/* IT DOES THE TRANSFORMATION FROM OBSERVATIONS TO VARIABLES AND VICE VERSA. */

proc import datafile='/home/u63730693/my_sas/TRANSPOSE.xlsx'
			out=TRAN_2
			dbms=xlsx replace;
			sheet='T_2';
run;


/* THE DATASET SHOULD BE UNIQUE */



/* ROW TO COLUMN TRANSPOSE: */


/* SCENARIO-1: */

/* STEP-1: */
/* SORT THE DATASET */
PROC SORT DATA=WORK.tran_1 OUT=UNI_SORT;
BY CITY YEAR;
RUN;


/* STEP-2: */
/* DO THE TRANSPOSE */
PROC TRANSPOSE DATA=WORK.UNI_SORT OUT=TARNSP_1(DROP=_:);
BY CITY;
ID YEAR;
VAR AMOUNT;
RUN;




/* SCENARIO-2: */
/* COMBINATION OF ROW TO COMBINATION OF COLUMN TRANSPOSE: */
PROC TRANSPOSE DATA=WORK.UNI_SORT OUT=TARNSP_1(DROP=_:);
BY CITY;
ID YEAR COUNTRY;
VAR AMOUNT;
RUN;




/* COLUMN TO ROW TRANSPOSE: */
PROC TRANSPOSE DATA=WORK.TARNSP_1 OUT=RC_TRANS(RENAME=(_NAME_=YEAR COL1=AMOUNT) WHERE=(NOT MISSING(AMOUNT)));
BY CITY;
RUN;


