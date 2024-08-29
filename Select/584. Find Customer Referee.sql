SELECT name 
FROM Customer 
WHERE referee_id != 2 OR referee_id IS NULL;

-- Here, I have used '!=' to exclude customers who has 'referee_id = 2'. Moreover, to identify customers who dont have any referee_id associated with them I have used 'IS NULL'.
