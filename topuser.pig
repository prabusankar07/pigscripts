A= LOAD 'pig/output29/' using PigStorage() as (host:chararray,count:int);
B= ORDER A by count DESC;
C= LIMIT B 5;
STORE C into 'pig/output34/';