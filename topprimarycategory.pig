A= LOAD 'pig/output23/' using PigStorage() as (primaryCategory:chararray,count:int);
B= ORDER A by count DESC;
C= LIMIT B 5;
STORE C into 'pig/output31/';