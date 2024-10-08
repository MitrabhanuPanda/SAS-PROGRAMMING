/* DATE IN SAS:---> */

/* PART-1:---> */

/* a. TODAY FUNCTION: */
/* IT WILL GIVE TODAY DAY IN NUMBER FORMAT. */

DATA DATES;
CUR_DATE=TODAY();
RUN;

/* WE FORMAT IN TO DDMMYY */
DATA DATES;
FORMAT CUR_DATE DATE9.;
CUR_DATE=TODAY();
RUN;

/* WE MANIPULATE THE DATE */
DATA DATES;
FORMAT CUR_DATE DATE9.;
CUR_DATE=TODAY()-1;
RUN;


/* b. DAY FUNCTION: */
/* IT WILL GIVE THE DAY IN NUMERIC FORMAT IN THE RANGE OF 1-31. */

/* WE MANIPULATE THE DATE */

DATA DATES;
FORMAT CUR_DATE DATE9.;
CUR_DATE=TODAY()-1;
DAY=DAY(CUR_DATE);
RUN;


/* c. WEEKDAY FUNCTION: */
/* IT WILL GIVE THE NUMBER OF DAY IN THIS WEEK IN THE RANGE OF 1-7. */
/* 1--> SUNDAY */
/* 7--> SATURDAY */

DATA DATES;
FORMAT CUR_DATE DATE9.;
CUR_DATE=TODAY()-1;
WEEKDAY=WEEKDAY(CUR_DATE);
RUN;


/* d. MONTH FUNCTION: */
/* IT WILL GIVE THE MONTH NUMBER IN THE RANGE OF 1-12. */

DATA DATES;
FORMAT CUR_DATE DATE9.;
CUR_DATE=TODAY()-1;
MONTH_NUM=MONTH(CUR_DATE);
RUN;


/* e. QTR FUNCTION: */
/* IT WILL GIVE QUTER OF THE MONTH IN NUMBER FORMAT IN THE RANGE OF 1-4 */

DATA DATES;
FORMAT CUR_DATE DATE9.;
CUR_DATE=TODAY()-1;
QUATER=QTR(CUR_DATE);
RUN;

/* f. YEAR FUNCTION: */
/* IT WILL GIVE THE YEAR IN 4 DIGITS. */
/* EG:--> 2021 */

DATA DATES;
FORMAT CUR_DATE DATE9.;
CUR_DATE=TODAY()-1;
YEAR=YEAR(CUR_DATE);
RUN;


/* g. MDY FUNCTION: */
/* IT WILL CREATE A DATE VARIABLE. */
/* M--> MONTH */
/* D--> DAY */
/* Y--> YEAR */
/* YOU WILL HAVE TO PUT THE VALUE THE SEQUENCE. */
/* IF ALL THE VALUE ARE PRESENT THEN AFTER YOU WILL CREATE A DATE VARIABLE. */


DATA DATES1;
FORMAT NEXT_DATE DATE9.;
NEXT_DATE=MDY(04,04,2021);
RUN;





/* PART-2:---> */

/* INFORMATS: */
/* SPECIFICATION FOR SAS, HOW TO READ THE DATA. */

/* FORMATS: */
/* SPECIFICATION FOR SAS, HOW TO SHOW THE DATA. */


/* IT WILL GIVE A MISSING VALUE */

DATA TEST;
INPUT DATE;
CARDS;
01/01/2000
;
RUN;

/* EXPLANATION: */

/* IN THIS, 01/01/2000 IS A RAW DATA AND  */
/*  IT IS A COMBINATION OF NUMBER AND SPECIAL CHARACTER AND EACH PART OF NUMBER LENGTH ARE NOT SAME. */
/* SO THAT SAS CAN NOT READ THE DATA.SO MISSING VALUES ARE COME.  */


/* SOLUTIONS: */

/* STEP-1: */

/* IT WILL GIVE COUNT OF NUMBER OF DATE FROM 01 JAN 1960. */

DATA TEST;
INPUT DATE DDMMYY10.;
CARDS;
01/01/2000
;
RUN;

/* STEP-2: */

/* USE FORMAT: */

DATA TEST;
INPUT DATE DDMMYY10.;
FORMAT DATE DDMMYY10.;
CARDS;
01/01/2000
;
RUN;

/* NOTE:--> */

/* INFORMAT SHOULD BE SAME AS INPUT DATA. */
/* FORMAT DEPEND ON THE USER HOW TO FORMAT THE COLUMN. */





/* PART-3:--> */

/* INTCK FUNCTION: */
/* IT CALCULATES THE DIFFERENCE BETWEEN TWO DATES, TIMES OR DATETIMES. */
/* SYNTAX--> INTCK(INTERVAL, START-DATE, END-DATE, <METHOD>) */


DATA TEST1;
FORMAT ADM_DATE DISC_DATE APP_DATE CUR_DATE DATE9.;
ADM_DATE="10JAN2000"D;
DISC_DATE="30JAN2000"D;
APP_DATE="23JAN2020"D;
CUR_DATE = TODAY();
DAYS_HOSP=INTCK('DAY',ADM_DATE,DISC_DATE);
MNTH_BOOK=INTCK('MONTH',APP_DATE,CUR_DATE);
RUN;



/* PART-4:--> */

/* INTNX FUNCTION: */
/* IT INCREMENTS A DATE, OR DATETIME VALUE BY A GIVEN TIME INTERVAL, 
AND RETURNS A DATE, TIME, OR DATETIME VALUE. */
/* SYNTAX--> INTNX(INTERVAL, STRAT-FROM, INCREMENT, <ALIGNMENT>) */

DATA TEST2;
FORMAT FIRST_VISIT  SECOND_VISIT  SECOND_VISIT_MNTH  DATE9.;
FIRST_VISIT="10JAN2000"D;
SECOND_VISIT=INTNX('DAY',FIRST_VISIT,20);
SECOND_VISIT_MNTH=INTNX('MONTH',FIRST_VISIT,3);
RUN;












