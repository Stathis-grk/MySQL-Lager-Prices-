-- 1) Create Our Database 
 CREATE DATABASE lager_prices; 
 USE lager_prices; 
 CREATE TABLE prices(DATE CHAR(10),
                    GE_price double,
                    FR_price double,
                    GR_price double);
-- Now lets Check Our Dates and Prices 
 SELECT * FROM prices;


-- 2) Check for NULL values
 SELECT * 
 FROM prices 
 WHERE (GE_price AND FR_price AND GR_price) IS NULL; -- We dont have any NULL values


-- 3) Top Highest lager Prices 2014/12 - 2015/12
 SELECT DISTINCT DATE,
	            GE_price AS 'German Lager Prices',
	            FR_price AS 'France Lager Prices',
	            GR_price AS 'Greece Lager Prices',
                GREATEST(GE_price, FR_price, GR_price) AS 'Max Lager Price',
 CASE
    WHEN GE_price = GREATEST(GE_price, FR_price, GR_price) THEN 'Germany' 
    WHEN FR_Price = GREATEST(GE_price, Fr_price, Gr_price) THEN 'France' 
    WHEN GR_price = GREATEST(GE_price, FR_price, Gr_price) THEN 'Greece'
 END AS 'country max' 
 FROM prices 
 ORDER BY DATE 
 LIMIT 13;


-- 4) Join Operator between lager prices and stock indices'
 SELECT DATE AS 'Date for lager Prices',
       GE_price AS 'German',
       FR_price AS 'France',
       GR_price AS 'Greece',
       TradeDate AS 'Date for SP500 and ftse100',
       SP500,
       ftse100
 FROM prices l 
 JOIN stock_indices.stocks s  
 ON l.DATE = s.TradeDate; 


-- 5) Total lager prices between the countrys
 SELECT sum(GE_price) AS 'total lager prices in Germany',
		sum(FR_price) AS 'total lager prices in France', 
        sum(GR_price) AS 'Total lager prices in Greece' 
 FROM prices;

-- 6) Insert a new row 
 INSERT INTO prices()
 VALUES ('2025-04',
 		  '145', 
        '142',
        '150');
-- Saw the results
 SELECT * FROM prices
 ORDER BY DATE DESC;
 
-- 7) Create new table and use Union operator 
CREATE TABLE prices_V2 AS
SELECT * FROM prices;



-- lager prices between 120 and 140 using Union 
SELECT DATE, GE_price, FR_price, GR_price
FROM prices
WHERE (GE_price >= 120 AND GE_price <=140) AND (FR_price >= 1200 AND FR_price <=140) AND (FR_price >= 120 AND FR_price <=140)
UNION 
SELECT DATE, GE_price, FR_price, GR_price
FROM prices_v2
WHERE (GE_price BETWEEN 120 AND 140) AND (FR_price BETWEEN 120 AND 140) AND (GR_price BETWEEN 120 AND 140) 
ORDER BY DATE DESC;
-- Withoute union with one table 
SELECT * 
FROM prices 
WHERE (GE_price BETWEEN 120 AND 140) AND (FR_price BETWEEN 120 AND 140) AND (GR_price BETWEEN 120 AND 140) 
ORDER BY DATE DESC;

-- 8) Usefull statistics (Varience, StdDEV and Average Price) 
SELECT variance(GE_price) AS 'Variernce for Germany',
       variance(FR_price) AS 'variance for France',
       variance(GR_price) AS 'variance for Greece',
       stddev(GE_price) AS 'standard deviation for Germany',
       stddev(FR_price) AS 'standard deviation for Germany',
       stddev(GR_price) AS 'standard deviation for Greece',
       AVG(GE_price) AS 'Average price for Germany',
       AVG(FR_price) AS 'Average price for France',
       AVG(GR_price) AS 'Average price for Greece'
FROM prices;