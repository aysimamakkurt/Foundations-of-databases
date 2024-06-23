Select AdCust."Name", AdCust."Text", AdCust."Username" From
( Select * from "Book_Store". "Admin" AS Ad Inner Join
 ( Select * from "Book_Store"."Message" AS Msg Inner Join "Book_Store"."Customer" as Cust On Msg."Customer_ID"=Cust. "Customer_ID") AS CustMsg
 On Ad."Admin_ID"=CustMsg."Admin_ID") As AdCust;