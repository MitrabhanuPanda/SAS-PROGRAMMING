/*   CREATE A TABLE */
 
 data mylib.first_data;
 input employee $6. salary;
 datalines;
 sammer 1232
 rohan 2343
 raka 5634
 raj    2343
 james 2536
 ;
 run;
  
 
/*  HOW TO IMPORT EXCEL FILE IN SAS */
 
 PROC IMPORT DATAFILE="/home/u63730693/my_sas/D_1.xlsx"
 				out=catt
 				dbms=xlsx replace;
 				sheet="Sheet1";
 run;
 
 

/*  HOW TO READ FROM LIBRARY DATSET */

 data test;
 set mylib.first_data;
 run;



 
 PROC IMPORT DATAFILE = "/home/u63730693/my_sas/D_1.xlsx"
 				OUT=ORD_DTA
 				DBMS=xlsx replace;
 				sheet= "Sheet2";
 				
 run;
 
 
/*  HOW TO CREATE A VARIABLE */
 
 data test;
 set work.ord_dta;
 
 price = qant*5;
 run;
 
 
 
/*  HOW TO RENAME A VARIABLE */

DATA TEST;
SET WORK.ORD_DTA;
RENAME QANT=QTY;
RUN;

/* HOW TO DROP A VARIABLE */

DATA TEXT;
SET WORK.ORD_DTA;
DROP PRODUCT_ID;
RUN;


/*  ------------------------------------------------------------------------------------------- */


/* HOW TO FILTER DATA: */


DATA TEST;
SET WORK.CATT;
WHERE SALARY>5000;
RUN;

 

 
 PROC IMPORT DATAFILE = "/home/u63730693/my_sas/D_1.xlsx"
 				OUT=CUST
 				DBMS=xlsx replace;
 				sheet= "Sheet3";

/* IF THEN ELSE CONDITION : */


/* A. IF THEN: */

DATA TEST;
SET WORK.CUST;

IF SALARY < 2500 THEN CATEGORY="BELOW AVG"; 
ELSE CATEGORY="ABOVE AVG";


RUN;

/* B. IF THEN ELSE IF THEN ELSE */

DATA TEST;
SET WORK.CUST;

IF SALARY < 2500 THEN CATEG="BELOW AVG";
ELSE IF SALARY >= 2500 AND SALARY < 5000 THEN CATEG="PREMIUM";
ELSE CATEG="ELITE";

RUN;


/* DATA SET OPTIONS: */

/* KEEPS: */


/* BELOW CODE GIVE ALL THE OBSERVATIONS WITH ALL THE VARIABLES. */

DATA KEEPS;
SET SASHELP.CARS;
RUN;

/* IT ONLY GIVE ALL THE OBSERVATIONS WITH SPECIFIC VARIABLES THAT YOU WOULD LIKE TO GET. */

DATA KEEPS(KEEP=MODEL TYPE MSRP);
SET SASHELP.CARS;
RUN;

/* OTHER WAY TO DO THIS. */

DATA KEEPS;
SET SASHELP.CARS (KEEP=MODEL TYPE MSRP);
RUN;


/* DROP: */

/* DROP THE VARIABLES THAT YOU HAVE GIVEN. */

DATA DROPS(DROP= MSRP TYPE MODEL);
SET SASHELP.CARS;
RUN;


/* OUTPUT: */

/* IF THE MSRP< 19000 THEN CREATE PRICE TABLE WITH SPECIFIC VARIABLES  */
/* ELSE CREATE ANOTHER TABLE FEATURS WITHOUT HAVING THE VARIABLE IN PRICE TABLE. */

DATA PRICE(KEEP=MODEL TYPE MSRP) FEATURES(DROP= MODEL TYPE MSRP);
SET SASHELP.CARS;

IF MSRP<19000 THEN OUTPUT PRICE;
ELSE OUTPUT FEATURES;

RUN;


/* _N_: */

/* IT GIVE THE OBSERVATIONS WITH THE HELP OF LINE NUMBER OF THE OBSERVATION. */

/* HERE WE SPECIFY WHICH LINE NUMBER TO WHICH LINE NUMBER OBSERVATIONS WE WOULD LIKE TO GET. */

DATA LINENUMBER;
SET PRICE;

IF _N_ >=10 AND _N_<20;
RUN;


/* OBS: */

/* IT STANDS FOR OBSERVATION. */

/* HERE IT GIVE FIRST OBSERVATION TO 15TH OBSERAVTIONS. */

DATA OBSS;
SET PRICE(OBS=15);

RUN;


/* FIRSTOBS: */

/* IT STANDS FOR FIRST OBSERVATIONS. */

/* HERE IT GIVE OBSERVATIONS FROM A GIVEN RANGE. */

/* NUMBER OF OBSERAVTION YOU WANT,  STARTING OBSERAVATION.--- SYNTAX */

DATA FOBS;
SET PRICE(OBS=15 FIRSTOBS=7);

RUN;

/* ---------------------------------------------------------------------------------------- */

/* PROC SORT: */

/* IT ORDERS THE OBSERVATIONS IN DATA/TABLE IN  */
/* INCREASING/DECREASING ORDER BY  */
/* ONE OR MORE CHARACTER/NUMERIC VARIABLES/COLUMNS. */

PROC SORT DATA=WORK.CUST;
BY COUNTRY;
RUN;

PROC SORT DATA=WORK.CUST;
BY COUNTRY;
BY SALARY;
RUN;

/* OTHER WAY */

PROC SORT DATA=WORK.CUST;
BY COUNTRY SALARY;

RUN;


/* OPTIONS: */

/* OUT: */

PROC SORT DATA=WORK.CUST OUT=SORTED;
BY COUNTRY SALARY;

RUN;

/* DESCENDING: */

PROC SORT DATA=WORK.CUST OUT=SORTED;
BY DESCENDING COUNTRY SALARY;

RUN;

/* NODUPKEY: */

/* REMOVE THE DUPLICATES BASICS OF ONE COLUMN. */

PROC SORT DATA=WORK.CUST NODUPKEY OUT=SORTED;
BY  COUNTRY;

RUN;

/* NODUP: */

/* DELETE OBSERVATIONS WITH COMMON VALUES IN ALL THE VARIABLES. */

PROC SORT DATA=WORK.CUST NODUP OUT=SORTED;
BY  COUNTRY;

RUN;

/* OTHER CRITERIA: */

PROC SORT DATA=WORK.CUST NODUP OUT=SORTED ;
BY  _ALL_;

RUN;


/* DUPOUT: */

PROC SORT DATA=WORK.CUST NODUP OUT=SORTED DUPOUT=DUP ;
BY  _ALL_;

RUN;


/* PROC FREQUENCY: */

/* COUNT THE FREQUENCY. */

PROC FREQ DATA=WORK.CUST;
TABLES COUNTRY;
RUN;


/* IF YOU WANT FREQUNCY VARIABLE ONLY. */

PROC FREQ DATA=WORK.CUST;
TABLES COUNTRY/NOPERCENT NOCUM;
RUN;


 PROC IMPORT DATAFILE = "/home/u63730693/my_sas/D_1.xlsx"
 				OUT=CUSTt
 				DBMS=xlsx replace;
 				sheet= "Sheet3";


/* TWO DIMENSIONAL FREQUNCY REPORT: */

PROC FREQ DATA=WORK.CUSTt;
TABLES CITY * COUNTRY/NOPERCENT NOROW NOCOL;
RUN;


/* CONDITIONAL FREQUENCY: */

PROC FREQ DATA=WORK.CUSTt;
TABLES CITY * COUNTRY/NOPERCENT NOROW NOCOL;
WHERE SALARY >=2000;
RUN;


/* PROC TRANSPOSE: */

/* IT TRANSFORMATION FROM OBSERVATIONS TO VARIABLES AND VICE VERSA. */

/* THE DATASET SHOULD BE UNIQUE. 
SO FIRST REMOVE THE DUPLICATE DATA. */

/* FIRST SORT THE TABLE: */

PROC SORT DATA=WORK.CUSTT NODUPKEY OUT=TRANSP;

BY CITY COUNTRY;


RUN;

/* THEN DO THIS BELOW STEP: */

PROC TRANSPOSE DATA=TRANSP  PREFIX=TRANS_ OUT=TARNS(DROP=_:);
BY CITY;
ID COUNTRY;
VAR SALARY;
RUN;









