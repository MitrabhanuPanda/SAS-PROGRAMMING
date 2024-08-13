/* ARRAYS IN SAS: */



/* a. INTRODUCTION TO ARRAYS: */

/* AN ARRAY IS SIMPLY A WAY TO REFER TO A GROUP OF VARIABLES IN ONE OBERVATION WITH A SINGLE NAME. */

/* SYNTAX--> */
/* ARRAY ARRAY_NAME (SUBSCRIPT)<$><ARRAY_ELEMENTS><(INITIAL_VALUE_LIST)> */


/* EXPLAIN ABOUT THE SYNTAX: */

/* ARRAY: KEYWORD TO START THE ARRAY STATEMENT OR DEFINE THE ARRAY VARIABLES IN SAS. */
/* ARRAY_NAME: A NAME WHICH YOU WOULD LIKE TO GIVE TO THE ARRAY VARIABLE. 
				THIS FOLLOWS THE SAME RULE AS OTHER VARIABLES 
				AND THAT MUST NOT BE SAME AS A VARIABLE IN YOUR DATA. */
/* SUBSCRIPT: IT'S A NUMBER, YOU NEED TO PROVIDE TO TELL SAS HOW MANY ELEMENTS/VARIABLES 
				YOU WANT TO STORE IN THIS ARRAY VARIABLE. */
/* $: AN OPTIONAL ARGUMENT, WHICH NEED TO BE USED WHEN ALL THE ELEMENTS/VARIABLES 
		YOU WANT TO STORE IN THE ARRAY VARIABLE ARE CHARACTER TYPE. */
/* ARRAY_ELEMENTS: LIST OF ALL THE VARIABLES YOU WANT TO STORE IN THE ARRAY VARIABLE. */


/* EG-1: */

DATA TEST;
ARRAY X(10) D1-D10;
RUN;





/* b. USING 'IN' OPERATOR IN ARRAYS: */


DATA SAMPLE;
SET WORK.psa;

ARRAY X(7) DAY_1-DAY_7;

IF 'A' IN X THEN EVER_ABSENT = 'YES';
ELSE EVER_ABSENT = 'NO';

IF 'P' IN X THEN EVER_PRESENT = 'YES';
ELSE EVER_PRESENT = 'NO';

RUN;




/* c. USING 'OF' OPERATOR IN ARRAYS: */


DATA SAMPLE2;
SET WORK.sales_cus;

ARRAY Y(12) JAN	FEB	MAR	APR	MAY	JUN	JUL	AUG	SEP	OCT	NOV	DEC;

MAX_UNIT_SOLD = MAX(OF Y(*));
MIN_UNIT_SOLD = MIN(OF Y(*));

RUN;



/* SIMPLEST FORM: */

DATA SAMPLE2;
SET WORK.sales_cus;

ARRAY Y1(*)  _NUMERIC_ ;

MAX_UNIT_SOLD = MAX(OF Y1(*));
MIN_UNIT_SOLD = MIN(OF Y1(*));

RUN;



/* DEFAULT OPTION PROVIDED BY SAS ARE:  */

/* 1. _NUMERIC_ */
/* 2. _CHARACTER_ */
/* 3. _ALL_ */






/* d. USING 'DO LOOP' WITH ARRAYS: */


DATA SAMPLE3;
SET WORK.mis_vall;

ARRAY Z(10) a1-a10;

DO i = 1 TO 10;
	IF MISSING(Z(i)) THEN Z(i) = 0;
END;
RUN;




/* SIMPLEST FORM: */

DATA SAMPLE4;
SET WORK.mis_vall;

ARRAY Z1(*) _NUMERIC_;

DO j = 1 TO DIM(Z1);
	IF MISSING(Z1(j)) THEN Z1(j) = 0;
END;
RUN;

/*  DIM: IT COUNTS NUMBER OF VARIABLES STORE IN ARRAY VARIABLE. 
		IT ONLY USE WHEN YOU USE DO LOOP BECAUSE IF YOU DO NOT KNOW HOW MANY VARIABLES/ELEMENTS PRESENT INSIDE AN ARRAY YOU USE THIS WITH DO LOOP. 
		IT IS THE ENDING PART OF DO LOOP.  */


















