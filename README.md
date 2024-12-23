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

1. Provide a table of the number of transactions per day (date based on `created_at`) during the Look's operation (sort from the smallest date).<br />
![porto1](https://github.com/user-attachments/assets/e9ef5c4f-96a0-492f-9ee0-bfcc4028271f)

2. Sort the shipping status from the most frequent to the least frequent during the Look's operation during 2023.<br />
![porto2](https://github.com/user-attachments/assets/e32d116e-01c2-441f-96b8-d28041832955)

3. From which countries are buyers on The Look platform during the first half of 2024?<br />
![porto3](https://github.com/user-attachments/assets/5e39c968-5492-4c7f-b8a2-cb01730c292f)

5. Which brand is most purchased by women? (provide only the Top 1) during December 2023?<br />
![porto4](https://github.com/user-attachments/assets/4d06c368-1666-4a41-bfe1-a36114554b27)

6. In which month is the peak season during 2021-2023? (Hint: based on the average number of transactions in one month)<br />
![porto5](https://github.com/user-attachments/assets/377e3f94-4a64-436e-b588-bdbe95b359e7)

7. Who are the most loyal customers in Q2 2024? (loyal customers are calculated from the highest number of transactions and Q2 is calculated from April-June)<br />
![porto6](https://github.com/user-attachments/assets/3f155342-edfd-4230-965f-7e91cadd314f)

8. What is the average duration of merchant handling goods (difference in days from `created_at` to `shipped_at`) and shipping goods (difference in days from `shipped_at` to `delivered_at`)? **Time period in the first half of 2024**.<br />
![porto7](https://github.com/user-attachments/assets/9fddbf45-a212-4acd-b067-9e5e320e1f6d)

9. How much total commission did the Look Commerce earn during Q1 2024?
> commission is 10% of the merchant's profit for each transaction (the merchant's profit is calculated from the difference between `retail_price` and `cost` from transactions with the status "Complete") <br />
![porto8](https://github.com/user-attachments/assets/957b370e-a42e-4c46-adb4-9ff799556133)
