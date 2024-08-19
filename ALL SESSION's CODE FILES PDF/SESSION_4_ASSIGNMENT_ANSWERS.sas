LIBNAME SSN4 '/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/LIBRARY';
RUN;

PROC IMPORT OUT=SSN4.MED_AUS
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/3_FILES/MED_AUS.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='MED_AUS';
RUN;

/* DATE==> 16/04/2024 */

/* SESSION-1 */


/* Q1:--> */
/* ============== */



/* Q1.	SAS stanDs for --> STASTISTICAL ANALYSIS SYSTEM			 */

/* Q2	SAS as a business applications , what are its components */
/* 				- DBMS PROGRAMMING */
/* 				- BUSSINESS INTELLIGENCE & DATA WAREHOUSING */
/* 				- DATA VIZUALIZATION */
/* 				- DATA MINING  */

/* Q3	SAS jargons. correct the form of nomenclature		 */
/* 			  SQL	      SAS */
/* 			DATABASE	LIBRARY */
/* 			RECORDS		OBSERVATIONS */
/* 			FIELDS 		VARIABLE */
/* 			TABLE		DATASET */

/* Q4	SAS considers 01/01/1960 as --> 0 */

DATA DATES;
INPUT DATE;
INFORMAT DATE MMDDYY8.;
DATALINES;
01-01-60
;
RUN;

/* Q5	What is Informat and Format? */
/* 	Can we use informat and foemat statement for each variables? */
/*  ANS:  */
/* 	INFORMAT --> IT IS USED TO READ THE DATA IN REQUIRED SAS FORMAT. */
/* 	FORMAT --> IT IS USED TO SHOW THE DATA IN REQUIRED SAS FORMAT */
/* 	YES WE CAN USE INFORMAT & FORMAT STATEMENT FOR EACH VARIABLES. */

/* Q6	Write the statement which sas programming starts with ---->  Data */

/* Q7	Give the statement name	 */
/* 	To create dataset name -->		DATA */
/* 	To read data temporarily -->	CARDS */
/* 	To read data from external file path -->	INFILE */
/* 	To write data into sas format -->	FORMAT */
/* 	To read data into sas format -->	INFORMAT */
/* 	To define column input --->	INPUT */
/* 	To print the result --->	PROC PRINT */
/* 	To describe the dataset --->	PROC CONTENT */
/* 	To sort the dataset --->	PROC SORT */
/* 	To select variable in the proc print statement --->	VAR */
/* 	To execute the program --->	RUN */

/* Q8	Every SAS statement ends with? */
/* ANS:--> 	; (SEMI COLON) */

/* Q9	Write the criteria to create a Library Name? */
/* 	IT SHOULD NOT BE GREATER THAN 8 CHARACTERS */
/* 	IT SHOULD BE START WITH ALPHABETS, UNDERSCORE. */
/* 	IT MUST BE FOLLOWED ALPHABETS, NUMBERS, UNDERSCORE. */

/* Q10	Write the criteria to create Dataset and Variable Name? */
/* 	IT SHOULD NOT BE GREATER THAN 32 CHARACTERS */
/* 	IT SHOULD BE START WITH ALPHABETS, UNDERSCORE. */
/* 	IT MUST BE FOLLOWED ALPHABETS, NUMBERS, UNDERSCORE. */


/* Q11	Correct below statements						 */
/* 	Default character length is 10 --->	Default character length is 8					 */
/* 	Minimum character length is 8 --->	Minimum character length is 1					 */
/* 	Maximum character length is 32767 --->	Maximum character length is 32767					 */
/* 	Numeric variable default length is 16 bytes equal to 16-17 digits --->	Numeric variable default length is 8 bytes equal to 16-17 digits					 */

/* Q12	Explain Proc contents */
/* ANS:--> */
/* 	IT IS USED TO DESCRIBE ABOUT THE DATASETS AS WELL AS THE LIBRARY. */
/* 	IT GIVE 3 INFORMATIONS: */
/* 		1. DATASET INFORMATION */
/* 		2. HOST ENGINE */
/* 		3. VARIABLE NAME, DATA TYPE, FORMAT */

/* 	EG-1: */
	PROC CONTENTS DATA=SSN4.MED_AUS;            /* IT DESCRIBE ABOUT THE MED DATASET */
	RUN;
	
/* 	EG-2: */
	PROC CONTENTS DATA=SSN4.MED_AUS VARNUM SHORT;             
	RUN;
/* 	VARNUM --> IT IS USED TO GET THE ORDER OF THE VARIABLE AS SAME THE DATASET.  */
/* 	SHORT --> IT IS USED TO GET ONLY THE VARIABLE NAME LIST. */

/* 	EG-3: */
	PROC CONTENTS DATA=SSN4._ALL_;             /* IT GIVE ALL THE DETAILS ABOUT THE LIBRARY SSN4 
									THAT MEANS ALL THE DESCRIPTION OF THE DATASET THAT PRESENT INSIDE SSN4. */
	RUN;
	
/* 	EG-4: */
	PROC CONTENTS DATA=SSN4._ALL_ NODS;             
	RUN;
/* 	NODS --> IT IS USED TO AVOID DESCRIBING ALL ABOUT THE DATASET PRESENT INSIDE THE SSN4. */


/* Q13	How to descibe a Library */
	PROC CONTENTS DATA=SSN4._ALL_;   
	RUN;
	
/* Q14	How to Print only top 10 observations */
	PROC PRINT DATA=SSN4.MED_AUS (OBS=10);
	RUN;
	
/* Q15	How to select observation from 10 to 20 */
	PROC PRINT DATA=SSN4.MED_AUS (FIRSTOBS=10 OBS=20);
	RUN;

/* Q16	Explain below windows in SAS PC							 */
/* 	Editor --->	IT IS USED TO WRITE THE CODE.						 */
/* 	Log --->	IT IS USED TO SEE THE ERRORS, WARINGS, NOTES OR SUCCESS MESSAGES						 */
/* 	Output ---->	IT IS USED TO SEE THE DATASET, IT ALWAYS NOT AVAILABLE IN SAS WINDOW.						 */
/* 	Explorer --->	IT IS USED TO NAVIGATE BETWEEN FILES & DATASET						 */
/* 	Result ---->	IT IS USED TO PRINT THE OUTPUT OF THE DATASET.						 */


/* Q17	Use of							 */
/* 	"CTRL+?" -->	IT IS USED TO COMMENT A LINE						 */
/* 	"CTRL+SHIFT+?" -->	IT IS USED TO UNCOMMENT A LINE						 */
/* 	"CTRL+E" --->	IT IS USED TO SEARCH USING GOOGLE.						 */
/* 	"F3" --->	IT IS USED TO EXECUTE ALL THE CODE.						 */
/* 	"F8" --->	IT IS USED TO SUBMIT THE CODE FOR TESTING & DEBUGING						 */
/* 	"F9" --->	IT IS USED TO DELETE ALL THE LIBRARY AND FILES AND DATASET WE CREATED.						 */

/* Q18	Explain the below options						 */
/* 	Noobs	IT IS USED TO ELIMINATES THE OBSERVATION NUMBERS FROM THE DATASET					 */
/* 	Varnum	IT IS USED TO ORDER THE VARIABLE NAME AS SAME AS DATASET					 */
/* 	Short	IT IS USED TO GIVE THE VARIABLE NAME LIST OF A DATASET					 */
/* 	NODS	IT IS USED TO AVOID DESCRIPING ALL THE DATASET OF A LIBRARY					 */
/* 	Out=	IT IS USED TO COPY A DATASET. IT IS A OPTION USE IN PROC STATEMENT.					 */
/* 	Firstobs=	IT IS USED TO SAY ABOUT THE STARTING OBSERAVATION NUMBER.					 */


/* ======================================================================================================================================== */



/* Q2:--> */
/* ============ */

/* Q1	Create this SALES dataset using cards and datalines both */

/* USING CARDS: */

DATA SSN4.SALES_V1;
INPUT CUSTOMER_ID :$15.	CUSTOMER_SSN $ DOB PRODUCT_ID :$20. QUANTITY SALES;
INFORMAT DOB DDMMYY10. SALES DOLLAR15.;
FORMAT DOB DDMMYY10. SALES DOLLAR15.;
CARDS;
1000032547  RH-19495  15-09-1984  TEC-AC-10003033  7  $2,310
1000032548  JR-16210  15-07-1974  FUR-CH-10003950  9  $3,709
1000032549  CR-12730  01-04-1959  TEC-PH-10004664  9  $5,175
1000032550  KM-16375  16-05-1978  TEC-PH-10004583  5  $2,893
1000032551  RH-9495  16-12-1978  TEC-SHA-10000501  8  $2,833
1000032552  JM-15655  21-07-1987  TEC-PH-10000030  5  $2,863
1000032553  TS-21340  07-11-1986  FUR-CH-10004050  4  $1,822
1000032554  MB-18085  29-04-1987  FUR-TA-10002958  6  $5,245
1000032555  JW-15220  04-03-1958  OFF-BI-10003527  5  $5,084
1000032556  JH-15985  15-08-1952  FUR-TA-10000198  13  $4,298
1000032557  GM-14695  26-12-1984  OFF-SU-10002881  5  $4,164
1000032558  AJ-10780  17-02-1956  FUR-TA-10001889  5  $4,626
1000032559  MM-7260  11-04-1979  TEC-CIS-10001717  4  $2,617
1000032560  VF-21715  12-03-1985  FUR-CH-10002033  7  $2,222
;
RUN;


/* USING DATALINES: */

DATA SSN4.SALES_V2;
INPUT CUSTOMER_ID :$15.	CUSTOMER_SSN $ DOB PRODUCT_ID :$20. QUANTITY SALES;
INFORMAT DOB DDMMYY10. SALES DOLLAR15.;
FORMAT DOB DDMMYY10. SALES DOLLAR15.;
DATALINES;
1000032547  RH-19495  15-09-1984  TEC-AC-10003033  7  $2,310
1000032548  JR-16210  15-07-1974  FUR-CH-10003950  9  $3,709
1000032549  CR-12730  01-04-1959  TEC-PH-10004664  9  $5,175
1000032550  KM-16375  16-05-1978  TEC-PH-10004583  5  $2,893
1000032551  RH-9495  16-12-1978  TEC-SHA-10000501  8  $2,833
1000032552  JM-15655  21-07-1987  TEC-PH-10000030  5  $2,863
1000032553  TS-21340  07-11-1986  FUR-CH-10004050  4  $1,822
1000032554  MB-18085  29-04-1987  FUR-TA-10002958  6  $5,245
1000032555  JW-15220  04-03-1958  OFF-BI-10003527  5  $5,084
1000032556  JH-15985  15-08-1952  FUR-TA-10000198  13  $4,298
1000032557  GM-14695  26-12-1984  OFF-SU-10002881  5  $4,164
1000032558  AJ-10780  17-02-1956  FUR-TA-10001889  5  $4,626
1000032559  MM-7260  11-04-1979  TEC-CIS-10001717  4  $2,617
1000032560  VF-21715  12-03-1985  FUR-CH-10002033  7  $2,222
;
RUN;


/* ==================================================================================================================== */



/* Q3:--> */
/* ========== */

/* Q1	Read data from 	Q3_DATA1.txt	file located 	Q3 data folder */

OPTIONS VALIDVARNAME= V7;
PROC IMPORT OUT=SSN4.DATA1_TXT
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/3_FILES/Q3_DATA1.txt'
			DBMS=DLM REPLACE;
			DELIMITER=',';
RUN;



/* Q2	Read data from 	Q3_DATA2.csv	file located 	Q3 data folder */

OPTIONS VALIDVARNAME= V7;
PROC IMPORT OUT=SSN4.DATA2_CSV
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/3_FILES/Q3_DATA2.csv'
			DBMS=CSV REPLACE;
RUN;



/* Q3	Read data from 	Q3_DATA3.xlsx	file located 	Q3 data folder */

OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.DATA3_EXCEL
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/3_FILES/Q3_DATA3.xlsx'
			DBMS=XLSX REPLACE;
RUN;

/* Q3_DATA_XLSX FILE DONOT HAVE ANY DATA. SO IT IS NOT OPEN IN SAS OUTPUT WINDOW BUT IT IMPORTED IN THE LIBRARY. */




/* ==================================================================================================================== */

/* Q4:--> */

/* Q1	Explain SAS Programming Steps 	 */

DATA SSN4.STU_ENQ_OLD;  /* DATA STEP USED TO CREATE A DATASET */
INPUT STU_ID $ STU_NAME $ AGE GENDER $ EDUCATION $ OCCUPATION $ DOE COURSE $;    /* INPUT STATEMENT USED TO CREATE VARIABLE NAME & ALSO ALLOW TO DECLARE DATA TYPE. */
INFORMAT DOE DDMMYY10.;       /*INFORMAT TO READ DATA INTO SAS FORMAT*/
FORMAT DOE MMDDYY10.;         /*FORMAT TO WRITE DATA INTO SAS FORMAT*/
CARDS;                         /* CARDS IS USED TO INPUT TEMPORARY DATA */
S1  DEEPTI  30  FEMALE  BTECH  IT  01-01-1960  ANALYST
S2  SUPRABHA  29  FEMALE  BTECH  IT  15-01-1960  ANALYST
S3  SASMITA  29  FEMALE  BTECH  IT  01-01-1959  ANALYST
S4  SOUVIK  34  MALE  BTECH  IT  01-01-1972  ANALYST
S5  SUMESH  31  MALE  BTECH  IT  02-01-1972  ANALYST
S6  PRATYUSH  31  MALE  BTECH  IT  03-01-1972  ANALYST
S7  PRADEEBA  27  FEMALE  BTECH  IT  04-01-1972  ANALYST
S8  MANISH  28  MALE  MCA  IT  05-01-1972  ANALYST
S9  PRITHVI  29  MALE  MCA  IT  06-01-1972  ANALYST
S10  ARPITA  31  FEMALE  MCA  IT  07-01-1972  ANALYST
;
RUN;       /* RUN IS USED TO EXECUTE THE CODES */

PROC PRINT DATA=SSN4.STU_ENQ_OLD;    /* PROC PRINT IS USED TO SHOW THE OUTPUT DATASET IN RESULT WINDOW */
RUN;												
												
												
												
/* ===================================================================================================================================												 */


/* Q5:--->   */
/* ============= */


/* Q1	Explain the dataset name and library name in this program	 */

												
DATA STU_ENQ_OLD;  
INPUT STU_ID $ STU_NAME $ AGE GENDER $ EDUCATION $ OCCUPATION $ DOE COURSE $;    
INFORMAT DOE DDMMYY10.;       
FORMAT DOE MMDDYY10.;         
CARDS;                         
S1  DEEPTI  30  FEMALE  BTECH  IT  01-01-1960  ANALYST
S2  SUPRABHA  29  FEMALE  BTECH  IT  15-01-1960  ANALYST
S3  SASMITA  29  FEMALE  BTECH  IT  01-01-1959  ANALYST
S4  SOUVIK  34  MALE  BTECH  IT  01-01-1972  ANALYST
S5  SUMESH  31  MALE  BTECH  IT  02-01-1972  ANALYST
S6  PRATYUSH  31  MALE  BTECH  IT  03-01-1972  ANALYST
S7  PRADEEBA  27  FEMALE  BTECH  IT  04-01-1972  ANALYST
S8  MANISH  28  MALE  MCA  IT  05-01-1972  ANALYST
S9  PRITHVI  29  MALE  MCA  IT  06-01-1972  ANALYST
S10  ARPITA  31  FEMALE  MCA  IT  07-01-1972  ANALYST
;
RUN;       

PROC PRINT DATA=STU_ENQ_OLD;    
RUN;											
												
/* DATASET NAME --> 	STU_ENQ_OLD */
/* LIBRARY NAME -->	WORK */
												
												
/* Q2	How to Describe this dataset? */
												
PROC CONTENTS DATA=STU_ENQ_OLD VARNUM;
RUN;												
												
/* Q3	How to Describe the library? */
												
PROC CONTENTS DATA=SSN4._ALL_;
RUN;											


/* ====================================================================================================== */


/* Q6:---> */
/* ================ */

PROC IMPORT OUT=SSN4.STD_SCORES
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/3_FILES/DATA.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='STD_SCORES';
RUN;

/* Q1	Sort data by Stu_Name */
PROC SORT DATA=SSN4.std_scores;
BY STU_NAME;
RUN;

/* Q2	Sort data by Subject */
PROC SORT DATA=SSN4.std_scores;
BY SUBJECT;
RUN;

/* Q3	Sort data by Stu_Name,Subject,Year wise Score */
PROC SORT DATA=SSN4.std_scores;
BY STU_NAME SUBJECT YEAR;
RUN;

/* Q4	Sort data by Stu_Name,Year wise Score in descending order */
PROC SORT DATA=SSN4.std_scores;
BY STU_NAME YEAR DESCENDING SCORE;
RUN;

/* Q5	Sort data by Subject,Year wise Score in descending order */
PROC SORT DATA=SSN4.std_scores;
BY SUBJECT YEAR DESCENDING SCORE;
RUN;

/* Q6	Sort data by Year,Stu_name wise Score in descending order */
PROC SORT DATA=SSN4.std_scores;
BY YEAR STU_NAME DESCENDING SCORE;
RUN; 

/* ================================================================================================= */


/* Q7:---> */
/* =============== */

PROC IMPORT OUT=SSN4.STD_DUPS
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/3_FILES/DATA.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='STD_DUPS';
RUN;

/* Q1	Identify the duplicate records from this dataset */
/* 	Use Proc sort with Nodup,Nodupkey option */
/* 	Pull duplicate data using dupout dataset */


/* USING NODUKEYP: */
PROC SORT DATA=SSN4.std_dups NODUPKEY DUPOUT=SSN4.DUPLI_NODUPKEY_STD;
BY STU_ID;
RUN;


/* USING NODUP: */
PROC SORT DATA=SSN4.std_dups NODUP DUPOUT=SSN4.DUPLI_NODUP_STD;
BY STU_ID;
RUN;


/* ==================================================================================================================== */


/* Q8:---> */
/* ================ */


/* Q1	Write the sas program to read data from sales dataset to create another dataset as sales_new */


DATA SSN4.SALES;
INPUT CUSTOMER_ID :$15.	CUSTOMER_SSN $ DOB PRODUCT_ID :$20. QUANTITY SALES;
INFORMAT DOB DDMMYY10. SALES DOLLAR15.;
FORMAT DOB DDMMYY10. SALES DOLLAR15.;
DATALINES;
1000032547  RH-19495  15-09-1984  TEC-AC-10003033  7  $2,310
1000032548  JR-16210  15-07-1974  FUR-CH-10003950  9  $3,709
1000032549  CR-12730  01-04-1959  TEC-PH-10004664  9  $5,175
1000032550  KM-16375  16-05-1978  TEC-PH-10004583  5  $2,893
1000032551  RH-9495  16-12-1978  TEC-SHA-10000501  8  $2,833
1000032552  JM-15655  21-07-1987  TEC-PH-10000030  5  $2,863
1000032553  TS-21340  07-11-1986  FUR-CH-10004050  4  $1,822
1000032554  MB-18085  29-04-1987  FUR-TA-10002958  6  $5,245
1000032555  JW-15220  04-03-1958  OFF-BI-10003527  5  $5,084
1000032556  JH-15985  15-08-1952  FUR-TA-10000198  13  $4,298
1000032557  GM-14695  26-12-1984  OFF-SU-10002881  5  $4,164
1000032558  AJ-10780  17-02-1956  FUR-TA-10001889  5  $4,626
1000032559  MM-7260  11-04-1979  TEC-CIS-10001717  4  $2,617
1000032560  VF-21715  12-03-1985  FUR-CH-10002033  7  $2,222
;
RUN;


DATA SSN4.SALES_NEW;
SET SSN4.sales;
RUN;


/* ======================================================================================================= */



/* DATE==> 17/04/2024 */

/* Q9:---> */
/* ================= */


/* Q1	Write the program to copy datasets from one library to another library? */


DATA WORK.SALES_LV;
SET SSN4.sales;
RUN;

PROC COPY IN=SSN4 OUT=WORK;
SELECT SALES_NEW;
RUN;



/* Q2	Write the program to copy selected datasets from one library to another library? */

PROC COPY IN=SSN4 OUT=WORK;
SELECT DATA1_TXT DATA2_CSV STD_DUPS;
RUN;


/* ======================================================================================================================= */


/* Q10:---> */
/* =================== */



/* Q1	Create Global_sales dataset from this file give in this sheet			 */

OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.G_SALES
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/3_FILES/DATA.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='CUST_INFO';
RUN;



/* Q2	Create a new dataset Global_sales_v1 */
/* 	Keep Variable using KEEP as a statement */
/* 				CUSTOMER_ID */
/* 				CUSTOMER NAME */
/* 				CITY */
/* 				MARKET */
/* 				DOB */
/* 				PRODUCT ID */
/* 				SALES */
/* 				QUANTITY */


DATA GLOBAL_SALES_V1;
SET SSN4.g_sales;
KEEP CUSTOMER_ID CUSTOMER_NAME CITY MARKET DOB PRODUCT_ID SALES QUANTITY;
RUN;


/* Q3	Create a new dataset Global_sales_v2 */
/* 	Keep Variable using KEEP as an option in data statement */
/* 				CUSTOMER_ID */
/* 				CUSTOMER NAME */
/* 				CITY */
/* 				MARKET */
/* 				DOB */
/* 				PRODUCT ID */
/* 				SALES */
/* 				QUANTITY */

DATA GLOBAL_SALES_V2(KEEP=CUSTOMER_ID CUSTOMER_NAME CITY MARKET DOB PRODUCT_ID SALES QUANTITY) ;
SET SSN4.g_sales;
RUN;

/* Q4	Create a new dataset Global_sales_v3			 */
/* 	Keep Variable using KEEP as an option in set statement			 */
/* 			CUSTOMER_ID	 */
/* 			CUSTOMER NAME	 */
/* 			CITY	 */
/* 			MARKET	 */
/* 			DOB	 */
/* 			PRODUCT ID	 */
/* 			SALES	 */
/* 			QUANTITY	 */


DATA GLOBAL_SALES_V3;
SET SSN4.g_sales(KEEP=CUSTOMER_ID CUSTOMER_NAME CITY MARKET DOB PRODUCT_ID SALES QUANTITY) ;
RUN;


/* Q5	Create a new dataset Global_sales_v4 */
/* 	Keep Variable using DROP as a statement */
/* 				CUSTOMER_SSN */
/* 				TOWN */
/* 				CATEGORY */
/* 				SUB-CATEGORY */
/* 				DISCOUNT */
/* 				PROFIT */

DATA GLOBAL_SALES_V4;
SET SSN4.g_sales;
DROP CUSTOMER_SSN TOWN CATEGORY SUB_CATEGORY DISCOUNT PROFIT;
RUN;


/* Q6	Create a new dataset Global_sales_v5 */
/* 	Keep Variable using DROP as an option in data statement */
/* 				CUSTOMER_SSN */
/* 				TOWN */
/* 				CATEGORY */
/* 				SUB-CATEGORY */
/* 				DISCOUNT */
/* 				PROFIT */


DATA GLOBAL_SALES_V5;
SET SSN4.g_sales (DROP= CUSTOMER_SSN TOWN CATEGORY SUB_CATEGORY DISCOUNT PROFIT);
RUN;

/* ANOTHER WAY */

DATA GLOBAL_SALES_V51(DROP= CUSTOMER_SSN TOWN CATEGORY SUB_CATEGORY DISCOUNT PROFIT);
SET SSN4.g_sales;
RUN;


/* Q7	Create a new dataset Global_sales_v6					 */
/* 	Rename Variable 					 */
/* 					CUSTOMER_ID -->	Cust_id */
/* 					CUSTOMER_NAME -->	Cust_name */
						
DATA GLOBAL_SALES_V6(RENAME=(CUSTOMER_ID=CUST_ID CUSTOMER_NAME=CUST_NAME));
SET SSN4.g_sales;
RUN;


/* ANOTHER WAY */

DATA GLOBAL_SALES_V61;
SET SSN4.g_sales(RENAME=(CUSTOMER_ID=CUST_ID CUSTOMER_NAME=CUST_NAME));
RUN;


/* ANOTHER WAY */

DATA GLOBAL_SALES_V62;
SET SSN4.g_sales;
RENAME CUSTOMER_ID=CUST_ID CUSTOMER_NAME=CUST_NAME;
RUN;


/* Q8	Create a new dataset Global_sales_v7	 */
/* 	Label variable	 */
/* 	CUSTOMER_ID -->	Customer Identification Number */
/* 	CUSTOMER_NAME -->	Cuctomer Full Name */

DATA GLOBAL_SALES_V7;
SET SSN4.g_sales;
LABEL CUSTOMER_ID='CUSTOMER IDENTIFICATION NUMBER'
		CUSTOMER_NAME='CUSTOMER FULL NAME';
RUN;


/* Q9	Create a new dataset Global_sales_v8				 */
/* 	Use Where as a statement to select data with a criteria as				 */
/* 					 */
/* 				MARKET in 	APAC,EMEA,US */
/* 				Sub_Category in	Chaires,Tables,Phone */


DATA GLOBAL_SALES_V8;
SET SSN4.g_sales;
WHERE MARKET IN ('APAC','EMEA','US') AND SUB_CATEGORY IN ('Chairs','Tables','Phones');
RUN;

/* ANOTHER WAY */

DATA GLOBAL_SALES_V81 (WHERE=( (MARKET IN ('APAC','EMEA','US') ) AND (SUB_CATEGORY IN ('Chairs','Tables','Phones') ) ) ) ;
SET SSN4.g_sales;
RUN;


/* ANOTHER WAY */

DATA GLOBAL_SALES_V82  ;
SET SSN4.g_sales (WHERE=( (MARKET IN ('APAC','EMEA','US') ) AND (SUB_CATEGORY IN ('Chairs','Tables','Phones') ) ) );
RUN;


/* ==================================================================================================================================================== */



/* Q11:---> */
/* ================== */

/* Q1	Get a new table with given conditions as below		 */
/* 			 */
/* 	Create a new Dataset as Sales_2020		 */
/* 	Keep Variable		 */
/* 			CUSTOMER_ID */
/* 			CUSTOMER NAME */
/* 			CITY */
/* 			MARKET */
/* 			TOWN */
/* 			CATEGORY */
/* 			SUB-CATEGORY */
/* 			SALES */
/* 			QUANTITY */


DATA SALES_2020;
SET SSN4.g_sales;
KEEP CUSTOMER_ID CUSTOMER_NAME CITY MARKET TOWN CATEGORY SUB_CATEGORY SALES QUANTITY;
RUN;

/* ANOTHER WAY */

DATA SALES_2020_V1 (KEEP=CUSTOMER_ID CUSTOMER_NAME CITY MARKET TOWN CATEGORY SUB_CATEGORY SALES QUANTITY);
SET SSN4.g_sales;
RUN;

/* ANOTHER WAY */

DATA SALES_2020_V2;
SET SSN4.g_sales (KEEP=CUSTOMER_ID CUSTOMER_NAME CITY MARKET TOWN CATEGORY SUB_CATEGORY SALES QUANTITY);
RUN;



/* Where conditions are						 */
/* 					CUSTOMER NAME 	starts with an alphabet "M" */
/* 					Market in 	APAC,EU,US and LATAM */
/* 					SUB-CATEGORY in	Chaires,Tables,Phones */
/* 					Quantity	>5 */
/* 					Sales 	Between 3000 and 6000 */

DATA SALES_2020_CON;
SET SALES_2020;
WHERE CUSTOMER_NAME LIKE 'M%' AND MARKET IN ('APAC','EU','US','LATAM') AND SUB_CATEGORY IN ('Chairs','Tables','Phones') AND QUANTITY>5 AND SALES BETWEEN 3000 AND 6000;
RUN;

/* ========================================================================================================================================================================================= */



/* Q12:---> */
/* ================== */

OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.CUST_PUR
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/3_FILES/DATA.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='CUST_PUR';
RUN;


/* Q1	Write an Expression to get History Purchase into rounded 1000 figure					 */
/* 						Ex:$2310 will be $2300 */

DATA CUST_PUR;
SET SSN4.cust_pur ;
RUN;


/* Create a new field called Age_Bucket as			 */
/* 		"Less than 30"	 */
/* 		"30-50"	 */
/* 		"51-70"	 */
/* 		"70+"	 */


DATA CUST_PUR;
SET SSN4.cust_pur;
LENGTH AGE_BUCKET $20.;
IF AGE>70 THEN AGE_BUCKET='OLD_AGE';
ELSE IF AGE>50 THEN AGE_BUCKET='MID_OLD_AGE';
ELSE IF AGE>30 THEN AGE_BUCKET='MID_YOUNG_AGE';
ELSE AGE_BUCKET='YOUNG_AGE';
RUN;



/* Based on History Purchase Define Customer Category As						 */
/* 						History Purchase <= 500 as Miser */
/* 						History Purchase > 500  and History Purchase <= 2000 as Casual */
/* 						History Purchase > 2000  and History Purchase <= 3000 as Power */
/* 						History Purchase > 3000  as Premier */

DATA CUST_PUR;
SET CUST_PUR;
IF History_Purchase >3000 THEN CUST_CATEGORY='PREMIER';
ELSE IF History_Purchase >2000 THEN CUST_CATEGORY='POWER';
ELSE IF History_Purchase >500 THEN CUST_CATEGORY='CASUAL';
ELSE CUST_CATEGORY='MISER';
RUN;


/* Create a Discount Field as									 */
/* 				Customer Category as Premier and Age <= 50 and Selling Price >= 200 then Discount is .20 */
/* 				Customer Category as Power and Age <= 50 and Selling Price >= 200 then Discount is .15 */
/* 				Customer Category as Power and Age >  50 and Selling Price >= 200 then Discount is .20 */
/* 				Else Discount is .05 */

DATA CUST_PUR;
SET CUST_PUR;
IF CUST_CATEGORY='PREMIER' THEN DO;
			IF AGE<=50 AND Selling_Price>=200 THEN DISCOUNT=.20;
			
END;

ELSE IF CUST_CATEGORY='POWER' THEN DO;
			IF AGE<=50 AND Selling_Price>=200 THEN DISCOUNT=.15;
			
END;

ELSE IF CUST_CATEGORY='POWER' THEN DO;
			IF AGE>50 AND Selling_Price>=200 THEN DISCOUNT=.20;
			
END;
ELSE DISCOUNT=.05;
RUN;

/* ANOTHER WAY */

DATA CUST_PUR;
SET CUST_PUR;
IF CUST_CATEGORY='PREMIER' AND AGE<=50 AND Selling_Price>=200 THEN DISCOUNTS=.20 ;
ELSE IF CUST_CATEGORY='POWER' AND AGE<=50 AND Selling_Price>=200 THEN DISCOUNTS=.15 ;
ELSE IF CUST_CATEGORY='POWER' AND AGE>50 AND Selling_Price>=200 THEN DISCOUNTS=.20 ;
ELSE DISCOUNTS=.05;
RUN;


/* Created the new field called Sales Price after discount and multiple field with Units to get actual sales */

DATA SSN4.CUST_PUR;
SET CUST_PUR;
SALES_AFTER_DISCOUNT = Selling_Price - (Selling_Price*DISCOUNT);
ACTUAL_SALES = SALES_AFTER_DISCOUNT * UNITS;
RUN;


/* ======================================================================================================================================== */


/* Q13:---> */
/* ===================== */

OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.PRD_PRC
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/3_FILES/DATA.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='PRD_PRC';
RUN;


/* Q1	If the product name starts with an alphabet "A" then give discount of 10% on price */
/* 	Select only Region in AP and NA */

DATA PRD_V1;
SET SSN4.prd_prc;
IF SUBSTR(PRODUCT,1,1)='A' THEN DO;
	IF REGION IN ('AP','NA') THEN DISCOUNT=0.10;
END;
RUN;

/* ANOTHER WAY */

DATA PRD_V1;
SET SSN4.prd_prc;
IF SUBSTR(PRODUCT,1,1)='A' AND REGION IN ('AP','NA') THEN DISCOUNT=0.10;
RUN;


/* Q2	Print the dataset where product in ("ASUS","DELL"."SONY") and Year in (2016,2017) */

DATA PRD_V2;
SET SSN4.PRD_PRC;
WHERE PRODUCT IN ('ASUS','DELL','SONY') AND YEAR IN (2016,2017);
RUN;


/* Q3	Can we use Where statement in Data step and Proc step */
/* ANS:--> */
/* YES, WE CAN USE WHERE STATEMENT IN BOTH DATA STEP & PROC STEP. */

/* DATA STEP EXAMPLE:  */
DATA PRD_V3;
SET SSN4.PRD_PRC;
WHERE PRODUCT IN ('ASUS','SONY') AND YEAR IN (2016,2017);
RUN;

/* PROC STEP EXAMPLE:  */
PROC PRINT DATA=SSN4.PRD_PRC;
WHERE PRODUCT IN ('ASUS','SONY') AND YEAR IN (2016,2017);
RUN;


/* Q4	Can we use If statement in both data step and proc step */
/* ANS:--> */
/* NO, WE CAN NOT USE IF STATEMENT BOTH IN DATA STEP & PROC STEP. */
/* WE CAN ONLY USE IN DATA STEP. */


/* DATA STEP EXAMPLE:  */
DATA CUST_PUR_V1;
SET SSN4.cust_pur;
LENGTH AGE_BUCKET $20.;
IF AGE>70 THEN AGE_BUCKET='OLD_AGE';
ELSE IF AGE>50 THEN AGE_BUCKET='MID_OLD_AGE';
ELSE IF AGE>30 THEN AGE_BUCKET='MID_YOUNG_AGE';
ELSE AGE_BUCKET='YOUNG_AGE';
RUN;

/* PROC STEP EXAMPLE:  */
PROC PRINT DATA=SSN4.cust_pur;
IF AGE>70 THEN AGE_BUCKET='OLD_AGE';
ELSE IF AGE>50 THEN AGE_BUCKET='MID_OLD_AGE';
ELSE IF AGE>30 THEN AGE_BUCKET='MID_YOUNG_AGE';
ELSE AGE_BUCKET='YOUNG_AGE';
RUN;

/* THIS ERROR OCCURED --> Statement is not valid or it is used out of proper order. */


/* Q5	Explain the difference between If and Where statement */
/* ANS:--> */

/* IF STATEMENT:  */
/* IF STATEMENT USED IN DATA STEP ONLY. */
/* THE CONDITION WORKS FOR EVERY OBSERVATIONS. */
/* IF STATEMENT ALSO CREATE NEW COLUMN. */

/* WHERE STATEMENT: */
/* WHERE STATEMENT USED IN BOTH DATA STEP & PROC STEP. */
/* IT WILL GIVE ALL THE OBSERVATION THAT SATISFIED THE CONDITIONS. */
/* THE CONDITIONS ONLY APPLICABLE IN THE ORIGINAL COLUMN. */


/* ============================================================================================================================================= */


/* Q14:--> */
/* ================== */

OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.CUST_PURCH
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/3_FILES/DATA.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='CUST_PUR';
RUN;


/* Q1	Based on History Purchase Define Customer Category As						 */
/* 							History Purchase <= 500 as Miser */
/* 							History Purchase > 500  and History Purchase <= 2000 as Casual */
/* 							History Purchase > 2000  and History Purchase <= 3000 as Power */
/* 							History Purchase > 3000  as Premier */


DATA CUST_PURCHS;
SET SSN4.cust_purch;
IF History_Purchase >3000 THEN CUST_CATEGORY='PREMIER';
ELSE IF History_Purchase >2000 THEN CUST_CATEGORY='POWER';
ELSE IF History_Purchase >500 THEN CUST_CATEGORY='CASUAL';
ELSE CUST_CATEGORY='MISER';
RUN;


/* Q2	Get each Customer Categoryeise Indiviual Datasets */

DATA PREMIER_DT POWER_DT CASUAL_DT MISER_DT;
SET CUST_PURCHS;
IF CUST_CATEGORY='PREMIER' THEN OUTPUT PREMIER_DT;
ELSE IF CUST_CATEGORY='POWER' THEN OUTPUT POWER_DT;
ELSE IF CUST_CATEGORY='CASUAL' THEN OUTPUT CASUAL_DT;
ELSE OUTPUT MISER_DT;
RUN;


/* Q2	Get Separate Dataset by Marke as				 */
/* 				US	North America */
/* 				Canada	 */
/* 				APAC	Asia Pacific */
/* 				EU	EMEA */
/* 				Africa	 */
/* 				EMEA	 */
/* 				LATAM	LAM */

/* MARKET VALUE ONLY */
DATA US_DT CANADA_DT APAC_DT EU_DT AFRICA_DT EMEA_DT LATAM_DT;
SET CUST_PURCHS;
IF MARKET='US' THEN OUTPUT US_DT;
ELSE IF MARKET='CANADA' THEN OUTPUT CANADA_DT;
ELSE IF MARKET='APAC' THEN OUTPUT APAC_DT;
ELSE IF MARKET='EU' THEN OUTPUT EU_DT;
ELSE IF MARKET='AFRICA' THEN OUTPUT AFRICA_DT;
ELSE IF MARKET='EMEA' THEN OUTPUT EMEA_DT;
ELSE OUTPUT LATAM_DT;
RUN;


/* REAL ANSWER */
DATA NORTH_AMERICA_DT ASIA_PACIFIC_DT EMEA_DT LAM_DT;
SET CUST_PURCHS;
IF MARKET IN ('US','CANADA') THEN OUTPUT NORTH_AMERICA_DT;
ELSE IF MARKET='APAC' THEN OUTPUT ASIA_PACIFIC_DT;
ELSE IF MARKET IN ('EU','AFRICA') AND MARKET='EMEA' THEN OUTPUT EMEA_DT;
ELSE OUTPUT LAM_DT;
RUN;


/* ============================================================================================================== */


/* Q15:---> */
/* =================== */

PROC IMPORT OUT=SSN4.CONT_FORM
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/3_FILES/DATA.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='CONT_FORM';
RUN;


/* Q1	Create a User defined format to 		 */
/* 	Country_map	COUNTRY_CODE	COUNTRY */
/* 		AU	Australia */
/* 		AT	Austria */
/* 		BR	Brazil */
/* 		CA	Canada */
/* 		DK	Denmark */
/* 		DE	Germany */
/* 		IN	India */
/* 		MX	Mexico */
/* 		US	USA */
/* 		GB	United Kingdom */

/* Region_map	COUNTRY_CODE	REGION */
/* 	AU	EU */
/* 	AT	EU */
/* 	BR	LAM */
/* 	CA	NA */
/* 	DK	EU */
/* 	DE	EU */
/* 	IN	APAC */
/* 	MX	LAM */
/* 	US	NA */
/* 	GB	EU */

/* Case Bucket		 */
/* 	<1000	1000 and less */
/* 	1001-5000	1001-5000 */
/* 	5001-10000	5001-10000 */
/* 	>10000	10000+ */

/* Store this format into a permanent libray	 */


PROC FORMAT LIBRARY=SSN4;
VALUE $COUNTRY 'AU'= 'AUSTRALIA'
				'AT'='AUSTRIA'
				'BR'='BRAZIL'
				'CA'='CANADA'
				'DK'='DENMARK'
				'DE'='GERMANY'
				'IN'='INDIA'
				'MX'='MEXICO'
				'US'='USA'
				'GB'='UNITIED KINGDOM';
				
VALUE $REGION 'AU'='EU'
				'AT'='EU'
				'BR'='LAM'
				'CA'='NA'
				'DK'='EU'
				'DE'='EU'
				'IN'='APAC'
				'MX'='LAM'
				'US'='NA'
				'GB'='EU';
				
VALUE CASE_BUCKET 0-1000 ='1000 AND LESS'
					1001-5000='1001-5000'
					5001-10000='5001-10000'
				10000-1000000='10000+';


RUN;

/* USE IN DATASET: */
DATA CON_V1;
SET SSN4.cont_form;
FORMAT COUNTRY_NAME $COUNTRY. REGIONS $REGION. CASE_BUCKETS CASE_BUCKET.;
COUNTRY_NAME=COUNTRY_CODE;
REGIONS=COUNTRY_CODE;
CASE_BUCKETS=CONFIRMED_CASES;
RUN;


/* Q2	How to call a format from a Permanent Library */
OPTIONS FMTSEARCH= (SSN4.REGION);


/* Q3	What is the criteria to be followed for creating a format name? */

/* FORMAT NAME FOLLOWED SAS NAME CRITERIA. */
/* 	THAT IS START WITH CHARACTERS. */
/* 	IT SHOULD BE START WITH ALPHABETS, UNDERSCORE. */
/*  	IT MUST BE FOLLOWED ALPHABETS, NUMBERS, UNDERSCORE. */
/* NUMERIC FORMAT NAME LENGHTH CAN BE UP TO 32 CHARACTERS. */
/* CHARACTER FORMAT NAME LENGHTH CAN BE UP TO 31 CHARACTERS. */
/* IF YOU CREATE CHARACTER FORMAT THEN USE DOLLAR($) IN THE FIRST CHARACTER. */



/* ======================================================================================================================================= */
/* =================================================================================================================================================== */



/* DATE==> 18/04/2024 */

/* SESSION-2 */



/* Q16:---> */
/* ================= */



/* Q1	Import Q16 data from Import data folder 	 */
/* 	Create Multiple dataset as 	 */
/* 					ITALY */
/* 					USA */
/* 					INDIA */
/* 					CHINA */

OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.ITALY
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/1_RAW_DATA/Q16/COVID_19 DATA.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='ITALY';
RUN;


OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.USA
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/1_RAW_DATA/Q16/COVID_19 DATA.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='USA';
RUN;


OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.INDIA
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/1_RAW_DATA/Q16/COVID_19 DATA.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='INDIA';
RUN;


OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.CHINA
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/1_RAW_DATA/Q16/COVID_19 DATA.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='CHINA';
RUN;



/* Q2	Export data to an excel file having tab with	 */
/* 				ITALY */
/* 				USA */
/* 				INDIA */
/* 				CHINA */
/* 	Field contains	 */
/* 				COUNTRY */
/* 				COUNTRY_CODE */
/* 				REGION */
/* 				RECORD_DATE */
/* 				CONFIRMED_CASES_NEW */
/* 				RECOVERED_CASES_NEW */
/* 				DEATH_CASES_NEW */
/* 				RECORD_MONTH */
/* 				RECORD_DAY */


PROC EXPORT DATA=SSN4.italy (KEEP=COUNTRY COUNTRY_CODE REGION RECORD_DATE CONFIRMED_CASES_NEW RECOVERED_CASES_NEW DEATH_CASES_NEW RECORD_MONTH RECORD_DAY)
			OUTFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/4_OUTPUT_FILES/CORONA.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='ITALY';
RUN;


PROC EXPORT DATA=SSN4.USA (KEEP=COUNTRY COUNTRY_CODE REGION RECORD_DATE CONFIRMED_CASES_NEW RECOVERED_CASES_NEW DEATH_CASES_NEW RECORD_MONTH RECORD_DAY)
			OUTFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/4_OUTPUT_FILES/CORONA.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='USA';
RUN;



PROC EXPORT DATA=SSN4.INDIA (KEEP=COUNTRY COUNTRY_CODE REGION RECORD_DATE CONFIRMED_CASES_NEW RECOVERED_CASES_NEW DEATH_CASES_NEW RECORD_MONTH RECORD_DAY)
			OUTFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/4_OUTPUT_FILES/CORONA.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='INDIA';
RUN;


PROC EXPORT DATA=SSN4.CHINA (KEEP=COUNTRY COUNTRY_CODE REGION RECORD_DATE CONFIRMED_CASES_NEW RECOVERED_CASES_NEW DEATH_CASES_NEW RECORD_MONTH RECORD_DAY)
			OUTFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/4_OUTPUT_FILES/CORONA.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='CHINA';
RUN;




/* =================================================================================================================================================================================== */


/* Q17:---> */
/* =================== */


/* Q1	Import csv file data from Q17 Import data folder					 

/* 	Create a new dataset clean_data1 having  details as given below */
/* 					Company in	APPOLO,CIPLA and GENO */
/* 					Gender	Female */
/* 					Age	>=50 */


OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.MED_AUS_TXT
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/1_RAW_DATA/Q17/MED_AUS_2020.txt'
			DBMS=DLM REPLACE;
			DELIMITER='/';
RUN;


DATA SSN4.CLEAN_DATA1;
SET SSN4.med_aus_txt;
WHERE COMPANY IN ('APPOLO','CIPLA','GENO') AND GENDER='Female' AND AGE>=50;
RUN;		


/* Q2	Export clean_data1 dataset to Q17 Export Data folder as clean_data1.csv file */

PROC EXPORT DATA=SSN4.clean_data1
			OUTFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/4_OUTPUT_FILES/CLEAN_DATA1.csv'
			DBMS=CSV REPLACE;
RUN;


/* ======================================================================================================================================= */


/* Q18:---> */
/* ==================== */


/* Q1	Import csv file data from Q18 Import data folder			 */
/* 				 */
/* 	Create a new dataset clean_data1 having  details as given below			 */
/* 					Company in	APPOLO,CIPLA and GENO		 */
/* 					Gender	Female		 */
/* 					Age	>=50		 */

PROC IMPORT OUT=SSN4.MED_AUS_CSV
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/1_RAW_DATA/Q18/MED_AUS_2020.csv'
			DBMS=CSV REPLACE;
RUN;


/* Q2	Export clean_data1 dataset to Q18 Export Data folder as clean_data1.csv file */

PROC EXPORT DATA=SSN4.med_aus_csv
			OUTFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/4_OUTPUT_FILES/MED_AUS_CSV.csv'
			DBMS=CSV REPLACE;
RUN;


/* ================================================================================================================================== */


/* Q19:---> */
/* ================== */


/* Q1	Write Acces Database table importing procedure */

OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=LIBRARY_NAME.DATASET_NAME
			DATATABLE=TABLE_NAME
			DBMS=ACCESS REPLACE;
			DATABASE='<PATH OF THE DATABASE>';
RUN; 



/* Q2	Write Access Database table exporting procedure */

PROC EXPORT DATA=LIBRARY_NAME.DATASET_NAME
			OUTTABLE=TABLE_NAME
			DBMS=ACCESS REPLACE;
			DATATABLE='<PATH>';
RUN; 


/* ================================================================================================================== */


/* Q20:---> */
/* ====================== */

/* Q1	Read data from text file using infile statement */
/* 	file located at Q20 folder */

/* 	Read data from Med_data1 to Med_data5 */

/* 	Condition */
/* 	Read data from med_data2 file from row from 5th to 10th observation */


/* MED_DATA1 */
DATA MED_1ST_DATA;
INFILE '/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/1_RAW_DATA/Q20/MED_DATA1.txt' FIRSTOBS=2;
INPUT CUSTOMER_ID $1-17 Company $18-30 CARD_REG_DATE $31-52 GENDER $53-64 Age 65-72 STATE_CODE $73-88 POST_CODE $89-103 NO_OF_TRIPS $104-120 TOWN $121-136 Spent_amount;
RUN; 


/* MED_DATA2 */
DATA MED_2ND_DATA;
INFILE '/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/1_RAW_DATA/Q20/MED_DATA2.txt' DLM=',' OBS=10 FIRSTOBS=5;
INPUT CUSTOMER_ID $ Company $ CARD_REG_DATE $ GENDER $ Age  STATE_CODE $ POST_CODE $ NO_OF_TRIPS $ TOWN $ Spent_amount;
RUN; 


/* MED_DATA3 */
DATA MED_3RD_DATA;
INFILE '/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/1_RAW_DATA/Q20/MED_DATA3.txt' DLM='/' FIRSTOBS=2;
INPUT CUSTOMER_ID $ Company $ CARD_REG_DATE $ GENDER $ Age  STATE_CODE $ POST_CODE $ NO_OF_TRIPS $ TOWN $ Spent_amount;
RUN;


/* MED_DATA4 */
DATA MED_4TH_DATA;
INFILE '/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/1_RAW_DATA/Q20/MED_DATA4.txt' DLM=',' FIRSTOBS=2 MISSOVER;
INPUT CUSTOMER_ID $ Company $ CARD_REG_DATE $ GENDER $ Age  STATE_CODE $ POST_CODE $ NO_OF_TRIPS $ TOWN $ Spent_amount;
RUN;


/* MED_DATA5 */
DATA MED_5TH_DATA;
INFILE '/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/1_RAW_DATA/Q20/MED_DATA5.txt' DLM='/' FIRSTOBS=2 DSD;
INPUT CUSTOMER_ID $ Company $ CARD_REG_DATE $ GENDER $ Age  STATE_CODE $ POST_CODE $ NO_OF_TRIPS $ TOWN $ Spent_amount;
RUN;



/* Q2	Write all the option that goes with Infile statement */
/* ANS:--> */

/* 1. DLM */
/* 2. MISSOVER */
/* 3. DSD */
/* 4. TRUNCOVER */
/* 5. FIRSTOBS */
/* 6. OBS */


/* Q3	Can we Import a CSV file using Infile statement */
/* ANS:--> */
/* YES, WE CAN IMPORT A CSV FILES USING INFILE STATEMENT */

DATA MED_EXP_DATA;
SET MED_1ST_DATA;
FILE '/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/4_OUTPUT_FILES/MED_EXP_DATA.csv' DLM=',';
PUT CUSTOMER_ID $ Company $ CARD_REG_DATE $ GENDER $ Age  STATE_CODE $ POST_CODE $ NO_OF_TRIPS $ TOWN $ Spent_amount;
RUN;

/* Q4	Write the proper order of statements in Data statement */
/* 	 */
/* 				Infile statement */
/* 				Format statement */
/* 				Informat StateMent */
/* 				Data Statement */

/* ANS:--> */

/* 1. DATA STATEMENT */
/* 2. INFILE STATEMENT */
/* 3. INFORMAT STATEMNET */
/* 4. FORMAT STATEMENT */


/* Q5	What is Missover Option				 */
/* ANS:--> */
/* 	MISSOVER OPTION USED WHEN MISS VALUES ARE IN THE LAST COLUMN.				 */


/* Q6	What id DSD	 */
/* ANS:---> */
/* 	DSD STANDS FOR DELIMER SENSITIVE DATA.	 */
/* 	DSD USED WHEN MISSING VALUES ARE IN BETWEEN THE DATASET.	 */
/* 	DSD ALSO USED WHEN WE HAVE TEXT QUALIFIER DATA.	 */


/* Q7	What is Truncover */
/* ANS:---> */
/* 	TRUNCOVER USED WHEN WE READ THE OBSERVATIONS &  THESE OBSERVATIONS DO NOT HAVE SAME LENGTH. */


/* ======================================================================================================================================== */



/* Q21:---> */
/* ================== */


/* Q1	Export Med_data1 dataset using File statement */
/* 	File to be exported to Q21 Folder */
/* 	File to be Exported with heander and Delimiter will be "|" */

DATA MED_DEL_DATA;
SET MED_1ST_DATA;
FILE '/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/4_OUTPUT_FILES/MED_DEL_DATA.txt' DLM='|';
IF _N_=1 THEN DO;
PUT 'CUSTOMER_ID|Company|CARD_REG_DATE|GENDER|Age|STATE_CODE|POST_CODE|NO_OF_TRIPS|TOWN|Spent_amount';
END;
PUT CUSTOMER_ID $ Company $ CARD_REG_DATE $ GENDER $ Age  STATE_CODE $ POST_CODE $ NO_OF_TRIPS $ TOWN $ Spent_amount; 
RUN;


/* Q2	Explain the use Proc FSLIST */
/* ANS:--> */
/* THE FSLIST PROCEDURE ALLOWS YOU TO BROWSE EXTERNAL FILES THAT ARE NOT SAS DATA SETS WITHIN A SAS SESSION. */



/* Q3	Can export data to an Excel File using File statement */
/* ANS:--> */
/* YES, WE CAN EXPORT EXCEL FILE USING FILE STATEMENT. */

DATA MED_EXCEL_DATA;
SET MED_1ST_DATA;
FILE '/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/4_OUTPUT_FILES/MED_EXCEL_DATA.xlsx';
PUT CUSTOMER_ID  Company $ CARD_REG_DATE $ GENDER $ Age  STATE_CODE $ POST_CODE $ NO_OF_TRIPS $ TOWN $ Spent_amount; 
RUN;


/* Q4	Explain */
/* 	File Vs Infile */
/* 	Informat Vs Format */
/* 	Input Vs Put */


/* ANS:---> */

/* FILE vs INFILE */
/* ======================= */
/* FILE IS USED TO EXPORT THE DATA.INFILE IS USED TO IMPORT THE DATA. */
/* FILE IS USED TO WRITE THE DATA.INFILE IS USED TO READ THE DATA. */

/* INFORMAT vs FORMAT */
/* ============================= */
/* INFORMAT IS USED TO READ THE COLUMN IN SAS FORMAT.FORMAT IS USED TO WRITE THE COLUMN IN SPECIFIC SAS FORMAT. */

/* INPUT vs PUT */
/* ========================= */
/* INPUT IS USED TO READ THE COLUMN NAME INSIDE THE SAS OUTPUT.PUT IS USED TO WRITE THE COLUMN NAME IN A FILE THAT MEANS WHEN YOU EXPORT THE FILE YOU WILL SEE THE COLUMN NAME IN THIS FILE. */



/* ========================================================================================================================================================================================================================== */


/* Q22:---> */
/* ================== */


/* Q1	Read data where one dataline for multiple observation												 */
/* 		"1000032547 MED_PLUS Female 29 QLD 4701 1000032548 DR.REDDYS Female 39 WA 6030 1000032549 RELEGARE Female 54 NSW 2580 */
/* 1000032550 GSK Male 35 VIC 3043 1000032551 GSK Male 34 VIC 3190 1000032552 APPOLO Female 26 NSW 2558  */
/* 1000032553 CIPLA Female 26 VIC 3136 1000032554 APPOLO Male 26 QLD 4575 */
/* "											 */
/* 	List of variables are												 */
/* 			CUSTOMER_ID												 */
/* 			Company												 */
/* 			GENDER												 */
/* 			Age												 */
/* 			STATE_CODE												 */
/* 			POST_CODE												 */



DATA ONE_MULIT_OBS;
INPUT CUSTOMER_ID Company $ GENDER $ Age STATE_CODE $ POST_CODE $ @@;
CARDS;
1000032547 MED_PLUS Female 29 QLD 4701 1000032548 DR.REDDYS Female 39 WA 6030 1000032549 RELEGARE Female 54 NSW 2580
1000032550 GSK Male 35 VIC 3043 1000032551 GSK Male 34 VIC 3190 1000032552 APPOLO Female 26 NSW 2558 
1000032553 CIPLA Female 26 VIC 3136 1000032554 APPOLO Male 26 QLD 4575
;
RUN;


/* =============================================================================================================================================== */


/* Q23:---> */
/* ===================== */


/* Q1	Read MED_Unstructure_data.txt file from Q23 Folder	 */
/* 	In this file you see Multiple datalines for one observations	 */
/* 	Read data as given the variables list here	 */
/* 		CUSTOMER_ID,Company, */
/* 		CARD_REG_DATE,GENDER, */
/* 		Age,STATE_CODE,POST_CODE */


DATA MED_UNSTR;
INFILE '/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/1_RAW_DATA/Q23/MED_Unstructure_data.txt' DLM=',' MISSOVER;
INPUT CUSTOMER_ID Company $ ;
INPUT CARD_REG_DATE GENDER $ ;
INPUT Age STATE_CODE $ POST_CODE $ ;
INFORMAT CARD_REG_DATE DDMMYY10.;
FORMAT CARD_REG_DATE DDMMYY10.;
RUN;


/* =============================================================================================================================================== */



/* Q24:----> */
/* ======================== */



/* Q1	Explain the code below */
	
	data test;   
	/* DATASET NAME IS TEST */
	infile 'path/D0086.dat'  delimiter = '|' dsd missover firstobs = 2;
	/* INFILE--> IT EXTRACT THE EXTERNAL FILES. */
	/* DELIMERTER='|'--> THE FILE IS SEPARATED BY | DELIMETER. */
	/* DSD--> IT IS USED WHEN THE MISSING VALUES IS IN BETWEEN THE DATASET. */
	/* MISSOVER--> IT IS USED WHEN THE MISSING VALUES IS IN THE LAST COLUMN. */
	/* FIRSTOBS=2--> IT MEANS THE DATASET STARTS WITH 2ND OBSERVATION. */
	input group $3. @;
	/* INPUT--> IT IS USED TO READ COLUMN NAME */
	/* @--> IT IS USED FOR READING DATA CONDITIONALLY. */
	if group ='196' then input @1 group var_1 $13. var_2 $1.;
   /* CHECK IF THE VALUE OF 'group' IS '196'. IF TRUE, IT READS THE NEXT INPUT LINE, STARTING FROM COLUMN 1, & ASSIGN VALUES TO 'group', 'var_1','var_1' 13 CHARACTER LENGTH  & 'var_2','var_2' 1 CHARACTER LENGTH */
	if group ='197' then input @1 group var_3 $10. var_4 $1.;
	/* CHECK IF THE VALUE OF 'group' IS '197'. IF TRUE, IT READS THE NEXT INPUT LINE, STARTING FROM COLUMN 1, & ASSIGN VALUES TO 'group', 'var_3','var_3' 10 CHARACTER LENGTH & 'var_4','var_4' 1 CHARACTER LENGTH */
	if group ='198' then input @1 group var_5 $2. var_6 $14.  var_7 $10. ;
	/* CHECK IF THE VALUE OF 'group' IS '198'. IF TRUE, IT READS THE NEXT INPUT LINE, STARTING FROM COLUMN 1, & ASSIGN VALUES TO 'group', 'var_5','var_5' 2 CHARACTER LENGTH & 'var_6','var_6' 14 CHARACTER LENGTH & 'var_7','var_7' 10 CHARACTER LENGTH */
	run;
	/* EXECUTE THE CODE */




/* ==================================================================================================================================================================================================================================================================================== */



/* Q25:---> */
/* ===================== */



/* Q1	Read this data using Infile statement */
/* 	Read Log window */
/* 	Explain */
/* 		LRECL */
/* 		_Error_ */
/* 		_N_ */
/* Explain PDV */



DATA MED_GLOBAL_DATA;
INFILE '/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/1_RAW_DATA/Q20/MED_DATA2.txt' DLM=',' FIRSTOBS=2;
INPUT CUSTOMER_ID $ Company $ CARD_REG_DATE $ GENDER $ Age  STATE_CODE $ POST_CODE $ NO_OF_TRIPS $ TOWN $ Spent_amount;
RUN;

/* LRCEL */
/* LRCEL STANDS FOR LOGICAL RECORD LENGTH. */
/* LRCEL SPECIFIES THE MAXIMUM NUMBER OF CHARCTERS SAS SHOULD READ FROM EACH RECORD IN THE INPUT FILE. */

/* _ERROR_ */
/* IF _ERROR_=1, THEN COMPILATION PHASE ONE ERROR IS OCCURED. */

/* _N_ */
/* IT IS USED FOR CREATING ROW NUMBER. */
/* IN COMPILATION TIME SOME ERROR OCCURED, THEN IT GIVE THE ROW NUMBER IN WHICH THE ERROR IS OCCURED. */


/* PDV */
/* PDV STANDS FOR PROGRAMM DATA VECTOR. */
/* PDV IS A LOGICAL AREA OF MEMORY / BACKEND OF SAS THAT IS CREATED DURING THE DATA STEP PROCESSING. */
/* PDV USED TO READ THE CODE ONE BY ONE,THEN EXECUTE THIS & CREATE DATASET. */


/* ================================================================================================================================================================= */
/* ======================================================================================================================================================= */





/* DATE==> 24/04/2024 */

/* SESSION-3 */



/* Q26:---> */
/* ====================== */



/* Q1	EXPLAIN JOIN		 */
/* 		WHAT IS VERTICAL JOIN	 */
/* 		GIVE AN EXAMPLE	 */
/* 			 */
/* 		WHAT IS HORIZONTAL JOIN	 */

/* ANS: */

/* IF WE APPEND TWO TABLES THEN IT IS CALLED AS VERTICAL JOIN. */
/* THAT MEANS ONE TABLE IS JOIN IN THE LAST OF ANOTHER TABLE. */
/* EAXMPLE */
/* WE HAVE TWO TABLE NAME AS EMP1 & EMP2 */
/*  */
/* IF WE APPEND TWO TABLES THEN THE TWO TABLES HAVE SAME COLUMN NAME & DATA TYPE */


/* IF WE MERGE TWO TABLES THEN IT IS CALLED AS HORIZONTAL JOIN. */
/* THAT MEANS ONE TABLE IS JOINED IN THE SIDE OF ANOTHER TABLE. */
/*  */
/* IF WE MERGE TWO TABLES THEN THE TWO TABLES HAVE ONE COMMON COLUMN. */




/* Q2	WRITE THE STEPS INVOLVED BEFORE MERGING TABLE		 */
/* 		EXPLAIN	 */
/* 			INNER JOIN */
/* 			FULL OUTER JOIN */
/* 			 */
/* 			LEFT OUTER JOIN */
/* 			 */
/* 			RIGHT OUTER JOIN */
/* 			 */
/* 			 */
/* 		JOINING WITH	 */
/* 			INTERSECT */
/* 			EXCEPT */

/* ANS: */

/* STEPS INVOVLED IN MERGING TABLE				 */
/* 1. FIND LEFT TABLE & RIGHT TABLE				 */
/* 2. FIND COMMON COLUMN BETWEEN THEM				 */
/* 3. SORT THE TABLE BY USING COMMON COLUMN				 */



/* INNER JOIN */
/* IF THE RECORDS ARE COMMON IN BETWEEN TWO TABLE THEN THIS JOIN IS CALLED INNER JOIN. */

/* FULL OUTER JOIN */
/* IT TAKES ALL THE RECORDS FROM BOTH LEFT & RIGHT TABLE. */

/* LEFT OUTER JOIN */
/* IT TAKES ALL THE RECORDS FROM LEFT TABLE & COMMON RECORDS FROM RIGHT TABLE. */

/* RIGHT OUTER JOIN */
/* IT TAKES ALL THE RECORDS FROM RIGHT TABLE & COMMON RECORDS FROM RIGHT TABLE. */


/* INTERSECT  */
/* IT IS USED TO COMBINE TWO TABLES OF SELECT STATEMENTS. */
/* IT RETURNS ONLY THE ROWS THAT ARE PRESENT/COMMON IN BOTH THE TABLES */

/* EXCEPT */
/* IT IS USED TO SUBSTRACT ONE TABLE FROM ANOTHER TABLE. */
/* THAT MEANS IT RETURNS DISTINCT ROWS FROM THE FIRST TABLE THAT ARE NOT PRESENT IN THE SECOND TABLE. */



/* Q3	EXPLAIN THE TYPES OF RELATIONSHIP. GIVE EXAMPLE					 */
/* ANS: */

/* THERE ARE 4 TYPES OF RELATIONSHIPS				 */
/* 			THAT ARE	 */
/* 			1. ONE TO ONE	 */
/* 			2. ONE TO MANY	 */
/* 			3. MANY TO ONE	 */
/* 			4. MANY TO MANY	 */

/* 1.ONE TO ONE */
/* IF EACH RECORDS FROM ONE TABLE RELATED WITH EACH RECORDS FROM ANOTHER TABLE, THEN RELATIONSHIP IS CALLED ONE TO ONE RELATIONSHIP */

/* 2. ONE TO MANY */
/* IF ONE RECORDS FROM ONE TABLE RELATED WITH MANY RECORD FROM ANOTHER TABLE,THEN THE RELATIONSHIP IS CALLED ONE TO MANY RELATIONSHIP */

/* 3. MANY TO ONE */
/* IT IS OPPOSITE OF ONE TO MANY RELATIONSHIP. */
/* THAT MEANS IF MANY RECORDS FRO ONE TABLE RELATED TO ONE RECORDS FROM ANOTHER TABLE,THEN THE RELATIONSHIP IS CALLED MANY TO ONE RELATIONSHIP */

/* 4. MANY TO MANY */
/* IF MANY RECORDS FROM ONE TABLE RELATED TO MANY RECORD FROM ANOTHER TABLE, THEN THE RELATIONSHIP IS CALLED MANY TO MANY RELATIONSHIP */



/* Q4	EXPLAIN PRIMARY KEY		 */
/* 	EXPLAIN FOREIGN KEY		 */
/* 	EXPLAIN CANDIDATE KEY		 */

/* ANS: */

/* PRIMARY KEY */
/* IT IS UNIQUE IN NATURE. */
/* IT DONOT ALLOW ANY DUPLICATE VALUE AS WELL AS NULL VALUE. */
/* EVERY TABLE HAVING ONLY ONE PRIMARY KEY. */


/* FOREIGN KEY */
/* IT ALLOW DUPLICATE VALUES AS WELL AS NULL VALUES. */
/* THE FOREIGN KEY OF ONE TABLE IS PRIMARY KEY OF ANOTHER TABLE. */
/* EVERY TABLE HAVING ONE OR MORE THAN ONE FOREIGN KEY. */
/* IT IS USED FOR CREATING RELATIONSHIP BETWEEN TWO TABLES. */


/* CANDIDATE KEY */
/* IT IS A SET OF ONE OR MORE COLUMNS THAT CAN UNIQUELY IDENTIFY RACH RECORDS IN A TABLE. */
/* IT IS USED TO ENFORCE ENTITY INTEGRITY, ENSURE DATA UNIQUENESS & ESTABLISH RELATIONSHIP BETWEEN TABLES. */




/* Q5	WHAT IS FACT TABLE	 */
/* 	WHAT IS DIMENSION TABLE	 */
/* 	WHAT IS DATA MODEL	 */
/* 	CAN WE HAVE MORE THAN TWO FACT TABLES IN A DATA MODEL	 */

/* ANS: */

/* FACT TABLE	 */
/* THE TABLE HAVING MORE NUMBER OF RECORDS THEN IT IS CALLED FACT TABLE.	 */
/* THE TABLE HAVING FOREIGN KEY IS ALSO CALLED FACT TABLE.	 */
/* WE CREATE RELATIONSHIP USING FACT TABLE.	 */

				/* 	SALES TABLE */
				/* 	CUST_ID */
				/* 	PRD_ID */
				/* 	SUPPLY_ID */
				/* 	SALES */
				/* 	REVENEUE */


/* DIMENSION TABLE						 */
/* THE TABLE HAVING ONLY UNIQUE VALUES & LESS NUMBER OF RECORDS,THEN IT IS CALLED DIMENSION TABLE.						 */
/* THE TABLE HAVING PRIMARY KEY IS ALSO CALLED DIMENSION TABLE.						 */

/* 			CUSTOMER TABLE			PRODUCT TABEL		SUPPLY TABLE */
/* 			CUST_ID					PRD_ID				SUPPLY_ID */
/* 			CUST_NAME				PRD_NAME			SUPPLY_NAME */
/* 			CUST_DOB				PRD_TYPE			SUPPLY_DATE */
/* 			CUST_AGE					 */



/* DATA MODEL */
/* DATA MODEL IS NOTHING BUT THE DATA STRUCTURE & RELATIONSHIPS.  */
/* IT DEFINES HOW DATA IS ORGANISED, DEFINED, & STORED IN THE DATABASE. */


/* CAN WE HAVE MORE THAN TWO FACT TABLE IN A DATA MODEL */
/* YES */



/* Q6	WHAT IS STAR SCHEMA */
/* 	WHAT IS SNOWFLAKES */

/* ANS: */

/* START SCHEMA */
/* IT IS A TYPE OF DATA MODEL WHERE DIMENSION TABLES RELATED WITH ONLY ONE FACT TABLE. */
/* IT IS A SIMPLEST DATA MODEL. */


/* SNOWFLAKES DATA MODEL */
/* IT IS A TYPE OF DATA MODEL WHERE MANY DIMENSION TABLES RELATED WITH MANY FACT TABLES. */
/* IT IS A COMPLEX DATA MODEL. */
/* IN THIS DATA MODEL, MORE THAN ONE FACT TABLE PRESENT */





/* =============================================================================================================================================================================== */


/* DATE==> 25/04/2024 */

/* Q27:--> */
/* ================ */


OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.SALES1
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/3_FILES/JOIN.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='Sales1';
RUN;


OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.SALES2
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/3_FILES/JOIN.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='Sales2';
RUN;


OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.TABL1
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/3_FILES/JOIN.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='Tabl1';
RUN;


OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.TABL2
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/3_FILES/JOIN.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='Tabl2';
RUN;




/* Q1	APPEND BELOW SALES_1 AND SALES_2				 */


DATA APPENDED_SALES;
SET SSN4.SALES1 SSN4.SALES2;
RUN; 

/* ANOTHER WAY */


DATA SSN4.SALES_COPY1;
SET SSN4.SALES1;
RUN;


PROC APPEND BASE=SSN4.SALES_COPY1 DATA=SSN4.SALES2; 
RUN;

PROC PRINT DATA=SSN4.SALES_COPY1;
RUN;




/* Q2	APPEND BELOW SALES_1 , SALES_2 AND SALES_3									 */
/* 	NOTE BUSINESS WANTS TO APPEND ALL THESE TABLES HAVING ALL THE COLUMNS FROM EACH TABLE									 */


/* WE DONOT HAVE 3RD DATASET OF SALES */



/* Q3	APPEND BOTH THE TABLE USING UNION AND UNION ALL. EXPLAIN THE DIFFERENCE									 */


/* UNION */
/* IT WILL GIVE ONLY UNIQUE RECORDS FROM THE TWO TABLES. */


PROC SQL NUMBER;
CREATE TABLE UNI_TABL AS
SELECT * FROM SSN4.TABL1
UNION 
SELECT * FROM SSN4.TABL2;
QUIT;



/* UNION ALL */
/* IT WILL GIVE ALL THE RECORDS FROM THE TWO TABLES. */

PROC SQL NUMBER;
CREATE TABLE UNI_ALL_TABL AS
SELECT * FROM SSN4.TABL1
UNION ALL 
SELECT * FROM SSN4.TABL2;
QUIT;



/* Q4	Explain what will be the final output?			 */
/* 		Data ABC;		 */
/* 		Set A;		 */
/* 		Set B;		 */
/* 		Set C;		 */
/* 		Run;		 */

/* ANS: */

/* THE LAST SET STATEMENT DATASET THE FINAL OUTPUT. */
/* BECAUSE WHEN WRITE MANY SET STATEMENT THEN IT OVERLAP WITH THE LAST SET STATEMENT,SO THAT LAST SET STATEMENT IS THE OUTPUT */



/* Q5	Explain what will be the final output?			 */
/* 				 */
/* 		Data ABC;		 */
/* 		Set Sales:;		 */
/* 		Run;		 */

/* ANS: */

/* THE OUTPUT IS SALES DATASET. */
/* SET STATEMENT USE TO COPY/STORE THE EXISTING DATASET TO A NEW DATASET. */



/* Q6	Explain what will be the final output?				 */
/* 		Proc Append Data=Sales1 Base=ABC;			 */
/* 		Run;			 */
/* 					 */
/* 		Proc Append Data=Sales2 Base=ABC Force;			 */
/* 		Run;			 */

/* ANS: */

/* IN THE 1ST QUERY THE "ABC" DATASET IS APPENDED TO THE "SALES1" DATASET. */
/* IN THE 2ND QUERY WE FORCEFULLY APPENDED THE "ABC" DATASET TO "SALES2" DATASET. */


/* ================================================================================================================================================== */



/* DATE==> 28/04/2024 */


/* Q28:---> */
/* ======================== */

OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.CUST_DETAILS
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/3_FILES/JOIN.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='Cust_Details';
RUN;


OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.RECHARGE_DUMP
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/3_FILES/JOIN.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='Recharge_Dump';
RUN;


/* STEP-1 */

/* SORT THE DATASETS BY COMMON COLUMN */

PROC SORT DATA=SSN4.cust_details;
BY MOBILE_NUMBER;
RUN;

PROC SORT DATA=SSN4.recharge_dump;
BY MOBILE_NUMBER;
RUN;


/* Q1:--> */
/* =============== */



/* INNER JOIN: */
DATA IN_JOIN_DATA;
MERGE SSN4.cust_details(IN=A) SSN4.recharge_dump(IN=B);
BY MOBILE_NUMBER;
IF A=1 AND B=1;
RUN;

/* ANOTHER WAY */
PROC SQL;
SELECT * FROM SSN4.cust_details AS A
INNER JOIN
SSN4.recharge_dump AS B
ON A.MOBILE_NUMBER=B.MOBILE_NUMBER;
QUIT;




/* FULL JOIN: */
DATA FULL_JOIN_DATA;
MERGE SSN4.cust_details(IN=A) SSN4.recharge_dump(IN=B);
BY MOBILE_NUMBER;
IF A=1 OR B=1;
RUN; 

/* ANOTHER WAY */
PROC SQL;
SELECT * FROM SSN4.cust_details AS A
FULL JOIN
SSN4.recharge_dump AS B
ON A.MOBILE_NUMBER=B.MOBILE_NUMBER;
QUIT;



/* UNMATCH JOIN: */
DATA UNMATCH_JOIN_DATA;
MERGE SSN4.cust_details(IN=A) SSN4.recharge_dump(IN=B);
BY MOBILE_NUMBER;
IF A=0 OR B=0;
RUN; 

/* ANOTHER WAY */
PROC SQL;
SELECT * FROM SSN4.cust_details AS A
FULL JOIN
SSN4.recharge_dump AS B
ON A.MOBILE_NUMBER=B.MOBILE_NUMBER
WHERE A.MOBILE_NUMBER IS NULL OR B.MOBILE_NUMBER IS NULL ;
QUIT;




/* LEFT JOIN: */
DATA LEFT_JOIN_DATA;
MERGE SSN4.cust_details(IN=A) SSN4.recharge_dump(IN=B);
BY MOBILE_NUMBER;
IF A=1 ;
RUN; 

/* ANOTHER WAY */
PROC SQL;
SELECT * FROM SSN4.cust_details AS A
LEFT JOIN
SSN4.recharge_dump AS B
ON A.MOBILE_NUMBER=B.MOBILE_NUMBER;
QUIT;



/* LEFT NULL JOIN: */
DATA LEFT_NULL_JOIN_DATA;
MERGE SSN4.cust_details(IN=A) SSN4.recharge_dump(IN=B);
BY MOBILE_NUMBER;
IF A=1 AND B=0;
RUN; 

/* ANOTHER WAY */
PROC SQL;
SELECT * FROM SSN4.cust_details AS A
LEFT JOIN
SSN4.recharge_dump AS B
ON A.MOBILE_NUMBER=B.MOBILE_NUMBER
WHERE B.MOBILE_NUMBER IS NULL;
QUIT;



/* RIGHT JOIN: */
DATA RIGHT_JOIN_DATA;
MERGE SSN4.cust_details(IN=A) SSN4.recharge_dump(IN=B);
BY MOBILE_NUMBER;
IF B=1;
RUN; 

/* ANOTHER WAY */
PROC SQL;
SELECT * FROM SSN4.cust_details AS A
RIGHT JOIN
SSN4.recharge_dump AS B
ON A.MOBILE_NUMBER=B.MOBILE_NUMBER;
QUIT;


/* RIGHT NULL JOIN: */
DATA RIGHT_NULL_JOIN_DATA;
MERGE SSN4.cust_details(IN=A) SSN4.recharge_dump(IN=B);
BY MOBILE_NUMBER;
IF A=0 AND B=1;
RUN; 

/* ANOTHER WAY */
PROC SQL;
SELECT * FROM SSN4.cust_details AS A
RIGHT JOIN
SSN4.recharge_dump AS B
ON A.MOBILE_NUMBER=B.MOBILE_NUMBER
WHERE A.MOBILE_NUMBER IS NULL;
QUIT;



/* INTERSECT VALUE: */

PROC SQL;
SELECT A.MOBILE_NUMBER,A.CUSTOMER_NAME,A.DOB,A.GENDER,
B.MOBILE_NUMBER,B.DATE_OF_ACTIVATION,B.PLAN,B.OPERATOR
FROM SSN4.cust_details AS A
LEFT JOIN
SSN4.recharge_dumP AS B
ON A.MOBILE_NUMBER=B.MOBILE_NUMBER

INTERSECT

SELECT A.MOBILE_NUMBER,A.CUSTOMER_NAME,A.DOB,A.GENDER,
B.MOBILE_NUMBER,B.DATE_OF_ACTIVATION,B.PLAN,B.OPERATOR
FROM SSN4.cust_details AS A
RIGHT JOIN
SSN4.recharge_dumP AS B
ON A.MOBILE_NUMBER=B.MOBILE_NUMBER;
QUIT;




/* EXCEPT VALUE: */

PROC SQL;
SELECT A.MOBILE_NUMBER,A.CUSTOMER_NAME,A.DOB,A.GENDER,
B.MOBILE_NUMBER,B.DATE_OF_ACTIVATION,B.PLAN,B.OPERATOR
FROM SSN4.cust_details AS A
LEFT JOIN
SSN4.recharge_dumP AS B
ON A.MOBILE_NUMBER=B.MOBILE_NUMBER

EXCEPT

SELECT A.MOBILE_NUMBER,A.CUSTOMER_NAME,A.DOB,A.GENDER,
B.MOBILE_NUMBER,B.DATE_OF_ACTIVATION,B.PLAN,B.OPERATOR
FROM SSN4.cust_details AS A
RIGHT JOIN
SSN4.recharge_dumP AS B
ON A.MOBILE_NUMBER=B.MOBILE_NUMBER;
QUIT;



/* Q2:----> */
/* ================== */


OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.CUSTS_DETAILS
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/3_FILES/JOIN.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='Custs_Details';
RUN;


OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.APPLICATION_DETAILS
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/3_FILES/JOIN.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='Appl_Details';
RUN;




/* Q. GET THE LIST OF CUSTOMER WHO ARE MISSING WITH SALARY AND MONTHLY_DEBT INFORMATION		 */


PROC SQL;
SELECT * FROM SSN4.Application_Details AS A
LEFT JOIN
SSN4.custs_details AS B
ON A.APPLICATION_NUMBER=B.APPLICATION_NUMBER
WHERE B.SALARY IS NULL AND B.MONTHLY_DEBT IS NULL;
QUIT;


/* Q. GET THE CUSTOMER WHO HAS NO DEBT		 */

PROC SQL;
SELECT * FROM SSN4.Application_Details AS A
LEFT JOIN
SSN4.custs_details AS B
ON A.APPLICATION_NUMBER=B.APPLICATION_NUMBER
WHERE B.MONTHLY_DEBT=0;
QUIT;



/* Q. GET THE CUSTOMER WHO ARE MISSING EITHER THEIR DOB AND STATE_CODE OR THEIR EDUCATION AND OCCUPATION DETAILS		 */

PROC SQL;
SELECT * FROM SSN4.Application_Details AS A
FULL JOIN
SSN4.custs_details AS B
ON A.APPLICATION_NUMBER=B.APPLICATION_NUMBER
WHERE A.APPLICATION_NUMBER IS NULL OR B.APPLICATION_NUMBER IS NULL;
QUIT;


/* ANOTHER WAY */

PROC SQL;
SELECT A.APPLICATION_NUMBER,A.DOB, A.STATE_CODE,B.APPLICATION_NUMBER,B.SALARY,B.MONTHLY_DEBT FROM SSN4.Application_Details AS A
FULL JOIN
SSN4.custs_details AS B
ON A.APPLICATION_NUMBER=B.APPLICATION_NUMBER
WHERE A.APPLICATION_NUMBER IS NULL OR B.APPLICATION_NUMBER IS NULL;
QUIT;


/* ====================================================================================================================================================================== */


/* Q29:---> */
/* ========================= */



OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.MOB_TABL1
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/3_FILES/JOINS.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='Mob_Tabl1';
RUN;


OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.MOB_TABL2
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/3_FILES/JOINS.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='Mob_Tabl2';
RUN;

OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.MOB_TABL3
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/3_FILES/JOINS.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='Mob_Tabl3';
RUN;


OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.MOB_PLAN
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/3_FILES/JOINS.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='Mob_plan';
RUN;


OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.PLANS
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/3_FILES/JOINS.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='Plan_Mob';
RUN;


OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.EMPI_PROJECTS
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/3_FILES/JOINS.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='Prj_Emp';
RUN;

OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.PROJECT_SCORES
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/3_FILES/JOINS.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='Prj_Scr';
RUN;


OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.CUSTM_EXPN
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/3_FILES/JOINS.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='Cust_exp';
RUN;

OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.CUSTM_RATIO
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/3_FILES/JOINS.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='Cust_ratio';
RUN;

/* STEP-1 */
/* SORT ALL THE DATASETS. */

PROC SORT DATA=SSN4.mob_tabl1;
BY MOBILE_NUMBER;
RUN;


PROC SORT DATA=SSN4.mob_tabl2;
BY MOBILE_NUMBER;
RUN;


PROC SORT DATA=SSN4.mob_tabl3;
BY MOBILE_NUMBER;
RUN;


PROC SORT DATA=SSN4.MOB_PLAN;
BY PLAN;
RUN;

PROC SORT DATA=SSN4.PLANS;
BY PLAN;
RUN;


PROC SORT DATA=SSN4.EMPI_PROJECTS;
BY PROJECT;
RUN;

PROC SORT DATA=SSN4.PROJECT_SCORES;
BY PROJECT;
RUN;



PROC SORT DATA=SSN4.CUSTM_EXPN;
BY CUSTOMER;
RUN;

PROC SORT DATA=SSN4.CUSTM_RATIO;
BY CUSTOMER;
RUN;



/* Q1	EXPLAIN THE RELATIONSHIP		 */
/* 			 */
/* 	GET THE NUMBER OF RECORDS YOU GET IN 	 */
/* 		INNER JOIN	 */
/* 		FULL JOIN	 */
/* 		UN-MATCHED JOIN	 */
/* 		LEFT JOIN	 */
/* 		LEFT NULL JOIN	 */
/* 		RIGHT JOIN	 */
/* 		RIGHT NULL JOIN	 */



/* INNER JOIN: */
DATA INN_TABS;
MERGE SSN4.MOB_TABL1 (IN=A) SSN4.MOB_TABL2 (IN=B);
BY MOBILE_NUMBER;
IF A=1 AND B=1;
RUN;


/* FULL JOIN: */
DATA FULL_TABS;
MERGE SSN4.MOB_TABL1 (IN=A) SSN4.MOB_TABL2 (IN=B);
BY MOBILE_NUMBER;
IF A=1 OR B=1;
RUN;


/* UNMATCH JOIN: */
DATA UNMATCH_TABS;
MERGE SSN4.MOB_TABL1 (IN=A) SSN4.MOB_TABL2 (IN=B);
BY MOBILE_NUMBER;
IF A=0 OR B=0;
RUN;


/* LEFT JOIN: */
DATA LEFT_TABS;
MERGE SSN4.MOB_TABL1 (IN=A) SSN4.MOB_TABL2 (IN=B);
BY MOBILE_NUMBER;
IF A=1;
RUN;

/* LEFT NULL JOIN: */
DATA LEFT_NULL_TABS;
MERGE SSN4.MOB_TABL1 (IN=A) SSN4.MOB_TABL2 (IN=B);
BY MOBILE_NUMBER;
IF A=1 AND B=0;
RUN;


/* RIGHT JOIN: */
DATA RIGHT_TABS;
MERGE SSN4.MOB_TABL1 (IN=A) SSN4.MOB_TABL2 (IN=B);
BY MOBILE_NUMBER;
IF B=1;
RUN;

/* RIGHT NULL JOIN: */
DATA RIGHT_NULL_TABS;
MERGE SSN4.MOB_TABL1 (IN=A) SSN4.MOB_TABL2 (IN=B);
BY MOBILE_NUMBER;
IF A=0 AND B=1;
RUN;




/* Q2	EXPLAIN THE RELATIONSHIP	 */
/* 		 */
/* 	GET THE NUMBER OF RECORDS YOU GET IN 	 */
/* 		INNER JOIN */
/* 		FULL JOIN */
/* 		UN-MATCHED JOIN */
/* 		LEFT JOIN */
/* 		LEFT NULL JOIN */
/* 		RIGHT JOIN */
/* 		RIGHT NULL JOIN */



/* INNER JOIN: */
DATA INN_TABS2;
MERGE SSN4.MOB_TABL1 (IN=A) SSN4.MOB_TABL3 (IN=B);
BY MOBILE_NUMBER;
IF A=1 AND B=1;
RUN;


/* FULL JOIN: */
DATA FULL_TABS2;
MERGE SSN4.MOB_TABL1 (IN=A) SSN4.MOB_TABL3 (IN=B);
BY MOBILE_NUMBER;
IF A=1 OR B=1;
RUN;


/* UNMATCH JOIN: */
DATA UNMATCH_TABS2;
MERGE SSN4.MOB_TABL1 (IN=A) SSN4.MOB_TABL3 (IN=B);
BY MOBILE_NUMBER;
IF A=0 OR B=0;
RUN;


/* LEFT JOIN: */
DATA LEFT_TABS2;
MERGE SSN4.MOB_TABL1 (IN=A) SSN4.MOB_TABL3 (IN=B);
BY MOBILE_NUMBER;
IF A=1;
RUN;

/* LEFT NULL JOIN: */
DATA LEFT_NULL_TABS2;
MERGE SSN4.MOB_TABL1 (IN=A) SSN4.MOB_TABL3 (IN=B);
BY MOBILE_NUMBER;
IF A=1 AND B=0;
RUN;


/* RIGHT JOIN: */
DATA RIGHT_TABS2;
MERGE SSN4.MOB_TABL1 (IN=A) SSN4.MOB_TABL3 (IN=B);
BY MOBILE_NUMBER;
IF B=1;
RUN;

/* RIGHT NULL JOIN: */
DATA RIGHT_NULL_TABS2;
MERGE SSN4.MOB_TABL1 (IN=A) SSN4.MOB_TABL3 (IN=B);
BY MOBILE_NUMBER;
IF A=0 AND B=1;
RUN;



/* Q3	EXPLAIN THE RELATIONSHIP	 */
/* 		 */
/* 	GET THE NUMBER OF RECORDS YOU GET IN 	 */
/* 		INNER JOIN */
/* 		FULL JOIN */
/* 		UN-MATCHED JOIN */
/* 		LEFT JOIN */
/* 		LEFT NULL JOIN */
/* 		RIGHT JOIN */
/* 		RIGHT NULL JOIN */



/* INNER JOIN: */
DATA INN_TABS3;
MERGE SSN4.MOB_PLAN (IN=A) SSN4.PLANS (IN=B);
BY PLAN;
IF A=1 AND B=1;
RUN;


/* FULL JOIN: */
DATA FULL_TABS3;
MERGE SSN4.MOB_PLAN (IN=A) SSN4.PLANS (IN=B);
BY PLAN;
IF A=1 OR B=1;
RUN;


/* UNMATCH JOIN: */
DATA UNMATCH_TABS3;
MERGE SSN4.MOB_PLAN (IN=A) SSN4.PLANS (IN=B);
BY PLAN;
IF A=0 OR B=0;
RUN;


/* LEFT JOIN: */
DATA LEFT_TABS3;
MERGE SSN4.MOB_PLAN (IN=A) SSN4.PLANS (IN=B);
BY PLAN;
IF A=1;
RUN;

/* LEFT NULL JOIN: */
DATA LEFT_NULL_TABS3;
MERGE SSN4.MOB_PLAN (IN=A) SSN4.PLANS (IN=B);
BY PLAN;
IF A=1 AND B=0;
RUN;


/* RIGHT JOIN: */
DATA RIGHT_TABS3;
MERGE SSN4.MOB_PLAN (IN=A) SSN4.PLANS (IN=B);
BY PLAN;
IF B=1;
RUN;

/* RIGHT NULL JOIN: */
DATA RIGHT_NULL_TABS3;
MERGE SSN4.MOB_PLAN (IN=A) SSN4.PLANS (IN=B);
BY PLAN;
IF A=0 AND B=1;
RUN;




/* Q4	EXPLAIN THE RELATIONSHIP	 */
/* 		 */
/* 	GET THE NUMBER OF RECORDS YOU GET IN 	 */
/* 		INNER JOIN */
/* 		FULL JOIN */
/* 		UN-MATCHED JOIN */
/* 		LEFT JOIN */
/* 		LEFT NULL JOIN */
/* 		RIGHT JOIN */
/* 		RIGHT NULL JOIN */



/* INNER JOIN: */
DATA INN_TABS4;
MERGE SSN4.EMPI_PROJECTS (IN=A) SSN4.PROJECT_SCORES (IN=B);
BY PROJECT;
IF A=1 AND B=1;
RUN;


/* FULL JOIN: */
DATA FULL_TABS4;
MERGE SSN4.EMPI_PROJECTS (IN=A) SSN4.PROJECT_SCORES (IN=B);
BY PROJECT;
IF A=1 OR B=1;
RUN;


/* UNMATCH JOIN: */
DATA UNMATCH_TABS4;
MERGE SSN4.EMPI_PROJECTS (IN=A) SSN4.PROJECT_SCORES (IN=B);
BY PROJECT;
IF A=0 OR B=0;
RUN;


/* LEFT JOIN: */
DATA LEFT_TABS4;
MERGE SSN4.EMPI_PROJECTS (IN=A) SSN4.PROJECT_SCORES (IN=B);
BY PROJECT;
IF A=1;
RUN;

/* LEFT NULL JOIN: */
DATA LEFT_NULL_TABS4;
MERGE SSN4.EMPI_PROJECTS (IN=A) SSN4.PROJECT_SCORES (IN=B);
BY PROJECT;
IF A=1 AND B=0;
RUN;


/* RIGHT JOIN: */
DATA RIGHT_TABS4;
MERGE SSN4.EMPI_PROJECTS (IN=A) SSN4.PROJECT_SCORES (IN=B);
BY PROJECT;
IF B=1;
RUN;

/* RIGHT NULL JOIN: */
DATA RIGHT_NULL_TABS4;
MERGE SSN4.EMPI_PROJECTS (IN=A) SSN4.PROJECT_SCORES (IN=B);
BY PROJECT;
IF A=0 AND B=1;
RUN;



/* Q5	GET THE RECORDS 	 */
/* 		INNER JOIN */
/* 		FULL JOIN */
/* 		UN-MATCHED JOIN */
/* 		LEFT JOIN */
/* 		LEFT NULL JOIN */
/* 		RIGHT JOIN */
/* 		RIGHT NULL JOIN */



/* INNER JOIN: */
DATA INN_TABS5;
MERGE SSN4.CUSTM_EXPN (IN=A) SSN4.CUSTM_RATIO (IN=B);
BY CUSTOMER;
IF A=1 AND B=1;
RUN;


/* FULL JOIN: */
DATA FULL_TABS5;
MERGE SSN4.CUSTM_EXPN (IN=A) SSN4.CUSTM_RATIO (IN=B);
BY CUSTOMER;
IF A=1 OR B=1;
RUN;


/* UNMATCH JOIN: */
DATA UNMATCH_TABS5;
MERGE SSN4.CUSTM_EXPN (IN=A) SSN4.CUSTM_RATIO (IN=B);
BY CUSTOMER;
IF A=0 OR B=0;
RUN;


/* LEFT JOIN: */
DATA LEFT_TABS5;
MERGE SSN4.CUSTM_EXPN (IN=A) SSN4.CUSTM_RATIO (IN=B);
BY CUSTOMER;
IF A=1;
RUN;

/* LEFT NULL JOIN: */
DATA LEFT_NULL_TABS5;
MERGE SSN4.CUSTM_EXPN (IN=A) SSN4.CUSTM_RATIO (IN=B);
BY CUSTOMER;
IF A=1 AND B=0;
RUN;


/* RIGHT JOIN: */
DATA RIGHT_TABS5;
MERGE SSN4.CUSTM_EXPN (IN=A) SSN4.CUSTM_RATIO (IN=B);
BY CUSTOMER;
IF B=1;
RUN;

/* RIGHT NULL JOIN: */
DATA RIGHT_NULL_TABS5;
MERGE SSN4.CUSTM_EXPN (IN=A) SSN4.CUSTM_RATIO (IN=B);
BY CUSTOMER;
IF A=0 AND B=1;
RUN;



/* ========================================================================================================================================================== */



/* Q30:----> */
/* ====================== */

OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.EMPL_PERF
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/3_FILES/EMP_PERF_2019.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='EMPLOYEE_PRFORMANCE';
RUN;

OPTIONS VALIDVARNAME=V7;			
PROC IMPORT OUT=SSN4.EMPL_MAST
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/3_FILES/EMPLOYEE_MASTER.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='EMPLOYEE_MASTER';
RUN;

OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.PRJ_MAST
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/3_FILES/PROJECT_MASTER.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='PROJECT_MASTER';
RUN;



/* DESIGN A DATA MODEL BY MAPPING ALL THESE THREE TABLE TO GET  */

PROC SQL;

CREATE TABLE SSN4.EMPL_PRJ_MASTER AS
SELECT A.EMP_ID,B.YOE,B.SALARY,A.PROJECT_ID,C.PROJECT_NAME,C.DAYS_TO_COMPLETE,C.PROJECT_COST,A.PROJECT_STATUS,A.DAYS_TAKEN
FROM SSN4.EMPL_PERF AS A
LEFT JOIN
SSN4.EMPL_MAST AS B
ON A.EMP_ID=B.EMP_ID
LEFT JOIN
SSN4.PRJ_MAST AS C
ON A.PROJECT_ID=C.PROJECT_ID;

QUIT;


DATA MS;
SET SSN4.empl_prj_master;
RUN;

/* 1.IF THE PROJECT COST IS MORE THAN 2  MILLION CALL THE PROJECT CATEGORY AS "CAT-A" ELSE "CAT-B" */

DATA SSN4.MASTER_DATA;
SET SSN4.empl_prj_master;
IF PROJECT_COST>2000000 THEN PROJECT_CATEGORY='CAT-A';
ELSE PROJECT_CATEGORY='CAT-B';
RUN;

/* ANOTHER WAY */
PROC SQL;
SELECT *,
CASE
	WHEN PROJECT_COST>2000000 THEN 'CAT-A'
	ELSE 'CAT-B'
	END AS PROJECT_CATEGORY
	FROM SSN4.empl_prj_master;
QUIT;

/* 2.GET THE NUMEBR OF EMPLOYEES WHOSE SALARY AND YOE IS MISSING 
AND CALL THEM AS THE INTERN AND REST AND REGULAR */


/* EMPLOYEES WHOSE SALARY AND YOE IS MISSING */
DATA SSN4.MASTER_DATA;
SET SSN4.empl_prj_master;
IF YOE =' ' AND SALARY=' ' THEN OUTPUT;
RUN;

/* FINAL ANSWER */
DATA SSN4.MASTER_DATA;
SET SSN4.MASTER_DATA;
IF YOE =' ' AND SALARY=' ' THEN JOBTITLE='INTERN';
ELSE JOBTITLE='REGULAR';
RUN;



/* ANOTHER WAY */

/* EMPLOYEES WHOSE SALARY AND YOE IS MISSING */
PROC SQL;
SELECT * FROM SSN4.empl_prj_master
WHERE YOE IS NULL AND SALARY IS NULL;
QUIT;

/* FINAL ANSWER */
PROC SQL;
SELECT *,
CASE
	WHEN YOE IS NULL AND SALARY IS NULL THEN 'INTERN'
	ELSE 'REGULAR'
	END AS JOBTITLE
	FROM SSN4.empl_prj_master;
QUIT;



/* 3.PUT SALARY TO INTERN DEFAULT AS 30000 PM */
PROC SQL;
UPDATE SSN4.MASTER_DATA
SET SALARY=30000
WHERE JOBTITLE='INTERN';
QUIT;

PROC PRINT DATA=SSN4.master_data;
RUN;


/* 4.GET EMPLYEE HAVING MORE THAN 12 YEARS OF EXP AND SR.MANAGERS, 
7 TO 12 YEARS OF EXP AS MANAGER, 3-6 YEARS OF EXP AS ASST.MANAGER,REST AS ANALYST */

PROC SQL;
CREATE TABLE SSN4.MASTER_DATA AS
SELECT *,
CASE 
	WHEN YOE>12 THEN 'SR.MANAGERS'
	WHEN YOE>=7 THEN 'MANAGER'
	WHEN YOE>=6 THEN 'ASST.MANAGER'
	ELSE 'ANALYST'
	END AS JOB_PROFILE
	FROM SSN4.MASTER_DATA;
QUIT;


/* 5.GET THE NUMBER OF PROJECTS COMPLETED BEFORE AND AFTER THE ALLOTTED DAYS */

PROC SQL;
CREATE TABLE SSN4.MASTER_DATA AS
SELECT *,
CASE 
	WHEN PROJECT_STATUS='COMPLETED' AND DAYS_TAKEN<=DAYS_TO_COMPLETE THEN 'BEFORE ALLOCATED DAYS'
	ELSE 'AFTER ALLOCATED DAYS'
	END AS COMPLETION_STATUS
	FROM SSN4.MASTER_DATA;
QUIT;



/* 6.KEEP 50% OF THE PROJECT COST AS COMPANY RESERVE AND 50% TO EMPLOYEE EXPENSES AS UNDER COST_CATEGORY */

/* CREATE NEW COLUMNS */
PROC SQL;
ALTER TABLE SSN4.MASTER_DATA
ADD  COMPANY_RESERVE FLOAT, COST_CATEGORY FLOAT;
QUIT;

/* 50% OF THE PROJECT COST AS COMPANY RESERVE */
PROC SQL;
UPDATE SSN4.MASTER_DATA
SET COMPANY_RESERVE=0.5*PROJECT_COST;
QUIT;

50% TO EMPLOYEE EXPENSES AS UNDER COST_CATEGORY
PROC SQL;
UPDATE SSN4.MASTER_DATA
SET COST_CATEGORY=0.5*SALARY;
QUIT;

PROC PRINT DATA=SSN4.MASTER_DATA;
RUN;


/* 7.ANY PROJECT COMPLETED BEFORE ALLOTED TIME 
GIVE ALL THE EMPLYEE FOR THAT PROJECT AS A BONUS OF 70% OF THEIR MONTHLY SALARY */

PROC SQL;
UPDATE SSN4.MASTER_DATA
SET SALARY=SALARY+(0.7*SALARY)
WHERE COMPLETION_STATUS='BEFORE ALLOCATED DAYS';
QUIT;

PROC PRINT DATA=SSN4.master_data;
RUN;


/* 8.GET THE EMPLYEES WHO HAVE COMPLETED THE PROJECT LESS THAN 10 DAYS 
AND CALL THEM CHAMP AND PROVIDE THEM EXTRA BONUS OF 50% OF THEIR MONTHLY SALARY */


/* EMPLYEES WHO HAVE COMPLETED THE PROJECT LESS THAN 10 DAYS AND CALL THEM CHAMP */

PROC SQL;
UPDATE SSN4.MASTER_DATA
SET COMPLETION_STATUS='CHAMP'
WHERE DAYS_TAKEN<10;
QUIT;

PROC PRINT DATA=SSN4.master_data;
RUN;

/* FINAL ANSWER */

PROC SQL;
UPDATE SSN4.MASTER_DATA
SET SALARY=SALARY+(0.5*SALARY)
WHERE COMPLETION_STATUS='CHAMP' ;
QUIT;

PROC PRINT DATA=SSN4.master_data;
RUN;


/* 9.AFTER GIVING ALL THE BONUS AND SALARY GET THE FINAL PROJECT COST REMAIN TO EMPLOYEE EXPENSES */

/* CREATE NEW COLUMNS */
PROC SQL;
ALTER TABLE SSN4.MASTER_DATA
ADD  FINAL_PROJECT_COST FLOAT;
QUIT;

/* FINAL ANSWER */
PROC SQL;
UPDATE SSN4.MASTER_DATA
SET FINAL_PROJECT_COST=PROJECT_COST-(SALARY);
QUIT;

PROC PRINT DATA=SSN4.master_data;
RUN;


/* =============================================================================================================================================== */







/* Q1	WHAT IS FACT TABLE? */
/* ANS:--> */

/* FACT TABLE IS A TABLE HAVING LARGE NUMBER OF RECORDS. */
/* FACT TABLE HAVING FOREIGN KEY WHICH IS USED FOR CREATE A RELATIONSHIP WITH ANOTHER TABLE. */
/* FACT TABLE HAVING DUPICATES VALUES. */


/* Q2	WHAT IS DIMENSION TABLE? */
/* ANS:--> */

/* DIMENSION TABLE IS A TABLE HAVING LESS NUMBER OF RECORDS AS COMPARE TO FACT TABLE BECAUSE IT WILL HAVE ONLY UNIQUE RECORDS. */
/* DIMENSION TABLE HAVING PRIMARY KEY. */
/* FACT TABLE'S FOREIGN KEY CREATE WITH DIMENSION TABLE'S PRIMARY KEY. */
/* DIMENSION TABLE DO NOT HAVE ANY DUPLICATE VALUES. */


/* Q3	WHAT IS DATA MODEL? */
/* ANS:--> */

/* IT IS NOTHING BUT DATA STRUCTURE OF A TABLE.THAT MEANS HOW TABLES ARE RELATED WITH EACH OTHER,WHAT ARE THE COMMON COLUMN IN THIS WE EASYLY KNOWN FROM THIS. */
/* IT IS NOTHING BUT THE DESGIN OF RELATIONSHIP OF TABLES. */



/* Q4	WHAT IS STARSCHEMA? */
/* ANS:--> */

/* IF THE FACT TABLE CREAT RELATIONSHIP BETWEEN OTHER DIMENSION TABLES AND THE STRUCTURE LOOKS LIKE A STAR THEN IT IS STAR SCHEMA DATA MODEL */
/* IN STAR SCHEMA DATA MODEL THERE IS ONLY ONE FACT TABLE  */



/* Q5	WHAT IS SNOWFLAKES? */
/* ANS:---> */

/* IT IS ALSO CALLED AS COMPLEX DATA MODEL. */
/* IN THIS DATA MODEL FACT TABLE CREATE RELATIONSHIP WITH  DIMENSION TABLES AND ALSO DIMENSION CREATE RELATIONSHIP WITH OTHER DIMENSION TABLE. */
/* THERE IS NO DIRECT CONNECTION BETWEEN FACT TABLE AND THOSE DIMENSION TABLE WHO CREATE A RELATIONSHIP BETWEEN OTHER DIMENSION TABLE. */


/* Q8	CAN WE HAVE MORE THAN 1 FACT TABLE IN A DATA MODEL? */
/* ANS:---> */

/* YES */




/* ================================================================================================================================================================= */



/* DATE--> 01/05/2024 */



/* Q32:-----> */
/* ====================== */


/* BUSSINESS CASE-2: */
/* =================== */


/* BANKING PROJECT: */
/* =========================== */


OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.BANK
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/1_RAW_DATA/BUSSINES_CASE_STUDIES/BUSSINESS.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='BANK';
RUN;


PROC PRINT DATA=SSN4.BANK;
RUN;


/* Q1	CREATE A DELINQUENCY BUCKET	 */
/* 	DELINQUENT_DAYS=0	CURRENT */
/* 	DELINQUENT_DAYS<=30	X DAYS */
/* 	DELINQUENT_DAYS> 30 AND DELINQUENT_DAYS<=60	X+1 DAYS */
/* 	DELINQUENT_DAYS> 60 AND DELINQUENT_DAYS<=90	X+2 DAYS */
/* 	DELINQUENT_DAYS> 90 AND DELINQUENT_DAYS<=120	X+3 DAYS */
/* 	DELINQUENT_DAYS> 120 AND DELINQUENT_DAYS<=150	X+4 DAYS */
/* 	DELINQUENT_DAYS> 150 AND DELINQUENT_DAYS<=180	X+5 DAYS */
/* 	DELINQUENT_DAYS> 180	CO */


PROC SQL;
CREATE TABLE SSN4.BANK_NEW AS
SELECT *,
CASE
	WHEN DELINQUENT_DAYS>180 THEN 'CO'
	WHEN DELINQUENT_DAYS>150 AND DELINQUENT_DAYS<=180 THEN 'X+5 DAYS'
	WHEN DELINQUENT_DAYS>120 AND DELINQUENT_DAYS<=150 THEN 'X+4 DAYS'
	WHEN DELINQUENT_DAYS>90 AND DELINQUENT_DAYS<=120 THEN 'X+3 DAYS'
	WHEN DELINQUENT_DAYS>60 AND DELINQUENT_DAYS<=90 THEN 'X+2 DAYS'
	WHEN DELINQUENT_DAYS>30 AND DELINQUENT_DAYS<=60 THEN 'X+1 DAYS'
	WHEN DELINQUENT_DAYS<=30 AND DELINQUENT_DAYS>0 THEN 'X DAYS'
	WHEN DELINQUENT_DAYS=0 THEN 'CURRENT'
	ELSE 'NA'
	END AS DELIQUENCY_BUCKET
FROM SSN4.BANK;
QUIT;


PROC PRINT DATA=SSN4.BANK_NEW;
RUN;



/* Q2	GET THE CUSTOMER BASE BY EACH DELINQUENT_BUKCET					 */

PROC SQL;
SELECT PORTFOLIO,DELIQUENCY_BUCKET,COUNT(ACCOUNT_NUMBER) AS CUSTOMER_BASE FROM SSN4.BANK_NEW
GROUP BY PORTFOLIO,DELIQUENCY_BUCKET
ORDER BY PORTFOLIO,DELIQUENCY_BUCKET;
QUIT;


/* GET THE CUSTOMER BASE % BY EACH DELINQUENT_BUKCET					 */

PROC SQL;
SELECT PORTFOLIO,DELIQUENCY_BUCKET,(COUNT(ACCOUNT_NUMBER)/(SELECT COUNT(ACCOUNT_NUMBER) FROM SSN4.BANK_NEW))*100 AS CUSTOMER_BASE_PER FROM SSN4.BANK_NEW
GROUP BY PORTFOLIO,DELIQUENCY_BUCKET
ORDER BY PORTFOLIO,DELIQUENCY_BUCKET;
QUIT;



/* Q3	GET THE SUM OF OUTSTANDING BALANCE BY EACH DELINQUENT BUCKET						 */

PROC SQL;
SELECT PORTFOLIO,DELIQUENCY_BUCKET,SUM(OUTSTANDING) AS TOTAL_OUTSTN_BALANCE FROM SSN4.BANK_NEW
GROUP BY PORTFOLIO,DELIQUENCY_BUCKET
ORDER BY PORTFOLIO,DELIQUENCY_BUCKET;
QUIT;



/* GET THE SUM OF OUTSTANDING BALANCE % BY EACH DELINQUENT BUCKET */

PROC SQL;
SELECT PORTFOLIO,DELIQUENCY_BUCKET,(SUM(OUTSTANDING)/(SELECT SUM(OUTSTANDING) FROM SSN4.BANK_NEW))*100 AS CUSTOMER_BASE_PER FROM SSN4.BANK_NEW
GROUP BY PORTFOLIO,DELIQUENCY_BUCKET
ORDER BY PORTFOLIO,DELIQUENCY_BUCKET;
QUIT;




/* Q4	BASED ON OUTSTANDING BALANCE AND DELINQUENT DAYS DEFINE CUSTOMERS INTO RISK CATEGORY AS									 */


/* STEP-1 */
/* OUTSTAND BALANCE IN PERCENTAGE */
PROC SQL;
CREATE TABLE SSN4.OUT_BAL_PERT AS
SELECT ACCOUNT_NUMBER,((OUTSTANDING/LOAN_AMOUNT)*100) AS OUT_BALANCE_PER AS OUT_BAL_PER FROM SSN4.BANK_NEW;
QUIT;

/* DELIQUENCY DAYS ARE IN OUR DATASET. */

/* STEP-2 */
/* SO WE JOIN THE TABLE OUT_BAL_PERT TO BANK_NEW DATASET BY USING COMMON COLUMN THAT IS ACCOUNT_NUMBER */
PROC SQL;
CREATE TABLE SSN4.BANK_NEW AS
SELECT * FROM SSN4.BANK_NEW AS A
LEFT JOIN
SSN4.OUT_BAL_PERT AS B
ON A.ACCOUNT_NUMBER=B.ACCOUNT_NUMBER;
QUIT;

/* STEP-3 */
/* NOW WE ARE GOING TO CREATE RISK CATEGORY COLUMN */
PROC SQL;
SELECT *,
CASE 
	WHEN OUT_BAL_PER>50 AND DELINQUENT_DAYS>60 THEN 'HIGH RISK'
	WHEN OUT_BAL_PER>10 AND DELINQUENT_DAYS<=60 THEN 'MEDIUM RISK'
	WHEN OUT_BAL_PER<=10 AND DELINQUENT_DAYS<=30 THEN 'LOW RISK'
	ELSE 'NO RISK'
	END AS RISK_CATEGORY
	FROM SSN4.BANK_NEW;
	
QUIT;



/* =================================================================================================================================================================== */



/* Q33:----> */
/* ===================== */




/* Q1	USE Q-32 RETAIL PROJECT	 */
/* 	IMPORT	 */
/* 		CUSTOMER_TRANSACTION_DATA_2018 */
/* 		CUSTOMER_TRANSACTION_DATA_2019 */
/* 		CUSTOMER_DETAILS */
/* 		STORE_DETAIL */
/* 		PRODUCT_DETAILS */
/* 		STOCKS */



/* 		CUSTOMER_TRANSACTION_DATA_2018 */
OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.CUSTOMER_TRANSACTION_DATA_2018
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/1_RAW_DATA/RETAIL_PROJECT/RETAIL PROJECT.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='CUSTOMER_TRANSACTION_DATA_2018';
RUN;


/* 		CUSTOMER_TRANSACTION_DATA_2019 */
OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.CUSTOMER_TRANSACTION_DATA_2019
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/1_RAW_DATA/RETAIL_PROJECT/RETAIL PROJECT.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='CUSTOMER_TRANSACTION_DATA_2019';
RUN;


/* 		CUSTOMER_DETAILS */
OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.CUSTOMER_DETAILS
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/1_RAW_DATA/RETAIL_PROJECT/RETAIL PROJECT.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='CUSTOMER_DETAILS';
RUN;



/* 		STORE_DETAIL */
OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.STORE_DETAIL
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/1_RAW_DATA/RETAIL_PROJECT/RETAIL PROJECT.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='STORE_DETAIL';
RUN;


/* 		PRODUCT_DETAILS */
OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.PRODUCT_DETAILS
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/1_RAW_DATA/RETAIL_PROJECT/RETAIL PROJECT.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='PRODUCT_DETAILS';
RUN;



/* 		STOCKS */
OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.STOCKS
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/1_RAW_DATA/RETAIL_PROJECT/RETAIL PROJECT.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='STOCKS';
RUN;





/* Q2	DESIGN A DATA MODEL		 */

/* 	APPEND	CUSTOMER_TRANSACTION_DATA_2018	 */
/* 			CUSTOMER_TRANSACTION_DATA_2019	 */

/* 	CREATE NEW TABLE SALES_2018_2019		 */



PROC SQL;
CREATE TABLE SSN4.SALES_2018_2019 AS
SELECT * FROM SSN4.CUSTOMER_TRANSACTION_DATA_2018
UNION ALL
SELECT * FROM SSN4.CUSTOMER_TRANSACTION_DATA_2019;
QUIT;



/* MAP THIS TO 	 */
/* 	CUSTOMER_DETAILS */
/* 	STORE_DETAIL */
/* 	PRODUCT_DETAILS */
/* 	STOCKS */


PROC SQL;
SELECT
A.CUSTOMER_ID,
B.CUSTOMER_NAME,
B.DOB,
B.GENDER,
B.STORE_ID,
D.SUPER_MARKET_NAME,
D.LOCATION,
A.STORE_ID,
A.CUSTOMER_NUM,
A.TRANSACTION_DATE,
A.PROD_ID,
E.PROD_NAME,
E.PRODUCT_SEGMENT,
E.PRODUCT_CATEGORY,
E.SUB_CATEGORY,
E.MEAUSRE,
E.QTY,
E.ACTUAL_PRICE,
E.STORE_ID,
E.STOCK,
C.PROD_NAME,
C.PRODUCT_SEGMENT,
C.PRODUCT_CATEGORY,
C.SUB_CATEGORY,
C.MEAUSRE,
C.QTY,
C.ACTUAL_PRICE,
A.QTY,
B.IND_ID
FROM SSN4.SALES_2018_2019 AS A
LEFT JOIN
SSN4.CUSTOMER_DETAILS AS B
ON A.CUSTOMER_ID=B.CUSTOMER_ID 
AND
A.STORE_ID=B.STORE_ID
LEFT JOIN
SSN4.PRODUCT_DETAILS AS C
ON A.PROD_ID=C.PROD_ID
LEFT JOIN 
SSN4.STORE_DETAIL AS D
ON B.STORE_ID=D.STORE_ID
LEFT JOIN
SSN4.STOCKS AS E 
ON B.STORE_ID=E.STORE_ID
AND 
C.PROD_ID=E.PROD_ID;
QUIT;



/* Q3	From SALES_2018_2019 table */
/* 	Get each month wise each store wise top 30 customer as Premier and rest all into Non-Premier customer category */
/* 	Get each month and store  wise Product_category, Sub_Category wise top 3 product as "Premier-Product" else "Non-Premier Product" */




/* ============================================================================================================================================================================ */





/* DATE--> 30/04/2024 */



/* SESSION-4: */


/* Q34:---> */
/* =================== */


OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.TABL1
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/3_FILES/DATASETS.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='TABL1';
RUN;



/* Q1	Write SAS Program to reposition the variable as order given below				 */
/* 					STUDENT */
/* 					EXCEL */
/* 					SQL */
/* 					SAS */
/* 					R */
/* 					PYTHON */
/* 					TABLEAU */


DATA SSN4.STD_TAB1;
RETAIN STUDENT EXCEL SQL SAS R PYTHON TABLEAU;
SET SSN4.tabl1;
RUN;



/* Q2	Get the cumulative sum of SAS,R and Python  */

DATA SSN4.STD_TAB1;
RETAIN STUDENT EXCEL SQL SAS R PYTHON TABLEAU;
SET SSN5.tabl1;
	CUM_SAS=0;
	CUM_PYTHON=0;
	CUM_R=0;
		DO CUM=1 TO 12;
		CUM_SAS+SAS;
		CUM_PYTHON+PYTHON;
		CUM_R+R;
		OUTPUT;
	END;
DROP CUM;
RUN;


PROC PRINT DATA=SSN4.STD_TAB1;
RUN;


/* =================================================================================================================================== */



/* Q35:---> */
/* ===================== */

OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.TABL2
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/3_FILES/DATASETS.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='TABL2';
RUN;




/* Q1	Get the sum of Score for all Subject using expression by */
/* 	SUM Function as + (addition) */


DATA SSN4.TABL2_TOTAL_V1;
SET SSN4.tabl2;
TOTAL_SCORE1=SAS+R+SQL+EXCEL+PYTHON+TABLEAU;
TOTAL_SCORE2=SUM(SAS,R,SQL,EXCEL,PYTHON,TABLEAU);
RUN;


/* Q2	Explain the difference between Sum and addition */
/* ANS:--> */

/* IF NULL VALUES ARE PRESENT INSIDE A COLUMN THEN IN ADDITION,IT WILL NOT GIVE THE ANSWER. */
/* BUT IN SUM IF NULL VALUES ARE PRESENT IT WILL GIVE THE ANSWER */



/* ===================================================================================================================================================== */


/* Q36:----> */
/* ====================== */


OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.TABL3
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/3_FILES/DATASETS.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='TABL3';
RUN;


/* Q1	Use first. to get the highest score by each stu_name */

/* STEP-1 */
/* SORT THE DATASET */
PROC SORT DATA=SSN4.tabl3;
BY STU_NAME DESCENDING SCORE ;

/* STEP-2 */
DATA SSN4.TABL3_DATA;
SET SSN4.TABL3;
BY STU_NAME DESCENDING SCORE;

IF FIRST.STU_NAME THEN FIRST=1;
ELSE FIRST=0;

RUN;


/* FINAL RESULT */
DATA MAX_DATA;
SET SSN4.TABL3_DATA;
IF FIRST=1 THEN OUTPUT;
RUN;


/* ANOTHER WAY  */
DATA SSN4.TABL3_DATA;
SET SSN4.TABL3;
BY STU_NAME DESCENDING SCORE;

IF FIRST.STU_NAME THEN FIRST=1;
ELSE FIRST=0;

IF LAST.STU_NAME;

RUN;


/* Q2	Use last. to get the lowest score by each stu_name */

/* STEP-1 */
/* SORT THE DATASET */
PROC SORT DATA=SSN4.tabl3;
BY STU_NAME DESCENDING SCORE ;

/* STEP-2 */
DATA SSN4.TABL3_DATA;
SET SSN4.TABL3;
BY STU_NAME DESCENDING SCORE;

IF LAST.STU_NAME THEN LAST=1;
ELSE LAST=0;

RUN;


/* FINAL RESULT */
DATA MIN_DATA;
SET SSN4.TABL3_DATA;
IF LAST=1 THEN OUTPUT;
RUN;


/* ANOTHER WAY */
DATA SSN4.TABL3_DATA;
SET SSN4.TABL3;
BY STU_NAME DESCENDING SCORE;

IF LAST.STU_NAME THEN LAST=1;
ELSE LAST=0;

IF FIRST.STU_NAME;

RUN;



/* Q3	Use first. to get the lowest score by each stu_name		 */


/* STEP-1 */
/* SORT THE DATASET BY ASCENDING ORDER*/
PROC SORT DATA=SSN4.tabl3;
BY STU_NAME SCORE ;

/* STEP-2 */
DATA SSN4.TABL3_DATA;
SET SSN4.TABL3;
BY STU_NAME SCORE;

IF FIRST.STU_NAME THEN FIRST=1;
ELSE FIRST=0;

RUN;

/* FINAL RESULT */
DATA MIN_DATA;
SET SSN4.TABL3_DATA;
IF FIRST=1 THEN OUTPUT;
RUN;


/* ANOTHER WAY */
DATA SSN4.TABL3_DATA;
SET SSN4.TABL3;
BY STU_NAME SCORE;

IF FIRST.STU_NAME THEN FIRST=1;
ELSE FIRST=0;

IF LAST.STU_NAME;

RUN;



/* Q5	Use last. to get the highest score by each stu_name */

/* STEP-1 */
/* SORT THE DATASET BY ASCENDING ORDER*/
PROC SORT DATA=SSN4.tabl3;
BY STU_NAME SCORE ;

/* STEP-2 */
DATA SSN4.TABL3_DATA;
SET SSN4.TABL3;
BY STU_NAME SCORE;

IF LAST.STU_NAME THEN LAST=1;
ELSE LAST=0;

RUN;


/* FINAL RESULT */
DATA MAX_LAST_DATA;
SET SSN4.TABL3_DATA;
IF LAST=1 THEN OUTPUT;
RUN;


/* ANOTHER WAY */
DATA SSN4.TABL3_DATA;
SET SSN4.TABL3;
BY STU_NAME SCORE;

IF LAST.STU_NAME THEN LAST=1;
ELSE LAST=0;

IF FIRST.STU_NAME;

RUN;


/* Q6	Get the total score by each stu_name use first. and last. */

DATA TABL3_TOTAL_SCORE;
SET SSN4.tabl3;
BY STU_NAME SCORE;

IF FIRST.STU_NAME THEN FIRST=1;
ELSE FIRST=0;

IF LAST.STU_NAME THEN LAST=1;
ELSE LAST=0;

IF FIRST.STU_NAME THEN DO;
TOTAL_SCORES=0;
END;
TOTAL_SCORES+SCORE;

IF LAST.STU_NAME;
DROP FIRST LAST;

RUN;


/* Q7	Get the total score by each subject use first. and last. */

PROC SORT DATA=SSN4.tabl3;
BY SUBJECT SCORE;
RUN;


DATA TABL3_TOTAL_SCORE_SUB;
SET SSN4.tabl3;
BY SUBJECT SCORE;

IF FIRST.SUBJECT THEN FIRST=1;
ELSE FIRST=0;

IF LAST.SUBJECT THEN LAST=1;
ELSE LAST=0;

IF FIRST.SUBJECT THEN DO;
TOTAL_SCORES=0;
END;

TOTAL_SCORES+SCORE;

IF LAST.SUBJECT;
DROP FIRST LAST;

RUN;



/* Q8	Get each subject wise highest scorer stu_name */

PROC SORT DATA=SSN4.tabl3;
BY SUBJECT descending SCORE;
RUN;

DATA SSN4.TABL3_DATA;
SET SSN4.TABL3;
BY SUBJECT descending SCORE;

IF FIRST.SUBJECT THEN FIRST=1;
ELSE FIRST=0;

IF FIRST.SUBJECT;
DROP FIRST;

RUN;



OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.TABL4
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/3_FILES/DATASETS.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='TABL4';
RUN;



/* Q9	Get the proudct wise sum of sales using first. And last. */

PROC SORT DATA=SSN4.tabl4;
BY PRODUCT SALES;
RUN;


DATA TABL4_TOTAL_SALES;
SET SSN4.tabl4;
BY PRODUCT SALES;

IF FIRST.PRODUCT THEN FIRST=1;
ELSE FIRST=0;

IF LAST.PRODUCT THEN LAST=1;
ELSE LAST=0;

IF FIRST.PRODUCT THEN DO;
TOTAL_SALES=0;
END;

TOTAL_SALES+SALES;

IF LAST.PRODUCT;
DROP FIRST LAST SALES CITY YEAR;

RUN;

/* Q10	Get the Product and City wise sum of sales */

PROC SORT DATA=SSN4.tabl4;
BY PRODUCT CITY SALES;
RUN;

DATA TABL4_TOTAL_SALES_PCS;
SET SSN4.tabl4;
BY PRODUCT CITY SALES;

IF FIRST.CITY THEN FIRST=1;
ELSE FIRST=0;

IF LAST.CITY THEN LAST=1;
ELSE LAST=0;

IF FIRST.CITY THEN DO;
TOTAL_SALES=0;
END;

TOTAL_SALES+SALES;

IF LAST.CITY;
DROP FIRST LAST SALES YEAR;

RUN;


/* Q11	Get the product and year wise sum of sales */

PROC SORT DATA=SSN4.tabl4;
BY PRODUCT YEAR SALES;
RUN;

DATA TABL4_TOTAL_SALES_PYS;
SET SSN4.tabl4;
BY PRODUCT YEAR SALES;

IF FIRST.YEAR THEN FIRST=1;
ELSE FIRST=0;

IF LAST.YEAR THEN LAST=1;
ELSE LAST=0;

IF FIRST.YEAR THEN DO;
TOTAL_SALES=0;
END;

TOTAL_SALES+SALES;

IF LAST.YEAR;
DROP FIRST LAST SALES CITY;

RUN;



/* ============================================================================================================================================= */



/* Q37:---> */
/* ====================== */


/* Q1	Get the highiest to lowest ranking by Stu_name */

/* STEP-1 */
/* SORT THE DATASET */
PROC SORT DATA=SSN4.TABL3;
BY STU_NAME DESCENDING SCORE;

/* FINAL RESULT */
PROC RANK DATA=SSN4.TABL3 DESCENDING OUT=SSN4.RANK_TABL_V1 TIES=DENSE;
VAR SCORE;
RANKS RANK_NUMBER;
BY STU_NAME;



/* Q2	Get the lowest to highest ranking by Stu_name */

/* STEP-1 */
/* SORT THE DATASET */
PROC SORT DATA=SSN4.TABL3;
BY STU_NAME SCORE;

/* FINAL RESULT */
PROC RANK DATA=SSN4.TABL3  OUT=SSN4.RANK_TABL_V2 TIES=DENSE;
VAR SCORE;
RANKS RANK_NUMBER;
BY STU_NAME;



/* Q3	Get the lowest to highest ranking by Subject */

/* STEP-1 */
/* SORT THE DATASET */
PROC SORT DATA=SSN4.TABL3;
BY SUBJECT SCORE;

/* FINAL RESULT */
PROC RANK DATA=SSN4.TABL3  OUT=SSN4.RANK_TABL_V3 TIES=DENSE;
VAR SCORE;
RANKS RANK_NUMBER;
BY SUBJECT;




/* ==================================================================================================================== */



/* Q38:----> */
/* ====================== */

OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.TABL5
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_5/3_FILES/DATASETS.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='TABL5';
RUN;

OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.TABL6
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_5/3_FILES/DATASETS.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='TABL6';
RUN;



/* Q1	Get the most updated score from Table1 and Table2 */
/* 	Use update statement in sas */


/* STEP-1 */
/* SORT THE DATASETS */
PROC SORT DATA=SSN4.TABL5;
BY STU_ID;
RUN;

PROC SORT DATA=SSN4.TABL6;
BY STU_ID;
RUN;


/* FINAL RESULT */
DATA UPDATE_SCORE_TABL;
UPDATE SSN4.TABL5 SSN4.TABL6;
BY STU_ID;
RUN;





/* ========================================================================================================================= */




/* Q39:-----> */
/* ======================= */


OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.TABL7
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_5/3_FILES/DATASETS.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='TABL7';
RUN;


/* Q1	CREATE A ROW NUMBER TO THIS TABLE */
/* 	 */
/* 	USE _N_ */

DATA ROW_NUMBER_DATA;
SET SSN4.TABL7;
ROW_NUMBER= _N_;
RUN;


/* ============================================================================================================================ */



/* Q40:-----> */
/* ====================== */



/* Q1	CREATE A ROW NUMBER TO THIS TABLE */

DATA SSN4.ROW_NUMBER_DATA_V1;
SET SSN4.TABL7;
ROW_NUMBER= _N_;
RUN;


/* Q2	CRAETE A NEW TABLE FROM THIS TABLE WHERE YOU GET 1000 RANDOM OBSERVATION TO BE STORED */

/* 	USE PROC SURVEYSELECR */

PROC SURVEYSELECT DATA=SSN4.ROW_NUMBER_DATA_V1 METHOD=SRS N=1000 OUT=SSN4.TABL7_SAMPLE;
RUN;

/* 	USE RANUNI FUNCTION IN SAS */

DATA RANUNI_DATA_TABL;
SET SSN4.ROW_NUMBER_DATA_V1;
IF ROW_NUMBER<=1000 THEN DO;
RAND_NUM=RANUNI(0);
OUTPUT;
END;
RUN;


/* ====================================================================================================================================================================== */


/* Q41:-----> */
/* ===================== */


/* Q1	CREATE A ROW NUMBER TO THIS TABLE */

DATA SSN4.NEW_DATA_TABL7;
SET SSN4.tabl7;
ROW_NUMBER=_N_;
RUN;


/* Q2	GET A NEW DATASET WITH EVRY 6TH ALTERNATIVE OBSERVATIONS */

DATA ALTERNATE_ROW_DATA;
SET SSN4.NEW_DATA_TABL7;
IF MOD(ROW_NUMBER,6)=0;
RUN;


/* =========================================================================================================================================================================== */



/* Q42:------> */
/* ======================= */

OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.T_TABL1
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_5/3_FILES/DATASETS.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='T_TABL1';
RUN;



OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.T_TABL2
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_5/3_FILES/DATASETS.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='T_TABL2';
RUN;




/* Q1	TRANSPOSE DATA BY 	 */
/* 		PRODUCT */
/* 		MONTH */
/* 		 */
/* 	FINAL OUTPUT TABLE 	 */
/* 		PRODUCT */
/* 		MONTH */
/* 		DATE */
/* 		SALES */



/* STEP-1 */
/* SORT THE DATASET */
PROC SORT DATA=SSN4.T_TABL1;
BY PRODUCT MONTH;
RUN;

/* STEP-2: */
/* TRANSPOSE THE DATASET */
PROC TRANSPOSE DATA=SSN4.T_TABL1 OUT=SSN4.FINAL_TABL_V1;
VAR _43831 _43832 _43833 _43834 _43835 _43862 _43863 _43864 _43865 _43866 ;
BY PRODUCT MONTH;
RUN;

/* STEP-3: */
/* CREATE A NEW COLUMN AND STORE ALL THE VALUE OF _NAME_ WITH DELETE THE '_' */
DATA REAL;
SET FINAL_TABL_V1;
DATES=INPUT(COMPRESS(_NAME_,'_'),BEST12.);
RUN;

/* STEP-4 */
/* CONVERT THIS NEW COLUMN TO MMDDYY FORMAT */
/* RENAME COL1 TO SALES. */
/* DROP _NAME_ & _LABEL_ COLUMNS. */
/* REORDER ALL THE COLUMNS THAT PRESENT INSDIE THE DATASET. */
DATA REAL_V1;
RETAIN PRODUCT MONTH DATES SALES;
SET REAL;
FORMAT DATES MMDDYY10.;
INFORMAT DATES MMDDYY10.;
RENAME COL1=SALES;
RETAIN PRODUCT MONTH DATES SALES;
DROP _NAME_ _LABEL_;
RUN;



/* Q2	TRANSPOSE DATA BY PRODUCT	 */
/* 	FINAL OUTPUT TABLE	 */
/* 		PRODUCT */
/* 		JAN */
/* 		FEB */
/* 		MAR */
/* 		APR */
/* 		MAY */
/* 		JUN */


/* STEP-1 */
/* SORT THE DATASET */
PROC SORT DATA=SSN4.T_TABL2;
BY PRODUCT;
RUN;


/* STEP-2 */
/* TRANSPOSE THE DATA TO ROW TO COLUMN. */
PROC TRANSPOSE DATA=SSN4.T_TABL2 OUT=FINAL_TABL_V2 (DROP=_NAME_ _LABEL_);
ID MONTH;
VAR SALES;
BY PRODUCT;
RUN;


/* ========================================================================================================================================= */




/* Q43:----> */
/* ==================== */


/* Q1	CREATE A DATASET HAVING OBSERVATION OF 100 */
/* 	USE DO LOOP */

DATA TABL100;
DO OBRS=1 TO 100;
OUTPUT;
END;
RUN;


/* Q2	CRAETE A DATASET HAVING OBSERVATION WITH EVERY 5TH ALTERNATIVE */

DATA TABL5TH;
DO OBSRR=0 TO 100 BY 5;
OUTPUT;
END;
RUN;


/* Q3	WRITE A PROGRAM TO INVEST 100000 FOR 15 YEARS WITH COMPOUNDED RATE OF INT of 12% */
/* 	GET YEAR WISE TOTAL SUM IN the ACCOUNT */

DATA INVESTS;
DO YEAR=1 TO 15;
TOTAL_SALES+100000;
TOTAL_SALES+(TOTAL_SALES*0.12);
OUTPUT;
END;
RUN;

PROC PRINT;
RUN;


/* Q4	WRITE A SAS PROGRAM FOR A RECURRING INVESTMENT OF 100000 FOR EVERY YEAR TILL NEXT 10 YEARS 
AND HAVING A LOCKING PERIOD OF 10 YEARS WHAT WOULD TO TAM SUM IN ACCOUNT */



DATA INVESTS_RECUR;
DO YEAR=1 TO 30 UNTIL(YEAR>=10);
TAM+100000;
TAM+(TAM*0.12);
OUTPUT;
END;
RUN;

PROC PRINT;
RUN;


/* Q5	WRITE A PROGRAM TO BREAK THE LOOP WHEN THE INVESTMENT SUM REACHES TO 10000000 */
/* 	INVESTMENT OF 10000 EVERY YEAR WITH 10% INT */

DATA INVESTS;
DO YEAR=1 TO 30 UNTIL (TOTAL_SALES>=10000000);
TOTAL_SALES+100000;
TOTAL_SALES+(TOTAL_SALES*0.10);
OUTPUT;
END;
RUN;

PROC PRINT;
RUN;


/* Q6	Explain Below Program */
/* 	data b4; */
/* 	a=1;output; */
/* 	a=.;output; */
/* 	a=.;output; */
/* 	a=2;output; */
/* 	a=.;output; */
/* 	a=4;output; */
/* 	run; */
/* 	data after; */
/* 	retain b; */
/* 	set b4; */
/* 	if not missing(a) then b=a; */
/* 	run; */


/* ANS:--> */

	data b4;  /* CREATE A DATASET */
	a=1;output;  /* HERE A IS STORE VALUE 1 */
	a=.;output;  /* HERE A IS NULL VALUE */
	a=.;output;  /* HERE A IS NULL VALUE */
	a=2;output;  /* HERE A IS STORE VALUE 2 */
	a=.;output;  /* HERE A IS NULL VALUE  */
	a=4;output;  /* HERE A IS STORE VALUE 4*/
	run;         /* EXECUTE THE CODE */
/* 	THTA MEANS 'a' IS COLUMN WHICH STORE THE VALUES 1,NULL,NULL,2,NULL,4 */

	data after; /* CREATE A DATASET */
	retain b;  /* REORDER THE COLUMN 'b' */
	set b4;   /* COPY THE DATASET FROM 'b4' */
	if not missing(a) then b=a; /* WHERE MISSING VALUES NOT THERE IT FILL WITH THE VALUES OF COLUMN 'a' */
	run; /* EXECUTE THE DATASET */


/* Q7	Write a program to get each date of the month */
/* 	If the date was not in th transaction date earlier then use amount for the new date as 0 */


OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.TABL9
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_5/3_FILES/DATASETS.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='TABL9';
RUN;




/* ============================================================================================================================== */



/* Q44:---> */
/* =================== */


OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.TABL8
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_5/3_FILES/DATASETS.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='TABL8';
RUN;


/* Q1	Write a program to convert all character variable missing to "not available" 
and numeric missing to 999999999 */

DATA ALL_VALUE_REPL;
SET SSN4.TABL8;

ARRAY NUMM _NUMERIC_;
DO OVER NUMM;
IF NUMM=. THEN NUMM=999999999;
END;

ARRAY TEXTT _CHARACTER_;
DO OVER TEXTT;
IF TEXTT=' ' THEN TEXTT='NOT AVAILABLE';
END;

RUN;


/* ================================================================================================================================================================== */



/* DATE-30/04/2024 */


/* SESSION-5 */



/* Q45:----> */
/* ===================== */


OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.SAT4
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/1_RAW_DATA/SAS_FUNCTIONS/SAS_FUNCTIONS.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='SAT4';
RUN;

PROC PRINT DATA=SSN4.SAT4;
RUN;

/* Q1	GET THIS BELOW TABLE USING PROC MEANS */

PROC MEANS DATA=SSN4.SAT4 NWAY;
CLASS Company GENDER;
VAR CUSTOMER_ID Age Spent_amount;
OUTPUT OUT=SAT4_SUMMARY_V1 (DROP=_TYPE_ _FREQ_ _STAT_) N(CUSTOMER_ID)=SUBS MEAN(Age)=AVG_AGE SUM(Spent_amount)=TOTAL_SPENT;
RUN;


/* Q2	USE PROC TABULATE TO GET THIS VALUE */

PROC TABULATE DATA=SSN4.SAT4;
CLASS COMPANY STATE_CODE;
TABLES COMPANY,STATE_CODE;
RUN;


/* Q3	USE PROC TABULATE AND PROC SUMMARY TO GET THIS VALUE AS BELOW */

/* PROC TABULATE */

PROC TABULATE DATA=SSN4.SAT4;
CLASS STATE_CODE Company GENDER;
VAR Spent_amount;
TABLES STATE_CODE*Company, GENDER*Spent_amount*SUM;
RUN;


/* PROC SUMMARY */

PROC SUMMARY DATA=SSN4.SAT4 NWAY;
CLASS STATE_CODE Company GENDER;
VAR Spent_amount;
OUTPUT OUT=SAT4_SUMMARY_V2 SUM=TOTAL_SPENT;
RUN;


PROC PRINT DATA=SAT4_SUMMARY_V2 ;
RUN;





/* ============================================================================================================================================================ */




/* Q46:---> */
/* =================== */


OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.SAT1
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/1_RAW_DATA/SAS_FUNCTIONS/SAS_FUNCTIONS.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='SAT1';
RUN;


/* Q1	GET THE LAST 5 DIGIT OF CUSTOMER NUMEBR IS THE ACCOUNT NUMBER */

PROC PRINT DATA=SSN4.SAT1;
RUN;

DATA LST_5_DIGT;
SET SSN4.SAT1;
CUST_ACC= SUBSTR(Customer_ID_1,INDEX(Customer_ID_1,'-')+1,LENGTH(Customer_ID_1));
RUN;


/* Q2	GET THE CUSTOMER CURRENT AGE FROM DOB */

DATA AGE_COL;
SET SSN4.SAT1;
AGE=INTCK('YEAR',DOB,TODAY());
RUN;


/* Q3	GET CUSTOMER FULL NAME IN CAPITAL LETTER */

DATA UPPER_COL;
SET SSN4.SAT1;
UPPER_CASE=UPCASE(Customer_Name);
RUN;


/* Q4	GET THE CUSTOMER FIRST AND LAST NAME FROM CUSTOMER NAME */

DATA FL_COL;
SET SSN4.SAT1;
FIRST_NAME=SUBSTR(Customer_Name,1,INDEX(Customer_Name,' ')-1);
LAST_NAME=SUBSTR(Customer_Name,INDEX(Customer_Name,' ')+1,LENGTH(Customer_Name));
RUN;



/* Q5	WRITE A FUNCTION IN SAS TO IDENTIFY WHETHER ALL RECORDS IN CARD_REG_DATE IS IN DATA FORMAT OR NOT */


DATA IF_COL;
SET SSN4.SAT1;
TEMP_DATE=INPUT(CARD_REG_DATE,ANYDTDTE.);
RUN;



/* Q6	MANIPULATE CARD_REG_DATE TO CONVERT ALL THE RECORDS INTO DATE FORMAT */

DATA DT_COL;
SET SSN4.SAT1;
FORMAT TEMP MMDDYY10.;
INFORMAT TEMP MMDDYY10.;
LEN=LENGTH(CARD_REG_DATE);
IF LEN>5 THEN TEMP=INPUT(CARD_REG_DATE,MMDDYY10.);
ELSE TEMP=INPUT(CARD_REG_DATE,8.);
DROP LEN;

RUN;


/* Q7	WRITE A FUNCTION TO CLEAN SALES VALUE TO NUMERIC VALUE */

DATA SC_COL;
SET SSN4.SAT1;
SALE_TEMP=INPUT(COMPRESS(SALES,"-"),BEST12.);
RUN;



/* ====================================================================================================================================== */



/* Q47:---> */
/* ================== */


OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.SAT2
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/1_RAW_DATA/SAS_FUNCTIONS/SAS_FUNCTIONS.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='SAT2';
RUN;


PROC PRINT DATA=SSN4.SAT2;
RUN;


/* Q1	GET YEAR, MONTH, DAY, WEEK, QTR, WEEKDAY AND YEARMONTH FROM TRANSACTION DATE */

DATA DETAIL_TABL;
SET SSN4.SAT2;
YEARS=YEAR(TRANSACTION_DATE);
MONTHS=MONTH(TRANSACTION_DATE);
DAYS=DAY(TRANSACTION_DATE);
WEEKS=WEEK(TRANSACTION_DATE);
QUATERS=QTR(TRANSACTION_DATE);
WEEKDAYS=WEEKDAY(TRANSACTION_DATE);
YEARMONTHS=INPUT(PUT(TRANSACTION_DATE,YYMMN6.),8.);

RUN;


/* Q2	EXPLAIN THESE FUNCTIONS BY EXAMPLES			 */
/* 				INPUT */
/* 				PUT */
/* 				SCAN */
/* 				COMPRESS */
/* 				COMPBL */
/* 				INDEX */
/* 				INDEXC */
/* 				INDEXW */
/* 				INTCK */
/* 				INTNX */
/* 				TRANWORD */
/* 				TRANSLATE */

/* ANS:--> */

/* INPUT ==>		IT CONVERT THE STRING/CHARACTER NUMERIC TO NUMERIC FORMAT.			 */
/* PUT ==>			IT CONVERT THE NUMERIC TO STRING/CHARACTER FORMAT.			 */
/* SCAN ==>			IT SPLIT THE STRING INTO SUBSTRING WITH THE HELP OF DELIMETER.			 */
/* COMPRESS ==>		IT JOIN TWO/MORE STRINGS WITHOUT SPACES. IT ALSO HELP TO DELETE ALL THE SPECIAL CHARACTER FROM THE STRING.			 */
/* COMPBL ==>		IT JOIN TWO/MORE STRINGS SEPARATED BY ONLY ONE SPACES.			 */
/* INDEX ==>		IT SEARCH THE WORD, AND IGNORES ANY OTHER EXTRA CHARACTERS			 */
/* INDEXC ==>		IT SEARCH FOR A PARTICULAR CHARACTER WITHIN THE WORD THAT YOU HAVE PASSED			 */
/* INDEXW ==>		IT SEARCH PARTICULAR WORD ONLY			 */
/* INTCK ==>		IT IS USED FOR DIFFERENTIATE TWO DATES VALUE.			 */
/* INTNX ==>		IT IS USED FOR ADDING MONTHS,YEARS,DAYS,QTRS ETC. TO A DATE VALUE.			 */
/* TRANWORD ==>		IT IS USED TO REPLACE ANY SUBSTRING IN A GIVEN STRING.			 */
/* TRANSLATE ==>	IT IS USED TO REPLACE A SPECIFIC CHARACTER IN A GIVEN STRING			 */



/* ======================================================================================================================================================================================= */



/* Q48:---> */
/* ====================== */


OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.SAT3
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/1_RAW_DATA/SAS_FUNCTIONS/SAS_FUNCTIONS.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='SAT3';
RUN;



PROC PRINT DATA=SSN4.SAT3;
RUN;



/* Q1	GET THE DAYS,MONTH,YEARS,QTR GAP BETWEEN REG_DATE AND USE_DATE */

DATA DET_GAP;
SET SSN4.SAT3;
DAYS_GAP=INTCK('DAY',REG_DATE,USE_DATE);
MONTHS_GAP=INTCK('MONTH',REG_DATE,USE_DATE);
YEARS_GAP=INTCK('YEAR',REG_DATE,USE_DATE);
QTRS_GAP=INTCK('QTR',REG_DATE,USE_DATE);

RUN;



/* ======================================================================================================================================================== */




/* DATE-02/05/2024 */


/* SESSION-6 */



/* Q49:---> */
/* ====================== */


/* Q1	USE PROC SQL TO CREATE TABLE AS CUSTOMER_MASTER AND INSERT VALUES INTO THE TABLE */


/* CREATING A TABLE */
PROC SQL;
CREATE TABLE SSN4.CUSTOMER_MASTER 
(CUSTOMER_ID INT,
CUSTOMER_NAME VARCHAR(20),
CUSTOMER_SSN VARCHAR(20),
CITY VARCHAR(20),
MARKET VARCHAR(20),
DOB DATE,
TOWN VARCHAR(20)
);
QUIT;



/* INSERT VALUES */
PROC SQL;

INSERT INTO SSN4.CUSTOMER_MASTER VALUES(1000032547,'Rick Hansen','RH-19495','New York','US','15SEP1984'D,'Kyabram');					
INSERT INTO SSN4.CUSTOMER_MASTER VALUES(1000032548,'Justin Ritter','JR-16210','Wollongong','APAC','15JUL1974'D,'Hawthorn East');						
INSERT INTO SSN4.CUSTOMER_MASTER VALUES(1000032549,'Craig Reiter','CR-12730','Brisbane','APAC','01APR1959'D,'Revesby');						
INSERT INTO SSN4.CUSTOMER_MASTER VALUES(1000032550,'Katherine Murray','KM-16375','Berlin','EU','16MAY1978'D,'Willow Grove');						
INSERT INTO SSN4.CUSTOMER_MASTER VALUES(1000032551,'Rick Hansen','RH-9495','Dakar','Africa','16DEC1978'D,'mona vale');						
INSERT INTO SSN4.CUSTOMER_MASTER VALUES(1000032552,'Jim Mitchum','JM-15655','Sydney','APAC','21JUL1987'D,'Rowville');						
INSERT INTO SSN4.CUSTOMER_MASTER VALUES(1000032553,'Toby Swindell','TS-21340','Porirua','APAC','07NOV1986'D,'MINNAMURRA');						
INSERT INTO SSN4.CUSTOMER_MASTER VALUES(1000032554,'Mick Brown','MB-18085','Hamilton','APAC','29APR1987'D,'Lake Illawarra');						
INSERT INTO SSN4.CUSTOMER_MASTER VALUES(1000032555,'Jane Waco','JW-15220','Sacramento','US','04MAR1958'D,'Vermont South');						
INSERT INTO SSN4.CUSTOMER_MASTER VALUES(1000032556,'Joseph Holt','JH-15985','Concord','US','15AUG1952'D,'Blackburn Nth');						
INSERT INTO SSN4.CUSTOMER_MASTER VALUES(1000032557,'Greg Maxwell','GM-14695','Alexandria','US','26DEC1984'D,'Rowville');						
INSERT INTO SSN4.CUSTOMER_MASTER VALUES(1000032558,'Anthony Jacobs','AJ-10780','Kabul','APAC','17FEB1956'D,'Box Hill North');						
INSERT INTO SSN4.CUSTOMER_MASTER VALUES(1000032559,'Magdelene Morse','MM-7260','Jizan','EMEA','11APR1979'D,'FOREST HILL');						
INSERT INTO SSN4.CUSTOMER_MASTER VALUES(1000032560,'Vicky Freymann','VF-21715','Toledo','LATAM','12MAR1985'D,'BERWICK');						
INSERT INTO SSN4.CUSTOMER_MASTER VALUES(1000032561,'Peter Fuller','PF-19120','Mudanjiang','APAC','12MAR1985'D,'Buderim');						
INSERT INTO SSN4.CUSTOMER_MASTER VALUES(1000032562,'Ben Peterman','BP-11185','Paris','EU','10JAN1952'D,'kawungan');						
INSERT INTO SSN4.CUSTOMER_MASTER VALUES(1000032563,'Thomas Boland','TB-21175','Henderson','US','10JUL1965'D,'scarness');						
INSERT INTO SSN4.CUSTOMER_MASTER VALUES(1000032564,'Patrick Jones','PJ-18835','Prato','EU','20JUL1948'D,'Kuluin');						
INSERT INTO SSN4.CUSTOMER_MASTER VALUES(1000032565,'Jim Sink','JS-15685','Townsville','APAC','30SEP1949'D,'Menai');						
INSERT INTO SSN4.CUSTOMER_MASTER VALUES(1000032566,'Ritsa Hightower','RH-9555','Uvinza','Africa','21OCT1948'D,'Warilla');						
INSERT INTO SSN4.CUSTOMER_MASTER VALUES(1000032567,'Ann Blume','AB-600','Bytom','EMEA','31MAY1972'D,'BARRACK HEIGHTS');
QUIT;


PROC SQL;
SELECT CUSTOMER_ID FORMAT 15.,
CUSTOMER_NAME,
CUSTOMER_SSN,
CITY,
MARKET,
DOB,
TOWN
FROM SSN4.CUSTOMER_MASTER;
QUIT;



/* ======================================================================================================================= */



/* Q50:----> */
/* ===================== */

OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.MED_DATA
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_6/3_FILES/SQL.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='SQL1';
RUN;


/* Q1	CREATE A NEW TABLE AS MED_NEW 	 */
/* 	SELECT VARIABLES AS	
/*		CUSTOMER_ID */
/* 		COMPANY */
/* 		GENDER */
/* 		AGE */
/* 		DOB */
/* 		STATE_CODE */
/* 		TOWN */
/* 		NO_OF_TRIPS */
/* 		SPENT_AMOUNT */


PROC SQL;
CREATE TABLE SSN4.MED_TABL_V1 AS
SELECT CUSTOMER_ID,
COMPANY,
GENDER,
AGE,
DOB,
STATE_CODE,
TOWN,
NO_OF_TRIPS,
SPENT_AMOUNT
FROM SSN4.MED_DATA;
QUIT;


/* CREATE AN AGE BUCKET OF */
/* <=30 */
/* 31-50 */
/* 51-70 */
/* 70+ */

PROC SQL;
SELECT *,
CASE
	WHEN AGE>70 THEN 'OLD AGE'
	WHEN AGE>50 AND AGE<=70 THEN 'MID OLD AGE'
	WHEN AGE>30 AND AGE<=50 THEN 'MID AGE'
	ELSE 'YOUNG AGE'
	END AS AGE_BUCKET
FROM SSN4.MED_TABL_V1;
QUIT;



/* FILTER COMPANY AS	 */
/* 	APPOLO */
/* 	CIPLA */
/* 	GENO */
/* 	RELGARE */
/* FILTER GENDER	FEMALE */

PROC SQL;
SELECT * FROM SSN4.MED_TABL_V1
WHERE COMPANY IN ('APPOLO','CIPLA','GENO','RELEGARE') AND GENDER='Female';
QUIT;


/* ======================================================================================================================================================= */



/* Q51:----> */
/* =================== */



/* Q1	SELECT TOP 100 RECORDS FROM THE TABLE */

PROC SQL OUTOBS=100 NUMBER;
SELECT * FROM SSN4.MED_DATA;
QUIT;


/* Q2	CREATE A ROW NUMBER */

PROC SQL;
SELECT 
CUSTOMER_ID,
COMPANY,
GENDER,
AGE,
DOB,
STATE_CODE,
TOWN,
NO_OF_TRIPS,
MONOTONIC() AS ROW_NUMBERS
FROM SSN4.MED_TABL_V1;
QUIT;


/* Q3	WRITE A PROGRAM TO SELECT 30% OF RANDOM OBSERVATION FROM THE DATASET */


PROC SQL NUMBER;
SELECT * FROM SSN4.MED_TABL_V1
WHERE RANUNI(0)<0.3;
QUIT;



/* Q4	WRITE A PROGRAM TO UPDATE CONTACT_PREF IS MISSING TO "EMAIL" */

PROC SQL;
UPDATE SSN4.MED_DATA
SET CONTACT_PREF='EMAIL'
WHERE CONTACT_PREF=' ';
QUIT;



/* ============================================================================================================================================ */



/* Q52:-----> */
/* ======================== */


/* Q1	CREATE ROW NUMEBR IN THE EXISTING DATASET */

PROC SQL;
SELECT *,
MONOTONIC() AS ROW_NUMBERS
FROM SSN4.MED_DATA;
QUIT;


/* Q2	HOW TO SELECT RANDOM OBSERVATION IN SQL */

PROC SQL;
SELECT * FROM SSN4.MED_DATA
ORDER BY RANUNI(0);
QUIT;



/* ==================================================================================================================================== */



/* Q53:-----> */
/* ======================== */



/* Q1	GET THE STATE_CODE WHERE CUSTOMER BASE IS ABOVE AVERAGE 
AND SPENT_AMOUNT IS LESS THAN AVG_SPENT AMOUNT OF ALL STATES */

PROC PRINT DATA=SSN4.med_tabl_v1;
RUN;


/* STEP-1 */
PROC SQL;
CREATE TABLE SSN4.SUM_V1 AS
SELECT 
STATE_CODE,
COUNT(*) AS CUSTOMER_BASE,
SUM(SPENT_AMOUNT) AS SPENT_AMOUNTS
FROM SSN4.MED_TABL_V1
GROUP BY STATE_CODE;
QUIT;


/* STEP-2 */
PROC SQL;
SELECT *
FROM SSN4.SUM_V1
HAVING CUSTOMER_BASE>AVG(CUSTOMER_BASE) AND SPENT_AMOUNTS<AVG(SPENT_AMOUNTS);
QUIT;




/* Q2	SELECT COMPANY HAVING SUM OS SPENT IS ABOVE AVG_SPENT OF ALL */

/* STEP-1 */
PROC SQL;
CREATE TABLE SSN4.SUM_V2 AS
SELECT 
COMPANY,
SUM(SPENT_AMOUNT) AS SPENT_AMOUNTS
FROM SSN4.MED_TABL_V1
GROUP BY COMPANY;
QUIT;


/* STEP-2 */
PROC SQL;
SELECT *
FROM SSN4.SUM_V2
HAVING SPENT_AMOUNTS>AVG(SPENT_AMOUNTS);
QUIT;



/* Q3	GET THE TOTAL SUM OF SPENT BY COMPANY,STATE_CODE AND GENDER */
/* 	WHERE COMPANY IN APPOLO AND CIPLA */
/* 	SUM OF SPENT IS MORE THAN 90000 */
/* 	ORDER BY COMPANYAND GENDER */


PROC SQL;
SELECT 
COMPANY,
STATE_CODE,
GENDER,
SUM(SPENT_AMOUNT) AS SPENT_AMOUNTS
FROM SSN4.MED_TABL_V1
WHERE COMPANY IN ('APPOLO','CIPLA')
GROUP BY COMPANY,STATE_CODE,GENDER
HAVING CALCULATED SPENT_AMOUNTS > 90000
ORDER BY COMPANY,GENDER;
QUIT;


/* =================================================================================================================================================== */




/* Q54:---> */
/* ================== */


OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.SQL_TABL2
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_6/3_FILES/SQL.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='SQL2';
RUN;


OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.SQL_TABL3
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_6/3_FILES/SQL.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='SQL3';
RUN;



/* Q1	WRITE AN UPDATE QUERY USING CASE AND WHEN TO CREATE A NEW VARIABLE RESULT AS	 */
/* 	SCORE >= 50	PASS */
/* 	SCORE < 50 	FAIL */

PROC SQL;
SELECT *,
CASE 
	WHEN SCORE>=50 THEN 'PASS'
	ELSE 'FAIL'
END AS STUDENT_MARK_STATUS
FROM SSN4.SQL_TABL2;
QUIT;


/* Q2	WRITE AN UPDATE QUERY USING CASE AND WHEN TO CREATE A NEW VARIABLE DIVISION AS									 */
/* 								>=60		1ST */
/* 								SCORE >=50 ANF SCORE <60		2ND */
/* 								SCORE >= 40 AND SCORE <50		3RD */
/* 								SCORE >=30 AND SCORE <40		PASS */
/* 								ELSE 		FAIL */


/* STEP-1 */
PROC SQL;
ALTER TABLE SSN4.SQL_TABL2
ADD DIVISON VARCHAR(10);
QUIT;


/* STEP-2 */
PROC SQL;
UPDATE SSN4.SQL_TABL2
SET DIVISON=
	CASE 
		WHEN SCORE>=60 THEN '1ST'
		WHEN SCORE>=50 AND SCORE<60 THEN '2ND'
		WHEN SCORE>=40 AND SCORE<50 THEN '3RD'
		WHEN SCORE>=30 AND SCORE<40 THEN 'PASS'
		ELSE 'FAIL'
	END;
QUIT;


PROC SQL;
SELECT * FROM SSN4.SQL_TABL2;
QUIT;




/* Q3	WRITE AN UPDATE QUERY TO GIVE A DISCOUNT FOR CITY AND MONTH WISE AS GIVEN CONDITION BELOW	 */
/* 	IF CITY IS BANGALORE AND MONTH IS OCTOBER THEN	DISCOUNT */
/* 	APPLE	0.4 */
/* 	DELL	0.3 */
/* 	HP	0.5 */
/* 	ASUS	0.2 */
/* 	IF CITY IS BANGALORE AND MONTH IS NOVEMBER THEN	DISCOUNT */
/* 	APPLE	0.5 */
/* 	DELL	0.3 */
/* 	HP	0.2 */
/* 	ASUS	0.2 */
/* 	IF CITY IS CHENNAI AND MONTH IS OCTOBER THEN	DISCOUNT */
/* 	APPLE	0.4 */
/* 	DELL	0.6 */
/* 	HP	0.5 */
/* 	ASUS	0.3 */
/* 	IF CITY IS CHENNAI AND MONTH IS NOVEMBER THEN	DISCOUNT */
/* 	APPLE	0.5 */
/* 	DELL	0.4 */
/* 	HP	0.2 */
/* 	ASUS	0.3 */
/* 	IF CITY IS HYDERABAD AND MONTH IS OCTOBER THEN	DISCOUNT */
/* 	APPLE	0.3 */
/* 	DELL	0.6 */
/* 	HP	0.5 */
/* 	ASUS	0.29 */
/* 	IF CITY IS HYDERABAD AND MONTH IS NOVEMBER THEN	DISCOUNT */
/* 	APPLE	0.6 */
/* 	DELL	0.4 */
/* 	HP	0.4 */
/* 	ASUS	0.3 */


PROC SQL;
SELECT *,
CASE
	WHEN CITY='BANGALORE' AND MONTH='OCTOBER' THEN

		CASE	
			WHEN PRODUCT='APPLE' THEN 0.4*PRICE
			WHEN PRODUCT='DELL' THEN 0.3*PRICE
			WHEN PRODUCT='HP' THEN 0.5*PRICE
			WHEN PRODUCT='ASUS' THEN 0.2*PRICE
		END
	
	WHEN CITY='BANGALORE' AND MONTH='NOVEMBER' THEN
		CASE	
			WHEN PRODUCT='APPLE' THEN 0.5*PRICE
			WHEN PRODUCT='DELL' THEN 0.3*PRICE
			WHEN PRODUCT='HP' THEN 0.2*PRICE
			WHEN PRODUCT='ASUS' THEN 0.2*PRICE
		END
	
	

	WHEN CITY='CHENNAI' AND MONTH='OCTOBER'  THEN
		CASE	
			WHEN PRODUCT='APPLE' THEN 0.4*PRICE
			WHEN PRODUCT='DELL' THEN 0.6*PRICE
			WHEN PRODUCT='HP' THEN 0.5*PRICE
			WHEN PRODUCT='ASUS' THEN 0.3*PRICE
		END

	
	WHEN CITY='CHENNAI' AND MONTH='NOVEMBER'  THEN
		CASE	
			WHEN PRODUCT='APPLE' THEN 0.5*PRICE
			WHEN PRODUCT='DELL' THEN 0.4*PRICE
			WHEN PRODUCT='HP' THEN 0.2*PRICE
			WHEN PRODUCT='ASUS' THEN 0.3*PRICE
		END

	
	WHEN CITY='HYDERABAD' AND MONTH='OCTOBER' THEN
		CASE	
			WHEN PRODUCT='APPLE' THEN 0.3*PRICE
			WHEN PRODUCT='DELL' THEN 0.6*PRICE
			WHEN PRODUCT='HP' THEN 0.5*PRICE
			WHEN PRODUCT='ASUS' THEN 0.29*PRICE
		END

	
	WHEN CITY='HYDERABAD' AND MONTH='NOVEMBER' THEN
		CASE	
			WHEN PRODUCT='APPLE' THEN 0.6*PRICE
			WHEN PRODUCT='DELL' THEN 0.4*PRICE
			WHEN PRODUCT='HP' THEN 0.4*PRICE
			WHEN PRODUCT='ASUS' THEN 0.3*PRICE
		END	
END AS DISCOUNT 
FROM SSN4.SQL_TABL3;

QUIT;






/* ================================================================================================================================================================== */



/* Q56:-----> */
/* ===================== */


OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.SQL_TABL4
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_6/3_FILES/SQL.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='SQL4';
RUN;



/* Q1	CREATE A NEW FIELD CALLED AGE_BUCKET AS 	 */
/* 	AGE BETWEE 20 AND 40	YOUNG AGE */
/* 	AGE > 40 AND AGE <= 60	MID-AGE */
/* 	AGE > 60	OLD AGE */


PROC SQL;
CREATE TABLE SSN4.SQL_TABL4_V1 AS
SELECT *,
CASE
	WHEN AGE>60 THEN 'OLD AGE'
	WHEN AGE>40 AND AGE<=60 THEN 'MID AGE'
	WHEN AGE BETWEEN 20 AND 40 THEN 'YOUNG AGE'
END AS AGE_BUCKET
FROM SSN4.SQL_TABL4;
QUIT;



/* Q2	IDENTIFY OLD AGE PEOPLE SPENDING MORE THAN 500 DOLLAR */
/* 	GIVE THEM DISCIOUNT  OF .30 FOR NEXT VISIT */
/* 	REST ALL 0 DISCOUNT */

PROC SQL;
SELECT *,
CASE 
	WHEN AGE_BUCKET='OLD AGE' THEN 0.30*SPENT_AMOUNT
	ELSE 0*SPENT_AMOUNT
END AS DISCOUNT

FROM SSN4.SQL_TABL4_V1;
QUIT;




/* Q3	IF THE AGE_BUCKET='OLD AGE' AND GENDER='UNISEX' THEN DELTE							 */

PROC SQL;
DELETE FROM SSN4.SQL_TABL4_V1
WHERE AGE_BUCKET='OLD AGE' AND GENDER='Unisex';
QUIT;





/* ================================================================================================================================================================================== */



/* DATE:-07/05/2024 */


/* Q57:---> */
/* ==================== */



PROC IMPORT OUT=SSN4.VJOIN1
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/1_RAW_DATA/SQL_SAS/SQL.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='VJOIN1';
RUN;


PROC IMPORT OUT=SSN4.VJOIN2
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/1_RAW_DATA/SQL_SAS/SQL.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='VJOIN3';
RUN;


PROC IMPORT OUT=SSN4.VJOIN3
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/1_RAW_DATA/SQL_SAS/SQL.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='VJOIN3';
RUN;


PROC IMPORT OUT=SSN4.HJOIN1
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/1_RAW_DATA/SQL_SAS/SQL.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='HJOIN1';
RUN;



PROC IMPORT OUT=SSN4.HJOIN2
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/1_RAW_DATA/SQL_SAS/SQL.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='HJOIN2';
RUN;




/* Q1	APPEND ALL THREE TABLE USING PROC SQL */

PROC SQL;
SELECT * FROM SSN4.VJOIN1
UNION ALL
SELECT * FROM SSN4.VJOIN2
UNION ALL
SELECT * FROM SSN4.VJOIN3;
QUIT;


/* Q2	IN PRC SQL UNION ALL MAX OF HOW MANY TABLES CAN BE APPENDED */
/* ANS:-- */
/* THERE IS NO LIMIT OF TABLES THAT APPENDED USING UNION ALL IN PROC SQL */



/* Q3	WHAT IS THE DIFFERENCE BETWEEN UNION ALL AND UNION QUERY */
/* ANS:-- */
/* 	UNION ALL APPENDED ALL THE RECORDS OF TWO TABLES,IF THERE IS SOME DUPLICATES VALUES ARE IN THE TABLES, THEN IT APPENDED ALL THE DUPLICATES VALUES. */
/* 	UNION DO NOT APPENDED THE DUPLICATES VALUES OF TWO TABLES. IT ONLY APPENDED ALL THE UNIQUE VALUES. */



/* Q4	GET THE ACCOUNT NUMBER WHICH IS NEWLY ADDED IN FEB */
PROC SQL;
SELECT * FROM SSN4.HJOIN1 AS A
FULL JOIN
SSN4.HJOIN2 AS B
ON A.ACCOUNT=B.ACCOUNT
WHERE A.ACCOUNT IS NULL;
QUIT;


/* Q5	GET THE ACCOUNT NUMBER IN JAN AND NOT IN FEB */
PROC SQL;
SELECT * FROM SSN4.HJOIN1 AS A
FULL JOIN
SSN4.HJOIN2 AS B
ON A.ACCOUNT=B.ACCOUNT
WHERE B.ACCOUNT IS NULL ;
QUIT;



/* Q6	FIND THE NUMBER OF ACCOUNT WHOSE STATUS REMAIN SAME */
PROC SQL;
SELECT * FROM SSN4.HJOIN1 AS A
FULL JOIN
SSN4.HJOIN2 AS B
ON A.ACCOUNT=B.ACCOUNT
WHERE A.STATUS=B.STATUS ;
QUIT;


/* Q7	GET THE ACCOUNT WHICH GOT CURED IN FEB */
PROC SQL;
SELECT * FROM SSN4.HJOIN1 AS A
FULL JOIN
SSN4.HJOIN2 AS B
ON A.ACCOUNT=B.ACCOUNT
WHERE B.STATUS='CO' ;
QUIT;


/* Q8	GET THE ACCOUNT IN JAN WAS CURRENT AND IN FEB BECAME DELINQUENT */
PROC SQL;
SELECT * FROM SSN4.HJOIN1 AS A
FULL JOIN
SSN4.HJOIN2 AS B
ON A.ACCOUNT=B.ACCOUNT
WHERE A.STATUS='CURRENT' AND B.STATUS<>'CURRENT' ;
QUIT;


/* Q9	GET THE ACCOUNT WHO ARE NEW ADDED TO CO */
PROC SQL;
SELECT * FROM SSN4.HJOIN1 AS A
LEFT JOIN
SSN4.HJOIN2 AS B
ON A.ACCOUNT=B.ACCOUNT
WHERE A.STATUS<>'CO' AND B.STATUS='CO' ;
QUIT;




/* ==================================================================================================================================================================== */




/* Q58:----> */
/* =================== */




PROC IMPORT OUT=SSN4.SQLT1
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/1_RAW_DATA/SQL_SAS/SQL.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='SQLT1';
RUN;



/* Q1	GET A NEW FIELD TO GET SUM OF JAN TO DEC AND TOTAL SALES */

PROC SQL;
SELECT *,
SUM(JAN,FEB,MAR,APR,MAY,JUN,JUL,AUG,SEP,OCT,NOV,DEC) AS TOTAL_SALES
FROM SSN4.SQLT1;
QUIT;


/* Q2	GET EACH QTR WISE SUM */

PROC SQL;
SELECT *,
SUM(JAN,FEB,MAR) AS QUATER1_SALES,
SUM(APR,MAY,JUN) AS QUATER2_SALES,
SUM(JUL,AUG,SEP) AS QUATER3_SALES,
SUM(OCT,NOV,DEC) AS QUATER4_SALES
FROM SSN4.SQLT1;
QUIT;


/* Q3	GET QTR WISE % OF SALES OF YEARLY TOTAL SALES */


PROC SQL;
SELECT *,
SUM(JAN,FEB,MAR,APR,MAY,JUN,JUL,AUG,SEP,OCT,NOV,DEC) AS TOTAL_SALES,
SUM(JAN,FEB,MAR) AS QUATER1_SALES,
SUM(APR,MAY,JUN) AS QUATER2_SALES,
SUM(JUL,AUG,SEP) AS QUATER3_SALES,
SUM(OCT,NOV,DEC) AS QUATER4_SALES,
(CALCULATED TOTAL_SALES/CALCULATED QUATER1_SALES) AS PERC_QTR1_SALES,
(CALCULATED TOTAL_SALES/CALCULATED QUATER2_SALES) AS PERC_QTR2_SALES,
(CALCULATED TOTAL_SALES/CALCULATED QUATER3_SALES) AS PERC_QTR3_SALES,
(CALCULATED TOTAL_SALES/CALCULATED QUATER4_SALES) AS PERC_QTR4_SALES
FROM SSN4.SQLT1;
QUIT;



/* Q4	EXPLAIN THE USE OF COALESCE IN SQL AND CALCULATED FIELD */
/* ANS:-- */
/* 	COALESCE IS USED TO FILL THE NULL VALUES WITH SOME VALUES, BUT IT DIRECTLY NOT ADDED TO THE COLUMN. IT FIRST CREATE A COLUMN ,THEN ADD SOME VALUES TO THE NULL VALUES. */
/* 	CALCULATED FIELD IS USED TO USE THE NEWLY CREATED COLUMN TO OTHER USES. */





/* ========================================================================================================================================================================================================================== */




/* Q59:----> */
/* ======================== */


OPTIONS VALIDVARNAME=V7;
PROC IMPORT OUT=SSN4.SQLT2
			DATAFILE='/home/u63730693/SAS_DV_ANALYTICS/SESSION_4/1_RAW_DATA/SQL_SAS/SQL.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='SQLT2';
RUN;


/* Q1	GET THE AGE ON NETWORK BY DAYS FROM CARD_REG_DATE TO CURRENT DATA */
/* 	NOTE SOME OF THE CARD_REG_DATE IN NOT IN DATE FORMAT. CONVERT THIS TO DATE FORMAT BEFORE GET AGE ON NETWORK */


/* CONVERT TO DATE FORMAT */
DATA SSN4.SQLTTBL;
SET SSN4.SQLT2;
FORMAT CARD_REG_DATES DDMMYY10.;
CARD_REG_DATES=INPUT(CARD_REG_DATE,10.);
DROP CARD_REG_DATE;
RUN;

/* FINAL RESULT */
PROC SQL OUTOBS=100;
SELECT *,
INTCK('DAY',CARD_REG_DATES,TODAY()) AS AGE
FROM SSN4.SQLTTBL;
QUIT;



/* Q2	FROM THE ORDER_ID READ THE FIRST TWO CHARACTER AS COUNTRY_CODE */

PROC SQL OUTOBS=100;
SELECT *,
SUBSTR(ORDER_ID,1,2) AS COUNTRY_CODE
FROM SSN4.SQLTTBL;
QUIT;



/* Q3	GET ORDER_DAY,ORDER_MONTH,ORDER_YEAR AND ORDER YEARMONTH FROM ORDER_DATE */

PROC SQL OUTOBS=100;
SELECT *,
YEAR(ORDER_DATE) AS ORDER_YEAR,
MONTH(ORDER_DATE) AS ORDER_MONTH,
DAY(ORDER_DATE) AS ORDER_DAY,
((YEAR(ORDER_DATE)*100)+MONTH(ORDER_DATE)) AS YEARMONTHS
FROM SSN4.SQLTTBL;
QUIT;


/* Q4	GET THE DAYS GAP BETWEEN ORDER_DATE AND SHIP_DATE */

PROC SQL OUTOBS=100;
SELECT *,
INTCK('DAY',ORDER_DATE,SHIP_DATE) AS DAYS_GAP
FROM SSN4.SQLTTBL;
QUIT;


/* Q5	FROM CUSTOMER_ID READ FIRST TWO CHARACTER AS SHORT NAME AND AFTER '-' AS CUSTOMER_NUMBER */

PROC SQL OUTOBS=100;
SELECT Customer_ID_1,
SUBSTR(Customer_ID_1,1,2) AS CUSTOMER_SHORT_NAME,
SUBSTR(Customer_ID_1,INDEX(Customer_ID_1,'-')+1,LENGTH(Customer_ID_1)) AS CUSTOMER_NUMBER
FROM SSN4.SQLTTBL;
QUIT;



/* Q6	FROM CUSTOMER NAME DERIVE CUSTOMER FNAME AND LNAME */

PROC SQL OUTOBS=100;
SELECT *,
SUBSTR(Customer_Name,1,INDEX(Customer_Name,' ')-1) AS FIRST_NAME,
SUBSTR(Customer_Name,INDEX(Customer_Name,' ')+1,LENGTH(Customer_Name)) AS LAST_NAME
FROM SSN4.SQLTTBL;
QUIT;



/* Q7	FROM PROD_ID FIRST THREE CHARACTER CALL THEM INTO PRODUCT CATEGORY AS		 */
/* 	TEC	TECHNOLOGY	 */
/* 	FUR	FURTNITURE	 */
/* 	OFF	OFFICE SUPPLIES	 */

PROC SQL OUTOBS=100;
SELECT PRODUCT_ID,
SUBSTR(PRODUCT_ID,1,3) AS PRD_CATEGORY,
CASE 
	WHEN CALCULATED PRD_CATEGORY ='TEC' THEN 'TECHNOLOGY'
	WHEN CALCULATED PRD_CATEGORY ='FUR' THEN 'FURNITURE'
	ELSE 'OFFICE SUPPLIES'
END AS PRODUCT_FULL_CATEGORY
FROM SSN4.SQLTTBL;
QUIT;



/* Q8	GET YHE SALES AFTER DISCOUNT AMOUNT FROM SALES-SALES*DISCOUNT */

PROC SQL OUTOBS=100;
SELECT SALES,DISCOUNT,
(SALES-(SALES*DISCOUNT)) AS SALES_AFTER_DISCOUNT
FROM SSN4.SQLTTBL;
QUIT;



/* Q9	CALL IF ORDER_DATE TO SHIP_DATE DAYS GAP IN DELIVERY 	 */
/* 	0	PRIMARY */
/* 	1-3	SECONDARY */
/* 	4-7	THIRD PARTY */
/* 	7+	DELAYED */



PROC SQL OUTOBS=100;
SELECT ORDER_DATE,SHIP_DATE,
INTCK('DAY',ORDER_DATE,SHIP_DATE) AS DAYS_GAP,
CASE
	WHEN CALCULATED DAYS_GAP=0 THEN 'PRIMARY'
	WHEN CALCULATED DAYS_GAP BETWENN 1 AND 3 THEN 'SECONDARY'
	WHEN CALCULATED DAYS_GAP BETWEEN 4 AND 7 THEN 'THIRD PARTY'
	ELSE 'DELAYED'
END AS DELIVERY_STATUS
FROM SSN4.SQLTTBL;
QUIT;





































































































