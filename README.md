# data-questionnaire-de





# Questions and Solutions




### Question 1: Describe a Data Engineer role in an organisation and its main responsibilities
A data engineer is responsible for designing, maintaining, and optimizing systems that extract and collect raw data from multiple sources, and transform and store data in table form. He/she needs to ensure that the data is highly available, consistent, accurate and recoverable for enterprises and organizations to make most of the data. Data engineer is also responsible to choose the right databases, storage systems and cloud platform. This is to ensure the data flow inside an organization is seamless and data be delivered to whoever needs it. 


----

### Question 2



**a.Show scheme generation query**

A thorough queries can be found [here](https://github.com/khairahnh/data-questionnaire-de/blob/master/Question%202%20-%20SQL/database.sql)

----


**b. Show thw SQL query for number of customers purchasing more than 5 books.**

![query1](https://github.com/khairahnh/data-questionnaire-de/assets/100784629/29e93c07-4210-4376-b141-8a8ff6fe12ae)

### **Step(s)**
- Perform a **COUNT** aggregation on the `id` column and filter the number of customers who have  `quantity` of more than 5.

### **Answer**

![output_b](https://github.com/khairahnh/data-questionnaire-de/assets/100784629/bb8c8606-fa59-4232-b917-6cab7d5e589e)

----

**c. Show the SQL query for a list of customers who never purchased anything**


![query2](https://github.com/khairahnh/data-questionnaire-de/assets/100784629/3df00f92-c1eb-4a4c-a0ee-e50210d5dad9)

### **Steps**


- Use **LEFT JOIN** to merge `customers` and `invoices` tables and `c.name` to find out which customers who never made any purchases.
- Filter the tables with `customer_id` is set to **NULL**


### **Answer**
![output2](https://github.com/khairahnh/data-questionnaire-de/assets/100784629/a8b86a83-791f-487d-987c-b1a2d86bb2c8)



----

**d. Show the SQL query for list of book purchased with the users.**

![query3](https://github.com/khairahnh/data-questionnaire-de/assets/100784629/1f18bb66-ce78-4eda-a451-76bad579fc29)

### **Steps**

- USE **LEFT JOIN** to merge `customers`, `invoices` and `invoice_lines` tables as `c.name` and `l.description` are from the tables.
- Filter the tables with `customer_id` is set to **NOT NULL** 

### **Answer**

![output3](https://github.com/khairahnh/data-questionnaire-de/assets/100784629/13cc908f-48a9-4b70-914d-e5a7a5fc2094)
