A= LOAD 'project/weblog_out47/part-m-00000' using PigStorage() as (host:chararray,primaryCategory:chararray,secondaryCategory:chararray,webLink:chararray,status:int);
B= FOREACH A GENERATE $0 as host,$2 as secondarycategory;
C= GROUP B by secondarycategory;
D= FOREACH C GENERATE group,COUNT(B);
STORE D into 'pig/output23/';