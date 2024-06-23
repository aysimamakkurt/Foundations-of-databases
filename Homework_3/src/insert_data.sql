--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: Admin; Type: TABLE DATA; Schema: Book_Store; Owner: postgres
--

INSERT INTO "Book_Store"."Admin" ("Admin_ID", "Role", "Username", "Password") VALUES (1, 'Main', 'admin', 'admin123');
INSERT INTO "Book_Store"."Admin" ("Admin_ID", "Role", "Username", "Password") VALUES (4, 'Support', 'Service', 'service123');


--
-- Data for Name: Author; Type: TABLE DATA; Schema: Book_Store; Owner: postgres
--

INSERT INTO "Book_Store"."Author" ("Author_ID", "Name", "Surname", "URL", "Email") VALUES (14, 'Harvey', 'Deitel', '', '');
INSERT INTO "Book_Store"."Author" ("Author_ID", "Name", "Surname", "URL", "Email") VALUES (15, 'Paul', 'Deitel', '', '');
INSERT INTO "Book_Store"."Author" ("Author_ID", "Name", "Surname", "URL", "Email") VALUES (16, 'Tem', 'Nieto', '', '');
INSERT INTO "Book_Store"."Author" ("Author_ID", "Name", "Surname", "URL", "Email") VALUES (17, 'Sean', 'Santry', '', '');


--
-- Data for Name: Book; Type: TABLE DATA; Schema: Book_Store; Owner: postgres
--

INSERT INTO "Book_Store"."Book" ("Title", "Price", "Pages", "Language", "Description", "ISBN") VALUES ('C How to Program', 69.95, 1008, 'English', '', '0130895725');
INSERT INTO "Book_Store"."Book" ("Title", "Price", "Pages", "Language", "Description", "ISBN") VALUES ('The Complete C++ Training Course', 109.95, 1264, 'English', '', '0139163050');
INSERT INTO "Book_Store"."Book" ("Title", "Price", "Pages", "Language", "Description", "ISBN") VALUES ('Java How to Program', 129.95, 1296, 'English', '', '0130125075');
INSERT INTO "Book_Store"."Book" ("Title", "Price", "Pages", "Language", "Description", "ISBN") VALUES ('Internet and World Wide Web How to Program', 69.95, 960, 'English', '', '0130161438');
INSERT INTO "Book_Store"."Book" ("Title", "Price", "Pages", "Language", "Description", "ISBN") VALUES ('e-Business and eCommerce How to Program', 69.95, 1312, 'English', '', '0132261197');


--
-- Data for Name: Category; Type: TABLE DATA; Schema: Book_Store; Owner: postgres
--

INSERT INTO "Book_Store"."Category" ("Category_ID", "Name") VALUES (1, 'Adventure stories');
INSERT INTO "Book_Store"."Category" ("Category_ID", "Name") VALUES (2, 'Classics');
INSERT INTO "Book_Store"."Category" ("Category_ID", "Name") VALUES (3, 'Crime');
INSERT INTO "Book_Store"."Category" ("Category_ID", "Name") VALUES (4, 'Fairy tales, fables, and folk tales');
INSERT INTO "Book_Store"."Category" ("Category_ID", "Name") VALUES (5, 'Fantasy');
INSERT INTO "Book_Store"."Category" ("Category_ID", "Name") VALUES (6, 'Historical fiction');
INSERT INTO "Book_Store"."Category" ("Category_ID", "Name") VALUES (7, 'Horror');
INSERT INTO "Book_Store"."Category" ("Category_ID", "Name") VALUES (8, 'Humour and satire');
INSERT INTO "Book_Store"."Category" ("Category_ID", "Name") VALUES (9, 'Literary fiction');
INSERT INTO "Book_Store"."Category" ("Category_ID", "Name") VALUES (10, 'Mystery');
INSERT INTO "Book_Store"."Category" ("Category_ID", "Name") VALUES (11, 'Poetry');
INSERT INTO "Book_Store"."Category" ("Category_ID", "Name") VALUES (12, 'Plays');
INSERT INTO "Book_Store"."Category" ("Category_ID", "Name") VALUES (13, 'Romance');
INSERT INTO "Book_Store"."Category" ("Category_ID", "Name") VALUES (14, 'Science fiction');
INSERT INTO "Book_Store"."Category" ("Category_ID", "Name") VALUES (15, 'Short stories');
INSERT INTO "Book_Store"."Category" ("Category_ID", "Name") VALUES (16, 'Thrillers');
INSERT INTO "Book_Store"."Category" ("Category_ID", "Name") VALUES (17, 'War');
INSERT INTO "Book_Store"."Category" ("Category_ID", "Name") VALUES (18, 'Women’s fiction');
INSERT INTO "Book_Store"."Category" ("Category_ID", "Name") VALUES (19, 'Young adult');
INSERT INTO "Book_Store"."Category" ("Category_ID", "Name") VALUES (20, 'Autobiography and memoir');
INSERT INTO "Book_Store"."Category" ("Category_ID", "Name") VALUES (21, 'Biography');
INSERT INTO "Book_Store"."Category" ("Category_ID", "Name") VALUES (22, 'Essays');
INSERT INTO "Book_Store"."Category" ("Category_ID", "Name") VALUES (23, 'Non-fiction novel');
INSERT INTO "Book_Store"."Category" ("Category_ID", "Name") VALUES (24, 'Self-help');
INSERT INTO "Book_Store"."Category" ("Category_ID", "Name") VALUES (25, 'Programming');


--
-- Data for Name: Warehouse; Type: TABLE DATA; Schema: Book_Store; Owner: postgres
--

INSERT INTO "Book_Store"."Warehouse" ("Warehouse_ID", "Address") VALUES (1, 'Padova');
INSERT INTO "Book_Store"."Warehouse" ("Warehouse_ID", "Address") VALUES (2, 'Vicenza');
INSERT INTO "Book_Store"."Warehouse" ("Warehouse_ID", "Address") VALUES (3, 'Treviso');


--
-- Data for Name: Copy; Type: TABLE DATA; Schema: Book_Store; Owner: postgres
--

INSERT INTO "Book_Store"."Copy" ("Copy_ID", "ISBN", "Warehouse_ID", "Availibility") VALUES (1, '0130895725', 1, true);
INSERT INTO "Book_Store"."Copy" ("Copy_ID", "ISBN", "Warehouse_ID", "Availibility") VALUES (2, '0139163050', 1, true);
INSERT INTO "Book_Store"."Copy" ("Copy_ID", "ISBN", "Warehouse_ID", "Availibility") VALUES (3, '0130125075', 2, true);
INSERT INTO "Book_Store"."Copy" ("Copy_ID", "ISBN", "Warehouse_ID", "Availibility") VALUES (4, '0130161438', 3, true);
INSERT INTO "Book_Store"."Copy" ("Copy_ID", "ISBN", "Warehouse_ID", "Availibility") VALUES (5, '0132261197', 2, true);


--
-- Data for Name: Customer; Type: TABLE DATA; Schema: Book_Store; Owner: postgres
--

INSERT INTO "Book_Store"."Customer" ("Customer_ID", "Name", "Address", "Email", "Surname", "Password", "Phone") VALUES (1, 'Aysima', 'Padova', 'aysimaakkurt@gmail.com', 'Akkurt', '59541565fasf', '+395551655151');
INSERT INTO "Book_Store"."Customer" ("Customer_ID", "Name", "Address", "Email", "Surname", "Password", "Phone") VALUES (2, 'Ali', 'Vicenza', 'aliyildirim@gmail.com', 'Yildirim', 'sdf5599ag', '+39565677771');


--
-- Data for Name: Has; Type: TABLE DATA; Schema: Book_Store; Owner: postgres
--

INSERT INTO "Book_Store"."Has" ("Category_ID", "ISBN") VALUES (25, '0130895725');
INSERT INTO "Book_Store"."Has" ("Category_ID", "ISBN") VALUES (25, '0139163050');
INSERT INTO "Book_Store"."Has" ("Category_ID", "ISBN") VALUES (25, '0130125075');
INSERT INTO "Book_Store"."Has" ("Category_ID", "ISBN") VALUES (25, '0130161438');
INSERT INTO "Book_Store"."Has" ("Category_ID", "ISBN") VALUES (25, '0132261197');


--
-- Data for Name: ShippingCompany; Type: TABLE DATA; Schema: Book_Store; Owner: postgres
--

INSERT INTO "Book_Store"."ShippingCompany" ("Shipping_Company_ID", "Name", "Phone") VALUES (1, 'AP Moller-Maersk Group', '+1654658465645');
INSERT INTO "Book_Store"."ShippingCompany" ("Shipping_Company_ID", "Name", "Phone") VALUES (2, 'Mediterranean Shipping Company S.A.', '+6555655665');
INSERT INTO "Book_Store"."ShippingCompany" ("Shipping_Company_ID", "Name", "Phone") VALUES (3, 'China Cosco ', '+22441654531');


--
-- Data for Name: Package; Type: TABLE DATA; Schema: Book_Store; Owner: postgres
--

INSERT INTO "Book_Store"."Package" ("Package_ID", weight, "Shipping_Company_ID", "Date") VALUES (1, 0.5, 1, '2020-10-10');
INSERT INTO "Book_Store"."Package" ("Package_ID", weight, "Shipping_Company_ID", "Date") VALUES (2, 0.7, 2, '2020-10-11');
INSERT INTO "Book_Store"."Package" ("Package_ID", weight, "Shipping_Company_ID", "Date") VALUES (3, 0.3, 3, '2020-10-12');


--
-- Data for Name: Invoice; Type: TABLE DATA; Schema: Book_Store; Owner: postgres
--

INSERT INTO "Book_Store"."Invoice" ("Invoice_ID", "Price", "Description", "Customer_ID", "Timestamp", "ISBN", "Copy_ID", "Package_ID") VALUES (1, 69.95, '', 1, '2017-07-23 13:10:11', '0130895725', 1, 1);
INSERT INTO "Book_Store"."Invoice" ("Invoice_ID", "Price", "Description", "Customer_ID", "Timestamp", "ISBN", "Copy_ID", "Package_ID") VALUES (2, 69.95, '', 2, '2017-08-20 12:08:11', '0139163050', 2, 2);


--
-- Data for Name: Message; Type: TABLE DATA; Schema: Book_Store; Owner: postgres
--

INSERT INTO "Book_Store"."Message" ("Message_ID", "Text", "Admin_ID", "Customer_ID", "timestamp") VALUES (3, 'Please upload new books', 1, 1, '13:10:11');
INSERT INTO "Book_Store"."Message" ("Message_ID", "Text", "Admin_ID", "Customer_ID", "timestamp") VALUES (4, 'I want to buy a book but I have a big problem', 1, 2, '13:10:11');


--
-- Data for Name: Publisher; Type: TABLE DATA; Schema: Book_Store; Owner: postgres
--

INSERT INTO "Book_Store"."Publisher" ("Publisher_ID", "Name", "URL", "Email", "Phone") VALUES (1, 'Prentice Hall', '', '', '');
INSERT INTO "Book_Store"."Publisher" ("Publisher_ID", "Name", "URL", "Email", "Phone") VALUES (2, 'Prentice Hall  PTG', '', '', '');


--
-- Data for Name: Published_by; Type: TABLE DATA; Schema: Book_Store; Owner: postgres
--

INSERT INTO "Book_Store"."Published_by" ("Publisher_ID", "Date", "ISBN") VALUES (1, '2018-11-03', '0130895725');
INSERT INTO "Book_Store"."Published_by" ("Publisher_ID", "Date", "ISBN") VALUES (1, '2017-10-13', '0139163050');
INSERT INTO "Book_Store"."Published_by" ("Publisher_ID", "Date", "ISBN") VALUES (1, '2007-03-28', '0130125075');
INSERT INTO "Book_Store"."Published_by" ("Publisher_ID", "Date", "ISBN") VALUES (2, '2019-02-11', '0130161438');
INSERT INTO "Book_Store"."Published_by" ("Publisher_ID", "Date", "ISBN") VALUES (2, '2017-07-25', '0132261197');


--
-- Data for Name: Written_by; Type: TABLE DATA; Schema: Book_Store; Owner: postgres
--

INSERT INTO "Book_Store"."Written_by" ("Author_ID", "Date", "ISBN") VALUES (14, '2018-11-03', '0130895725');
INSERT INTO "Book_Store"."Written_by" ("Author_ID", "Date", "ISBN") VALUES (15, '2017-10-13', '0139163050');
INSERT INTO "Book_Store"."Written_by" ("Author_ID", "Date", "ISBN") VALUES (16, '2007-03-28', '0130125075');
INSERT INTO "Book_Store"."Written_by" ("Author_ID", "Date", "ISBN") VALUES (17, '2019-02-11', '0130161438');
INSERT INTO "Book_Store"."Written_by" ("Author_ID", "Date", "ISBN") VALUES (15, '2017-07-25', '0132261197');


--
-- PostgreSQL database dump complete
--

