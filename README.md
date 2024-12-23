# BigQuery-Portofolio

Welcome to my Data Analyst Portfolio! I am a data analyst with experience in using various tools and technologies. I am proficient in data tools such as Python, SQL, BigQuery, Excel, Power BI, Tableau and Looker Studio. 

This is a repository to showcase my data analytics skills and projects that i get during my studies using *BigQuery*

data is accessed from BigQuery under the following conditions:

  - **Database**: `bigquery-public-data.thelook_ecommerce`, can directly access the link [this](https://console.cloud.google.com/bigquery?p=bigquery-public-data&d=thelook_ecommerce).
  - **Tabel**     : **JUST** using table `orders`,`order_items`,`products`, and `users`.
      - `orders` contains transaction data.
      - `order_items` contains item data in one transaction (connector too `products`). 
      - `products` contains detailed data on products purchased in the transaction.
      - `users` contains detailed user demographic data.


# Objectives
- Able to retrieve data from SQL.
- Able to apply basic SQL queries
- Able to apply GROUP BY and ORDER BY
- Able to apply WHERE
- Able to apply JOIN

---

You are a Data Analyst at an e-commerce company "The Look". You are asked to retrieve data from the Google BigQuery database.

1. Provide a table of the number of transactions per day (date based on `created_at`) during the Look's operation (sort from the smallest date).
2. Sort the shipping status from the most frequent to the least frequent during the Look's operation during 2023.
3. From which countries are buyers on The Look platform during the first half of 2024?
4. Which brand is most purchased by women? (provide only the Top 1) during December 2023?
5. In which month is the peak season during 2021-2023? (Hint: based on the average number of transactions in one month)
6. Who are the most loyal customers in Q2 2024? (loyal customers are calculated from the highest number of transactions and Q2 is calculated from April-June)
7. What is the average duration of merchant handling goods (difference in days from `created_at` to `shipped_at`) and shipping goods (difference in days from `shipped_at` to `delivered_at`)? **Time period in the first half of 2024**.
8. How much total commission did the Look Commerce earn during Q1 2024?
> commission is 10% of the merchant's profit for each transaction (the merchant's profit is calculated from the difference between `retail_price` and `cost` from transactions with the status "Complete")
