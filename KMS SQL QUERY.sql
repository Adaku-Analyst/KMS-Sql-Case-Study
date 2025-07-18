select * from [dbo].[KMS Sql Case Study]


--1. Which product category had the highest sales?
Select product_category, sales from [KMS Sql Case Study]
Where sales = (select max(sales) from [KMS Sql Case Study])

--2. What are the Top 3 and Buttom 3 regions in terms of sales?
select top 3 Region, SUM(Sales) as totalsales from [KMS Sql Case Study]
Group by Region
Order by totalsales DESC

Select top 3  Region, Sum(Sales) as totalsales from [KMS Sql Case Study]
Group by Region
Order by totalsales ASC

--3. What were the total sales of appliances in Ontario?
Select sum(Sales) as TotalSales from [KMS Sql Case Study]
where Region = 'Ontario'

--4. Advise the management of KMS on what to do to increase the revenue from the buttom 10 customer
	Select  Top 10 * FROM [KMS Sql Case Study]
	Order by Profit DESC

	Select  top 10 * from [KMS Sql Case Study]
	Order by profit ASC

	---KMS should introduce price control and make more sales incentives available---

--5. KMS incurred the most shipping cost using which shipping method? 
Select Top 1 Max(Shipping_cost), Ship_Mode from [KMS Sql Case Study]
Group by Ship_Mode 

Select Shipping_cost, Ship_Mode from [KMS Sql Case Study]
Where Shipping_cost =(select Max(shipping_Cost) as Max_Shipping_cost from [KMS Sql Case Study])
	
---CASE Scenario II---
--6. Who are the most valuable customers, and what products or services do they typically purchase?---
Select * from [KMS Sql Case Study]
Select Top 10 Sales, Product_Name, Customer_Name
From [KMS Sql Case Study]
Order by Profit Desc

--7. Which small business customer had the highest sales?
Select Top 1 Customer_Name, SUM(Sales) AS Total_Sales
From [KMS Sql Case Study]
Where Customer_segment = 'Small Business'
Group by Customer_Name
Order by Total_Sales DESC

--8. Which corporate Customer placed the most number of order  in 2009-2012?
Select Top 1 Customer_Name, Count(Order_id) AS Order_Count
From [KMS Sql Case Study]
Where Customer_segment = 'Corporate'
Group by Customer_Name
Order by Order_Count DESC

--9. Which consumer customer was the most profitable one?
Select Top 1 Customer_Name, Sum(Profit) AS Total_Profit
From [KMS Sql Case Study]
Where Customer_Segment = 'Consumer'
Group by Customer_Name
Order by Total_Profit DESC

--10.  Which customer returned items, and what segment do they belong to?
Select Customer_name,Customer_segment,[status]
From [KMS Sql Case Study]
Join [dbo].[Order_Status (1)]
on [KMS Sql Case Study].Order_ID = [dbo].[Order_Status (1)].[Order_ID]

--11. If the delivery truck is the most economical but the slowest shipping method and 
---express Air is the fastest but the most expensive one, 
---Do you think the company appropriately spent shipping costs based on the Order Priority?
---Explain your answer---

Select ship_mode, order_Priority, shipping_cost
from [KMS Sql Case Study]
Group by Ship_Mode, Order_Priority, Shipping_Cost
Order by Shipping_Cost DESC

---Answer---
---No, I do not think the company appropiately spent shipping costs based on the order priority they do it randomly---