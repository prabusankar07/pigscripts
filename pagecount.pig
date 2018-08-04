A= LOAD 'pig/output7/part-m-00000' using PigStorage() as (host:chararray,webLink:chararray);
B= GROUP A by webLink;
C = FOREACH B GENERATE group,COUNT(A); 
STORE C into 'pig/output20/';