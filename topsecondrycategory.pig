
A= LOAD 'pig/output32/' using PigStorage() as (secondaryCategory:chararray,count:int);
B= ORDER A by count DESC;
C= LIMIT B 5;
STORE C into 'pig/output33/';