A= LOAD 'project/weblog_out47/part-m-00000' using PigStorage() as (host:chararray,primaryCategory:chararray,secondaryCategory:chararray,webLink:chararray,status:int);
B= FOREACH A GENERATE $0 as host,$1 as category;
C= GROUP B by category;
D= FOREACH C GENERATE group,COUNT(B);
STORE D into 'pig/output23/';