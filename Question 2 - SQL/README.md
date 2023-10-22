# Questions and Solutions




### Question 1: Describe a Data Engineer role in an organisation and its main responsibilities
A data engineer is responsible for designing, maintaining, and optimizing systems that extract and collect raw data from multiple sources, and transform and store data in table form. He/she needs to ensure that the data is highly available, consistent, accurate and recoverable for enterprises and organizations to make most of the data. Data engineer is also responsible to choose the right databases, storage systems and cloud platform. This is to ensure the data flow inside an organization is seamless and data be delivered to whoever needs it. 


----

### Question 2



**a.Show scheme generation query**

A thorough queries can be found [here](https://github.com/khairahnh/data-questionnaire-de/blob/master/Question%202%20-%20SQL/database.sql)

----


**b. Show thw SQL query for number of customers purchasing more than 5 books.**


![query1](https://github.com/khairahnh/data-questionnaire-de/assets/100784629/b28960e9-7bba-4229-92f8-789f620ef214)


### **Step(s)**
- Use **LEFT JOIN** to merge `customers` and `invoices` tables .
- Perform a **COUNT** aggregation on the `name` column from `customers` table.
- Filter `quantity` to extract quantity of books greater than 5.

### **Answer**

![output_b](https://github.com/khairahnh/data-questionnaire-de/assets/100784629/f97e8651-0e20-4057-9047-62768001d56b)

----

**c. Show the SQL query for a list of customers who never purchased anything**


![query2](https://github.com/khairahnh/data-questionnaire-de/assets/100784629/14d5b4a4-f1f9-40b1-889c-beb07533d25a)


### **Steps**


- Use **LEFT JOIN** to merge `customers` and `invoices` tables and choose `c.name` and `i.total` to find out which customers who never made any purchases.
- Filter the column `customer_id` and set the column to **NULL**


### **Answer**
![output2](https://github.com/khairahnh/data-questionnaire-de/assets/100784629/5cd8b3c4-b467-4c22-9e4c-1ca9b070194f)



----

**d. Show the SQL query for list of book purchased with the users.**


![query3](https://github.com/khairahnh/data-questionnaire-de/assets/100784629/a8af60f6-7457-4f8c-9ee6-0f19fa16563f)


### **Steps**

- USE **LEFT JOIN** to merge `customers`, `invoices` and `invoice_lines` tables.
- Select `c.name` and `il.description` from the tables to determine the customers' names and books that they bought
- Filter the tables with `customer_id` is set to **NOT NULL** 

### **Answer**

![output3](https://github.com/khairahnh/data-questionnaire-de/assets/100784629/e0138cce-6701-467d-aa62-273463f7b549)


