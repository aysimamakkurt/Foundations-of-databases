Select "Book".*, Count ("Copy"."Copy_ID") from "Book_Store"."Book" Inner join "Book_Store"."Copy" on "Book"."ISBN"= "Copy"."ISBN" Group By "Book"."ISBN";