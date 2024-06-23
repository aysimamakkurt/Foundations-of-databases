Select WInvCo."Address" AS WarehouseAddress, WInvCo."Package_ID", WInvCo."Copy_ID" from 
(Select * from "Book_Store"."Warehouse" as W Inner Join 
 (Select Co."Warehouse_ID",Inv.* from "Book_Store"."Copy" AS Co Inner Join "Book_Store"."Invoice" AS Inv on Co."Copy_ID"=Inv."Copy_ID") AS InvCo
 on W."Warehouse_ID"=InvCo."Warehouse_ID") as WInvCo;