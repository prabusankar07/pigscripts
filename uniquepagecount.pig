A= LOAD 'project/weblog_out47/part-m-00000' using PigStorage() as (host:chararray,primaryCategory:chararray,secondaryCategory:chararray,webLink:chararray,status:int);
B= FOREACH A GENERATE $0 as host,$3 as webLink;
C= GROUP B by webLink;
D= FOREACH C {user = B.host ; uniq = distinct user; GENERATE group, COUNT(uniq);};
STORE D into 'pig/output28/';