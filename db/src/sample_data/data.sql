
-- This file is generated by the DataFiller free software.
-- This software comes without any warranty whatsoever.
-- Use at your own risk. Beware, this script may destroy your data!
-- License is GPLv3, see http://www.gnu.org/copyleft/gpl.html
-- Get latest version from http://www.coelho.net/datafiller.html

-- Data generated by: /usr/local/bin/datafiller
-- Version 2.0.1-dev (r832 on 2015-11-01)
-- For postgresql on 2017-05-03T12:34:39.879063 (UTC)
-- 
-- fill table data.user (2)
\echo # filling table data.user (2)
COPY data.user (id,name,email,"password") FROM STDIN (FREEZE ON);
1	alice	alice@email.com	pass
2	bob	bob@email.com	pass
\.
-- 
-- fill table data.todo (6)
\echo # filling table data.todo (6)
COPY data.todo (id,todo,private,owner_id) FROM STDIN (FREEZE ON);
1	updated	FALSE	1
2	item_2	TRUE	1
3	item_3	FALSE	1
4	item_4	TRUE	2
5	item_5	TRUE	2
6	item_6	FALSE	2
\.
-- 
-- restart sequences
ALTER SEQUENCE data.user_id_seq RESTART WITH 3;
ALTER SEQUENCE data.todo_id_seq RESTART WITH 7;
-- 
-- analyze modified tables
ANALYZE data.user;
ANALYZE data.todo;
