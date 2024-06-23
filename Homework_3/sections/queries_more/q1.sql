Select "Customer"."Name" as CustomerName, "Customer"."Address" as CustomerAddress,"Customer"."Phone" as
CustomerPhoneNumber, InvPC."Name" as ShippingCompany,InvPC."Date" as PackageCreatedDate from "Book_Store"."Customer" 
Inner Join (Select * from "Book_Store"."Invoice" as Inv Inner Join 
		(Select * from "Book_Store"."Package" as Pack Inner Join "Book_Store"."ShippingCompany" as Comp On Pack."Shipping_Company_ID"= Comp."Shipping_Company_ID") AS PC
		   On Inv."Package_ID"= PC."Package_ID") as InvPC
		   On "Customer"."Customer_ID" = InvPC."Customer_ID";