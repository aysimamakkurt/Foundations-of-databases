Select "Author"."Name", "Author"."Surname", WB."Title" from "Book_Store"."Author" Inner Join
( Select W."Author_ID",HCB.* from "Book_Store"."Written_by" as W Inner Join 
 (Select HC.*, B."Title" from "Book_Store"."Book" as B Inner Join
  (Select * from "Book_Store"."Has" Inner Join "Book_Store"."Category" on "Has". "Category_ID"= "Category"."Category_ID" where "Category"."Name"='Programming') AS HC
 on B."ISBN"= HC."ISBN") as HCB
 on W."ISBN"=HCB."ISBN" ) as WB
 on "Author"."Author_ID"= WB."Author_ID";