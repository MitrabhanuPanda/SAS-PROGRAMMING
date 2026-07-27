/* PROCEDURAL SORT (adapted from SAS PROCEDURAL SORT.sas) */
/* A small WORK.CUST sample recreates the customer table the original imported
   from Excel, so every PROC SORT option below runs exactly as written. */
DATA WORK.CUST;
INPUT COUNTRY $ CITY $ SALARY;
DATALINES;
India Delhi 2400
India Mumbai 5100
India Delhi 2400
USA Boston 6200
USA Austin 3300
UK London 4500
UK London 4500
Japan Tokyo 7100
India Pune 1800
USA Boston 6200
;
RUN;

/* Basic sort by one column */
PROC SORT DATA=WORK.CUST;
BY COUNTRY;
RUN;

/* Sort by multiple columns */
PROC SORT DATA=WORK.CUST;
BY COUNTRY SALARY;
RUN;

/* OUT= keeps the source unsorted, writes a sorted copy */
PROC SORT DATA=WORK.CUST OUT=SORTED;
BY COUNTRY SALARY;
RUN;

/* DESCENDING */
PROC SORT DATA=WORK.CUST OUT=SORTED;
BY DESCENDING COUNTRY SALARY;
RUN;

/* NODUPKEY — drop duplicates on the BY column */
PROC SORT DATA=WORK.CUST NODUPKEY OUT=SORTED;
BY  COUNTRY;
RUN;

/* NODUP — drop rows duplicated across all variables */
PROC SORT DATA=WORK.CUST NODUP OUT=SORTED;
BY  COUNTRY;
RUN;

/* NODUP by _ALL_ */
PROC SORT DATA=WORK.CUST NODUP OUT=SORTED ;
BY  _ALL_;
RUN;

/* DUPOUT — route the dropped duplicates to a second table */
PROC SORT DATA=WORK.CUST NODUP OUT=SORTED DUPOUT=DUP ;
BY  _ALL_;
RUN;

PROC PRINT DATA=SORTED;
RUN;
PROC PRINT DATA=DUP;
RUN;
