--mainframe_override=# \d forum_posts;
--to get the content columns in forum_posts.


--mainframe_override=# SELECT content, date FROM forum_posts WHERE date BETWEEN '2048-04-01' AND '2048-04-30';
--finds all content within the month of April 2048 and content to search for someone mentioning their dad.


--mainframe_override=# SELECT content, date, author, id FROM forum_posts WHERE date BETWEEN '2048-04-01' AND '2048-04-09';
--The date  for the post was the 8th, this is getting their id and their usersame handle. ID: nbZY_ Author: smart-money-44


--mainframe_override=# SELECT username FROM forum_accounts WHERE username LIKE 'sm%';
--matches the username starting with 'sm' to the account found earlier


--mainframe_override=# SELECT username, first_name, last_name FROM forum_accounts WHERE username LIKE 'sm%';
--username: smart-money-44
--first_name: Brad
--last_name: Steele


--mainframe_override=# SELECT last_name, first_name, username FROM emptystack_accounts WHERE last_name = 'Steele';
-- Steele    | Andrew     | triple-cart-38

--mainframe_override=# SELECT last_name, first_name, username FROM forum_accounts WHERE last_name = 'Steele';
-- Steele    | Andrew     | sharp-engine-57


--mainframe_override=# SELECT last_name, first_name, username, password FROM emptystack_accounts WHERE last_name = 'Steele' AND first_name = 'Andrew';
-- Steele    | Andrew     | triple-cart-38 | password456


--PS C:\Users\tyllo\OneDrive\Desktop\Workshops\Mainframe> node mainframe
--Username: triple-cart-38
--Password: password456
--Welcome, triple-cart-38!
--Loading messages and projects...
--Your data has been loaded to emptystack.sql. Have a nice day!
--PS C:\Users\tyllo\OneDrive\Desktop\Workshops\Mainframe> psql -f emptystack.sql;


--mainframe_override=# SELECT * FROM emptystack_messages WHERE subject ILIKE 'taxi%';
-- LidWj | your-boss-99 | triple-cart-38 | Project TAXI | Deploy Project TAXI by end of week. We need this out ASAP.


--mainframe_override=# SELECT * FROM emptystack_accounts WHERE username = 'your-boss-99';
--your-boss-99 | notagaincarter | Skylar     | Singer


--mainframe_override=# SELECT * FROM emptystack_projects WHERE code ILIKE 'taxi%';
-- DczE0v2b | TAXI

--PS C:\Users\tyllo\OneDrive\Desktop\Workshops\Mainframe> node mainframe -stop
--WARNING: admin access required. Unauthorized access will be logged.
--Username: your-boss-99
--Password: notagaincarter
--Welcome, your-boss-99.
--Project ID: DczE0v2b
--Initiating project shutdown sequence...
--5...
--4...
--3...
--2...
--1...
--Project shutdown complete.