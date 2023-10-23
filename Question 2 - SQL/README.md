# Questions and Solutions







----

### Question 2



**a.Show scheme generation query**

A thorough queries can be found [here](https://github.com/khairahnh/data-questionnaire-de/blob/master/Question%202%20-%20SQL/database.sql)

----


**b. Show thw SQL query for number of customers purchasing more than 5 books.**

![query1](https://github.com/khairahnh/data-questionnaire-de/assets/100784629/919c3c31-585d-4187-bbff-d79db770794a)




### **Step(s)**
- Use **LEFT JOIN** to merge `customers` and `invoices` tables .
- Select `name` column to identify the customer(s)
- Filter `quantity` to extract quantity of books greater than 5. Output shows that `Shanon Teoh` is the customer who purchased books more than 5.
- Perform a **COUNT** aggregation on the `name` column to determine the number of customer. 

### **Answer**

![output_b](https://github.com/khairahnh/data-questionnaire-de/assets/100784629/b85139c5-84a8-4580-a20a-979a1564efe6)


----

**c. Show the SQL query for a list of customers who never purchased anything**

![query2](https://github.com/khairahnh/data-questionnaire-de/assets/100784629/89ca74f3-658a-4959-b0db-bda4619a8e21)


### **Steps**

![output2](https://github.com/khairahnh/data-questionnaire-de/assets/100784629/f17854c5-7609-484d-9f36-890ccbb5e775)



- Use **LEFT JOIN** to merge `customers` and `invoices` tables .
- Select `c.name` and `i.total` to find out customers who never made any purchases.
- Filter the column `customer_id` and set the column to **NULL**


### **Answer**





----

**d. Show the SQL query for list of book purchased with the users.**


![query3](https://github.com/khairahnh/data-questionnaire-de/assets/100784629/7498b4b9-2779-4643-95f4-f516687eb92f)


### **Steps**

- USE **LEFT JOIN** to merge `customers`, `invoices` and `invoice_lines` tables.
- Select `c.name` and `il.description` from the tables to determine the customers' names and books that they bought
- Filter the tables with `customer_id` and set the column to **NOT NULL** 

### **Answer**

![output3](https://github.com/khairahnh/data-questionnaire-de/assets/100784629/67eb2e7b-87ef-4deb-956d-955906b9d0ce)



