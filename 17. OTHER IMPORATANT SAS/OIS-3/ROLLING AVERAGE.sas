/* PERCENTAGE DIFFERENCE WITH THE AVERAGE(ROLLING AVERAGE) OF LAST SIX MONTH: */



%MACRO ROLLIN_AVG;

PROC SORT DATA=LA.STOCK; BY STOCK; RUN;

DATA TESTING;
SET LA.STOCK;

	%DO I= 1 %TO 6:
		OPEN%I. = LAG%I.(OPNE);
	%END;
	
	
	ARRAY LAG_VAR(*) OPEN1-OPEN6;
	BY STOCKS;
	IF FIRST.STOCKS THEN DO;
		COUNT=1;
		COUNTER=1;
	DO J=COUNT TO DIM(LAG_VAR);
		LAG_VAR(J)= .;
	END;
	
	ELSE DO;
		COUNT+1;
	END;
	
	
	OPEN_SUM= SUM(OF OPEN1-OPEN6);
	ROL_AVG=OEPN_SUM/6;
	PCT_DIFF_6MNTH_AVG=(ROL_AVG - OPEN)/ROL_AVG;
	
	
	IF COUNTER <= 6 THEN DO;
	OPEN_SUM= .;
	ROL_AVG= .;
	PCT_DIFF_6MNTH_AVG= .;
	
	
	KEEP STOCK DATE OPEN PCT_DIFF_6MNTH_AVG;
		

RUN;
%MEND
%ROLLING_AVG;
PROC PRINT DATA=TESTING; RUN;






