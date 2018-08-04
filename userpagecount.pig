A= LOAD 'project/weblog_out47/part-m-00000' using PigStorage() as (host:chararray,primaryCategory:chararray,secondaryCategory:chararray,webLink:chararray,status:int);
B= FOREACH A GENERATE $0 as host,$3 as webLink;
C= GROUP B by host;
D= FOREACH C GENERATE group,COUNT(B);
STORE D into 'pig/output29/';