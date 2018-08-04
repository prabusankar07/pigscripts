A= LOAD 'pig/output28/' using PigStorage() as (webLink:chararray,count:int);
B= ORDER A by count DESC;
C= LIMIT B 5;
STORE C into 'pig/output30/';