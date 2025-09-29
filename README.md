# MySQL Lager Prices 
This project demonstrates the use of MySQL to create, manage, and analyze lager (beer) prices across three countries: Germany, France, and Greece.

# ⚙️ Features
## Database & Table Creation
Created the database lager_prices.
Defined the table prices with columns for dates and lager prices across Germany, France, and Greece.





<img width="463" height="361" alt="image" src="https://github.com/user-attachments/assets/de66d842-ce2e-4cf3-9e79-680d2a40819e" />






## Data Exploration
Checked for NULL values.
Selected and displayed all prices.




<img width="916" height="192" alt="Στιγμιότυπο οθόνης 2025-09-29 152653" src="https://github.com/user-attachments/assets/3d479c6e-e7c8-459f-948d-15fe357dc4a8" />






## Data Analysis Queries
Extracted the top 10 highest lager prices between December 2014 – December 2015.
Identified which country had the highest price for each date using the GREATEST function and CASE statements.
Calculated the total lager prices for each country.









<img width="753" height="671" alt="image" src="https://github.com/user-attachments/assets/da4519fa-6bc3-4d0a-92a6-58667156f22c" />











## Joins
Performed an INNER JOIN between the lager prices table and a stock indices table (SP500, FTSE100) based on matching dates.






<img width="690" height="431" alt="image" src="https://github.com/user-attachments/assets/2530360c-4796-40d6-8264-5e78c33ebc75" />







## Data Modification
Inserted new rows of data into the prices table.
Created a new version of the table (prices_V2).








<img width="323" height="346" alt="Στιγμιότυπο οθόνης 2025-09-29 153144" src="https://github.com/user-attachments/assets/589a5a09-0f29-4516-8032-22e0e095eb81" />
























<img width="478" height="76" alt="Στιγμιότυπο οθόνης 2025-09-29 153319" src="https://github.com/user-attachments/assets/c3a4571c-0913-4d68-aea1-cbd0bf5aa8a5" />





## Union & Filtering
Queried lager prices within a specific price range (between 120 and 140) using both UNION and simple WHERE conditions.







<img width="1197" height="620" alt="Στιγμιότυπο οθόνης 2025-09-29 153414" src="https://github.com/user-attachments/assets/bc29a335-d3f3-4cd5-b332-79fad42c0a29" />







<img width="1023" height="329" alt="Στιγμιότυπο οθόνης 2025-09-29 153452" src="https://github.com/user-attachments/assets/087c137c-9fb9-40e9-bd31-532d60e47180" />



