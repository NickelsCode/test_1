SELECT *
FROM dataset_1
LIMIT 10;

--Showing destination column only
SELECT destination
FROM dataset_1
LIMIT 10;

--Showing passanger column only, passanger mispelled
SELECT passanger
FROM dataset_1
LIMIT 10;

SELECT *
FROM dataset_1
WHERE passanger = 'Alone'
AND weather = 'Sunny'
AND destination = 'Home'
LIMIT 10;


SELECT *
FROM dataset_1
WHERE passanger = 'Alone'
OR weather = 'Sunny';

-- hello
SELECT destination AS 'Destination',
AVG(temperature) AS 'Avg Temp',
COUNT(temperature),
COUNT(DISTINCT temperature)
FROM dataset_1 d 
GROUP BY destination;

-- hello again
SELECT destination AS 'Destination', time,
AVG(temperature),
COUNT(temperature),
COUNT(DISTINCT temperature)
FROM dataset_1 d 
GROUP BY destination;
