--Finding the information about the customers who have a package on the way, the day when the package is created and the shipping company which is delivering it  

Select "Customer"."Name" as CustomerName, "Customer"."Address" as CustomerAddress,"Customer"."Phone" as
CustomerPhoneNumber, InvPC."Name" as ShippingCompany,InvPC."Date" as PackageCreatedDate from "Book_Store"."Customer" 
Inner Join (Select * from "Book_Store"."Invoice" as Inv Inner Join 
		(Select * from "Book_Store"."Package" as Pack Inner Join "Book_Store"."ShippingCompany" as Comp On Pack."Shipping_Company_ID"= Comp."Shipping_Company_ID") AS PC
		   On Inv."Package_ID"= PC."Package_ID") as InvPC
		   On "Customer"."Customer_ID" = InvPC."Customer_ID";
		   
--Finding the Copy_ID, ISBN and the warehouse address where the Copy that is inside a package was stored  

Select WInvCo."Address" AS WarehouseAddress, WInvCo."Package_ID", WInvCo."Copy_ID" from 
(Select * from "Book_Store"."Warehouse" as W Inner Join 
 (Select Co."Warehouse_ID",Inv.* from "Book_Store"."Copy" AS Co Inner Join "Book_Store"."Invoice" AS Inv on Co."Copy_ID"=Inv."Copy_ID") AS InvCo
 on W."Warehouse_ID"=InvCo."Warehouse_ID") as WInvCo;

-- Finding the customers who have sent a message, the message that they have sent, and the admin who has received it
Select AdCust."Name", AdCust."Text", AdCust."Username" From
( Select * from "Book_Store". "Admin" AS Ad Inner Join
 ( Select * from "Book_Store"."Message" AS Msg Inner Join "Book_Store"."Customer" as Cust On Msg."Customer_ID"=Cust. "Customer_ID") AS CustMsg
 On Ad."Admin_ID"=CustMsg."Admin_ID") As AdCust;

--Find the authors who have written programming books which are stored in the database
-- and the titles of the books they have written 

Select "Author"."Name", "Author"."Surname", WB."Title" from "Book_Store"."Author" Inner Join
( Select W."Author_ID",HCB.* from "Book_Store"."Written_by" as W Inner Join 
 (Select HC.*, B."Title" from "Book_Store"."Book" as B Inner Join
  (Select * from "Book_Store"."Has" Inner Join "Book_Store"."Category" on "Has". "Category_ID"= "Category"."Category_ID" where "Category"."Name"='Programming') AS HC
 on B."ISBN"= HC."ISBN") as HCB
 on W."ISBN"=HCB."ISBN" ) as WB
 on "Author"."Author_ID"= WB."Author_ID";

-- Find the number of copies each book has and display all the information about each book 
Select "Book".*, Count ("Copy"."Copy_ID") from "Book_Store"."Book" Inner join "Book_Store"."Copy" on "Book"."ISBN"= "Copy"."ISBN" Group By "Book"."ISBN";
