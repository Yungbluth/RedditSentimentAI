CREATE TABLE programming (body VARCHAR, created_utc VARCHAR);
CREATE TABLE art (body VARCHAR, created_utc VARCHAR);
CREATE TABLE education (body VARCHAR, created_utc VARCHAR);


COPY education (body, created_utc) FROM 's3://<yours3bucket>/subreddits24/education_comments.zst'
CREDENTIALS 'aws_access_key_id= aws_secret_access_key= '
ZSTD JSON 'auto' ACCEPTINVCHARS ' ' TRUNCATECOLUMNS TRIMBLANKS;

COPY programming (body, created_utc) FROM 's3://<yours3bucket>/subreddits24/programming_comments.zst'
CREDENTIALS 'aws_access_key_id= aws_secret_access_key= '
ZSTD JSON 'auto' ACCEPTINVCHARS ' ' TRUNCATECOLUMNS TRIMBLANKS;

COPY art (body, created_utc) FROM 's3://<yours3bucket>/subreddits24/Art_comments.zst'
CREDENTIALS 'aws_access_key_id= aws_secret_access_key= '
ZSTD JSON 'auto' ACCEPTINVCHARS ' ' TRUNCATECOLUMNS TRIMBLANKS;

COPY programming (body, created_utc) FROM 's3://<yours3bucket>/subreddits24/AskProgramming_comments.zst'
CREDENTIALS 'aws_access_key_id= aws_secret_access_key= '
ZSTD JSON 'auto' ACCEPTINVCHARS ' ' TRUNCATECOLUMNS TRIMBLANKS;

COPY programming (body, created_utc) FROM 's3://<yours3bucket>/subreddits24/learnprogramming_comments.zst'
CREDENTIALS 'aws_access_key_id= aws_secret_access_key= '
ZSTD JSON 'auto' ACCEPTINVCHARS ' ' TRUNCATECOLUMNS TRIMBLANKS;