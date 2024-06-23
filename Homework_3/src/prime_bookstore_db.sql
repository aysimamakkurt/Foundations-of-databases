--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

-- Started on 2022-12-16 19:43:54

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
-- TOC entry 6 (class 2615 OID 25467)
-- Name: Book_Store; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "Book_Store";


ALTER SCHEMA "Book_Store" OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 215 (class 1259 OID 25468)
-- Name: Admin; Type: TABLE; Schema: Book_Store; Owner: postgres
--

CREATE TABLE "Book_Store"."Admin" (
    "Admin_ID" integer NOT NULL,
    "Role" text NOT NULL,
    "Username" text NOT NULL,
    "Password" text NOT NULL
);


ALTER TABLE "Book_Store"."Admin" OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 25473)
-- Name: Admin_Admin ID _seq; Type: SEQUENCE; Schema: Book_Store; Owner: postgres
--

CREATE SEQUENCE "Book_Store"."Admin_Admin ID _seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Book_Store"."Admin_Admin ID _seq" OWNER TO postgres;

--
-- TOC entry 3455 (class 0 OID 0)
-- Dependencies: 216
-- Name: Admin_Admin ID _seq; Type: SEQUENCE OWNED BY; Schema: Book_Store; Owner: postgres
--

ALTER SEQUENCE "Book_Store"."Admin_Admin ID _seq" OWNED BY "Book_Store"."Admin"."Admin_ID";


--
-- TOC entry 217 (class 1259 OID 25474)
-- Name: Author; Type: TABLE; Schema: Book_Store; Owner: postgres
--

CREATE TABLE "Book_Store"."Author" (
    "Author_ID" integer NOT NULL,
    "Name" text NOT NULL,
    "Surname" text,
    "URL" text,
    "Email" text
);


ALTER TABLE "Book_Store"."Author" OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 25479)
-- Name: Author_Author ID_seq; Type: SEQUENCE; Schema: Book_Store; Owner: postgres
--

CREATE SEQUENCE "Book_Store"."Author_Author ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Book_Store"."Author_Author ID_seq" OWNER TO postgres;

--
-- TOC entry 3456 (class 0 OID 0)
-- Dependencies: 218
-- Name: Author_Author ID_seq; Type: SEQUENCE OWNED BY; Schema: Book_Store; Owner: postgres
--

ALTER SEQUENCE "Book_Store"."Author_Author ID_seq" OWNED BY "Book_Store"."Author"."Author_ID";


--
-- TOC entry 219 (class 1259 OID 25480)
-- Name: Book; Type: TABLE; Schema: Book_Store; Owner: postgres
--

CREATE TABLE "Book_Store"."Book" (
    "Title" text NOT NULL,
    "Price" numeric NOT NULL,
    "Pages" integer NOT NULL,
    "Language" text NOT NULL,
    "Description" text,
    "ISBN" text NOT NULL
);


ALTER TABLE "Book_Store"."Book" OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 25485)
-- Name: Category; Type: TABLE; Schema: Book_Store; Owner: postgres
--

CREATE TABLE "Book_Store"."Category" (
    "Category_ID" integer NOT NULL,
    "Name" text NOT NULL
);


ALTER TABLE "Book_Store"."Category" OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 25490)
-- Name: Category_Category_ID_seq; Type: SEQUENCE; Schema: Book_Store; Owner: postgres
--

CREATE SEQUENCE "Book_Store"."Category_Category_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Book_Store"."Category_Category_ID_seq" OWNER TO postgres;

--
-- TOC entry 3457 (class 0 OID 0)
-- Dependencies: 221
-- Name: Category_Category_ID_seq; Type: SEQUENCE OWNED BY; Schema: Book_Store; Owner: postgres
--

ALTER SEQUENCE "Book_Store"."Category_Category_ID_seq" OWNED BY "Book_Store"."Category"."Category_ID";


--
-- TOC entry 222 (class 1259 OID 25491)
-- Name: Copy; Type: TABLE; Schema: Book_Store; Owner: postgres
--

CREATE TABLE "Book_Store"."Copy" (
    "Copy_ID" integer NOT NULL,
    "ISBN" text NOT NULL,
    "Warehouse_ID" integer NOT NULL,
    "Availibility" boolean NOT NULL
);


ALTER TABLE "Book_Store"."Copy" OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 25496)
-- Name: Copy_Book_ID_seq; Type: SEQUENCE; Schema: Book_Store; Owner: postgres
--

CREATE SEQUENCE "Book_Store"."Copy_Book_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Book_Store"."Copy_Book_ID_seq" OWNER TO postgres;

--
-- TOC entry 3458 (class 0 OID 0)
-- Dependencies: 223
-- Name: Copy_Book_ID_seq; Type: SEQUENCE OWNED BY; Schema: Book_Store; Owner: postgres
--

ALTER SEQUENCE "Book_Store"."Copy_Book_ID_seq" OWNED BY "Book_Store"."Copy"."Copy_ID";


--
-- TOC entry 224 (class 1259 OID 25497)
-- Name: Customer; Type: TABLE; Schema: Book_Store; Owner: postgres
--

CREATE TABLE "Book_Store"."Customer" (
    "Customer_ID" integer NOT NULL,
    "Name" text NOT NULL,
    "Address" text NOT NULL,
    "Email" text NOT NULL,
    "Surname" text NOT NULL,
    "Password" text NOT NULL,
    "Phone" text
);


ALTER TABLE "Book_Store"."Customer" OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 25502)
-- Name: Customer_Customer ID_seq; Type: SEQUENCE; Schema: Book_Store; Owner: postgres
--

CREATE SEQUENCE "Book_Store"."Customer_Customer ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Book_Store"."Customer_Customer ID_seq" OWNER TO postgres;

--
-- TOC entry 3459 (class 0 OID 0)
-- Dependencies: 225
-- Name: Customer_Customer ID_seq; Type: SEQUENCE OWNED BY; Schema: Book_Store; Owner: postgres
--

ALTER SEQUENCE "Book_Store"."Customer_Customer ID_seq" OWNED BY "Book_Store"."Customer"."Customer_ID";


--
-- TOC entry 226 (class 1259 OID 25503)
-- Name: Has; Type: TABLE; Schema: Book_Store; Owner: postgres
--

CREATE TABLE "Book_Store"."Has" (
    "Category_ID" integer NOT NULL,
    "ISBN" text NOT NULL
);


ALTER TABLE "Book_Store"."Has" OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 25508)
-- Name: Has_Category ID_seq; Type: SEQUENCE; Schema: Book_Store; Owner: postgres
--

CREATE SEQUENCE "Book_Store"."Has_Category ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Book_Store"."Has_Category ID_seq" OWNER TO postgres;

--
-- TOC entry 3460 (class 0 OID 0)
-- Dependencies: 227
-- Name: Has_Category ID_seq; Type: SEQUENCE OWNED BY; Schema: Book_Store; Owner: postgres
--

ALTER SEQUENCE "Book_Store"."Has_Category ID_seq" OWNED BY "Book_Store"."Has"."Category_ID";


--
-- TOC entry 228 (class 1259 OID 25509)
-- Name: Invoice; Type: TABLE; Schema: Book_Store; Owner: postgres
--

CREATE TABLE "Book_Store"."Invoice" (
    "Invoice_ID" integer NOT NULL,
    "Price" numeric NOT NULL,
    "Description" text,
    "Customer_ID" integer NOT NULL,
    "Timestamp" timestamp without time zone NOT NULL,
    "ISBN" text NOT NULL,
    "Copy_ID" integer NOT NULL,
    "Package_ID" integer NOT NULL
);


ALTER TABLE "Book_Store"."Invoice" OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 25514)
-- Name: Invoice_Customer ID _seq; Type: SEQUENCE; Schema: Book_Store; Owner: postgres
--

CREATE SEQUENCE "Book_Store"."Invoice_Customer ID _seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Book_Store"."Invoice_Customer ID _seq" OWNER TO postgres;

--
-- TOC entry 3461 (class 0 OID 0)
-- Dependencies: 229
-- Name: Invoice_Customer ID _seq; Type: SEQUENCE OWNED BY; Schema: Book_Store; Owner: postgres
--

ALTER SEQUENCE "Book_Store"."Invoice_Customer ID _seq" OWNED BY "Book_Store"."Invoice"."Customer_ID";


--
-- TOC entry 230 (class 1259 OID 25515)
-- Name: Invoice_Invoice ID_seq; Type: SEQUENCE; Schema: Book_Store; Owner: postgres
--

CREATE SEQUENCE "Book_Store"."Invoice_Invoice ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Book_Store"."Invoice_Invoice ID_seq" OWNER TO postgres;

--
-- TOC entry 3462 (class 0 OID 0)
-- Dependencies: 230
-- Name: Invoice_Invoice ID_seq; Type: SEQUENCE OWNED BY; Schema: Book_Store; Owner: postgres
--

ALTER SEQUENCE "Book_Store"."Invoice_Invoice ID_seq" OWNED BY "Book_Store"."Invoice"."Invoice_ID";


--
-- TOC entry 231 (class 1259 OID 25516)
-- Name: Message; Type: TABLE; Schema: Book_Store; Owner: postgres
--

CREATE TABLE "Book_Store"."Message" (
    "Message_ID" integer NOT NULL,
    "Text" text NOT NULL,
    "Admin_ID" integer NOT NULL,
    "Customer_ID" integer NOT NULL,
    "timestamp" time without time zone NOT NULL
);


ALTER TABLE "Book_Store"."Message" OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 25521)
-- Name: Message_Admin ID_seq; Type: SEQUENCE; Schema: Book_Store; Owner: postgres
--

CREATE SEQUENCE "Book_Store"."Message_Admin ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Book_Store"."Message_Admin ID_seq" OWNER TO postgres;

--
-- TOC entry 3463 (class 0 OID 0)
-- Dependencies: 232
-- Name: Message_Admin ID_seq; Type: SEQUENCE OWNED BY; Schema: Book_Store; Owner: postgres
--

ALTER SEQUENCE "Book_Store"."Message_Admin ID_seq" OWNED BY "Book_Store"."Message"."Admin_ID";


--
-- TOC entry 233 (class 1259 OID 25522)
-- Name: Message_Customer ID_seq; Type: SEQUENCE; Schema: Book_Store; Owner: postgres
--

CREATE SEQUENCE "Book_Store"."Message_Customer ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Book_Store"."Message_Customer ID_seq" OWNER TO postgres;

--
-- TOC entry 3464 (class 0 OID 0)
-- Dependencies: 233
-- Name: Message_Customer ID_seq; Type: SEQUENCE OWNED BY; Schema: Book_Store; Owner: postgres
--

ALTER SEQUENCE "Book_Store"."Message_Customer ID_seq" OWNED BY "Book_Store"."Message"."Customer_ID";


--
-- TOC entry 234 (class 1259 OID 25523)
-- Name: Message_ID_seq; Type: SEQUENCE; Schema: Book_Store; Owner: postgres
--

CREATE SEQUENCE "Book_Store"."Message_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Book_Store"."Message_ID_seq" OWNER TO postgres;

--
-- TOC entry 3465 (class 0 OID 0)
-- Dependencies: 234
-- Name: Message_ID_seq; Type: SEQUENCE OWNED BY; Schema: Book_Store; Owner: postgres
--

ALTER SEQUENCE "Book_Store"."Message_ID_seq" OWNED BY "Book_Store"."Message"."Message_ID";


--
-- TOC entry 235 (class 1259 OID 25524)
-- Name: Package; Type: TABLE; Schema: Book_Store; Owner: postgres
--

CREATE TABLE "Book_Store"."Package" (
    "Package_ID" integer NOT NULL,
    weight numeric NOT NULL,
    "Shipping_Company_ID" integer NOT NULL,
    "Date" date NOT NULL
);


ALTER TABLE "Book_Store"."Package" OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 25529)
-- Name: Package_Package ID_seq; Type: SEQUENCE; Schema: Book_Store; Owner: postgres
--

CREATE SEQUENCE "Book_Store"."Package_Package ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Book_Store"."Package_Package ID_seq" OWNER TO postgres;

--
-- TOC entry 3466 (class 0 OID 0)
-- Dependencies: 236
-- Name: Package_Package ID_seq; Type: SEQUENCE OWNED BY; Schema: Book_Store; Owner: postgres
--

ALTER SEQUENCE "Book_Store"."Package_Package ID_seq" OWNED BY "Book_Store"."Package"."Package_ID";


--
-- TOC entry 237 (class 1259 OID 25530)
-- Name: Package_Shipping Company ID_seq; Type: SEQUENCE; Schema: Book_Store; Owner: postgres
--

CREATE SEQUENCE "Book_Store"."Package_Shipping Company ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Book_Store"."Package_Shipping Company ID_seq" OWNER TO postgres;

--
-- TOC entry 3467 (class 0 OID 0)
-- Dependencies: 237
-- Name: Package_Shipping Company ID_seq; Type: SEQUENCE OWNED BY; Schema: Book_Store; Owner: postgres
--

ALTER SEQUENCE "Book_Store"."Package_Shipping Company ID_seq" OWNED BY "Book_Store"."Package"."Shipping_Company_ID";


--
-- TOC entry 238 (class 1259 OID 25531)
-- Name: Published_by; Type: TABLE; Schema: Book_Store; Owner: postgres
--

CREATE TABLE "Book_Store"."Published_by" (
    "Publisher_ID" integer NOT NULL,
    "Date" date NOT NULL,
    "ISBN" text NOT NULL
);


ALTER TABLE "Book_Store"."Published_by" OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 25536)
-- Name: Published by_Publisher ID _seq; Type: SEQUENCE; Schema: Book_Store; Owner: postgres
--

CREATE SEQUENCE "Book_Store"."Published by_Publisher ID _seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Book_Store"."Published by_Publisher ID _seq" OWNER TO postgres;

--
-- TOC entry 3468 (class 0 OID 0)
-- Dependencies: 239
-- Name: Published by_Publisher ID _seq; Type: SEQUENCE OWNED BY; Schema: Book_Store; Owner: postgres
--

ALTER SEQUENCE "Book_Store"."Published by_Publisher ID _seq" OWNED BY "Book_Store"."Published_by"."Publisher_ID";


--
-- TOC entry 240 (class 1259 OID 25537)
-- Name: Publisher; Type: TABLE; Schema: Book_Store; Owner: postgres
--

CREATE TABLE "Book_Store"."Publisher" (
    "Publisher_ID" integer NOT NULL,
    "Name" text NOT NULL,
    "URL" text,
    "Email" text,
    "Phone" text
);


ALTER TABLE "Book_Store"."Publisher" OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 25542)
-- Name: Publisher_Publisher ID_seq; Type: SEQUENCE; Schema: Book_Store; Owner: postgres
--

CREATE SEQUENCE "Book_Store"."Publisher_Publisher ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Book_Store"."Publisher_Publisher ID_seq" OWNER TO postgres;

--
-- TOC entry 3469 (class 0 OID 0)
-- Dependencies: 241
-- Name: Publisher_Publisher ID_seq; Type: SEQUENCE OWNED BY; Schema: Book_Store; Owner: postgres
--

ALTER SEQUENCE "Book_Store"."Publisher_Publisher ID_seq" OWNED BY "Book_Store"."Publisher"."Publisher_ID";


--
-- TOC entry 242 (class 1259 OID 25543)
-- Name: ShippingCompany; Type: TABLE; Schema: Book_Store; Owner: postgres
--

CREATE TABLE "Book_Store"."ShippingCompany" (
    "Shipping_Company_ID" integer NOT NULL,
    "Name" text NOT NULL,
    "Phone" text
);


ALTER TABLE "Book_Store"."ShippingCompany" OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 25548)
-- Name: ShippingCompany_ShippingCompany_seq; Type: SEQUENCE; Schema: Book_Store; Owner: postgres
--

CREATE SEQUENCE "Book_Store"."ShippingCompany_ShippingCompany_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Book_Store"."ShippingCompany_ShippingCompany_seq" OWNER TO postgres;

--
-- TOC entry 3470 (class 0 OID 0)
-- Dependencies: 243
-- Name: ShippingCompany_ShippingCompany_seq; Type: SEQUENCE OWNED BY; Schema: Book_Store; Owner: postgres
--

ALTER SEQUENCE "Book_Store"."ShippingCompany_ShippingCompany_seq" OWNED BY "Book_Store"."ShippingCompany"."Shipping_Company_ID";


--
-- TOC entry 244 (class 1259 OID 25549)
-- Name: Warehouse; Type: TABLE; Schema: Book_Store; Owner: postgres
--

CREATE TABLE "Book_Store"."Warehouse" (
    "Warehouse_ID" integer NOT NULL,
    "Address" text NOT NULL
);


ALTER TABLE "Book_Store"."Warehouse" OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 25554)
-- Name: Warehouse_Warehouse ID _seq; Type: SEQUENCE; Schema: Book_Store; Owner: postgres
--

CREATE SEQUENCE "Book_Store"."Warehouse_Warehouse ID _seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Book_Store"."Warehouse_Warehouse ID _seq" OWNER TO postgres;

--
-- TOC entry 3471 (class 0 OID 0)
-- Dependencies: 245
-- Name: Warehouse_Warehouse ID _seq; Type: SEQUENCE OWNED BY; Schema: Book_Store; Owner: postgres
--

ALTER SEQUENCE "Book_Store"."Warehouse_Warehouse ID _seq" OWNED BY "Book_Store"."Warehouse"."Warehouse_ID";


--
-- TOC entry 246 (class 1259 OID 25555)
-- Name: Written_by; Type: TABLE; Schema: Book_Store; Owner: postgres
--

CREATE TABLE "Book_Store"."Written_by" (
    "Author_ID" integer NOT NULL,
    "Date" date,
    "ISBN" text NOT NULL
);


ALTER TABLE "Book_Store"."Written_by" OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 25560)
-- Name: Written by_Author ID _seq; Type: SEQUENCE; Schema: Book_Store; Owner: postgres
--

CREATE SEQUENCE "Book_Store"."Written by_Author ID _seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Book_Store"."Written by_Author ID _seq" OWNER TO postgres;

--
-- TOC entry 3472 (class 0 OID 0)
-- Dependencies: 247
-- Name: Written by_Author ID _seq; Type: SEQUENCE OWNED BY; Schema: Book_Store; Owner: postgres
--

ALTER SEQUENCE "Book_Store"."Written by_Author ID _seq" OWNED BY "Book_Store"."Written_by"."Author_ID";


--
-- TOC entry 3247 (class 2604 OID 25561)
-- Name: Admin Admin_ID; Type: DEFAULT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Admin" ALTER COLUMN "Admin_ID" SET DEFAULT nextval('"Book_Store"."Admin_Admin ID _seq"'::regclass);


--
-- TOC entry 3248 (class 2604 OID 25562)
-- Name: Author Author_ID; Type: DEFAULT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Author" ALTER COLUMN "Author_ID" SET DEFAULT nextval('"Book_Store"."Author_Author ID_seq"'::regclass);


--
-- TOC entry 3249 (class 2604 OID 25563)
-- Name: Category Category_ID; Type: DEFAULT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Category" ALTER COLUMN "Category_ID" SET DEFAULT nextval('"Book_Store"."Category_Category_ID_seq"'::regclass);


--
-- TOC entry 3250 (class 2604 OID 25564)
-- Name: Copy Copy_ID; Type: DEFAULT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Copy" ALTER COLUMN "Copy_ID" SET DEFAULT nextval('"Book_Store"."Copy_Book_ID_seq"'::regclass);


--
-- TOC entry 3251 (class 2604 OID 25565)
-- Name: Customer Customer_ID; Type: DEFAULT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Customer" ALTER COLUMN "Customer_ID" SET DEFAULT nextval('"Book_Store"."Customer_Customer ID_seq"'::regclass);


--
-- TOC entry 3252 (class 2604 OID 25566)
-- Name: Invoice Invoice_ID; Type: DEFAULT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Invoice" ALTER COLUMN "Invoice_ID" SET DEFAULT nextval('"Book_Store"."Invoice_Invoice ID_seq"'::regclass);


--
-- TOC entry 3253 (class 2604 OID 25567)
-- Name: Message Message_ID; Type: DEFAULT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Message" ALTER COLUMN "Message_ID" SET DEFAULT nextval('"Book_Store"."Message_ID_seq"'::regclass);


--
-- TOC entry 3254 (class 2604 OID 25568)
-- Name: Message Admin_ID; Type: DEFAULT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Message" ALTER COLUMN "Admin_ID" SET DEFAULT nextval('"Book_Store"."Message_Admin ID_seq"'::regclass);


--
-- TOC entry 3255 (class 2604 OID 25569)
-- Name: Message Customer_ID; Type: DEFAULT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Message" ALTER COLUMN "Customer_ID" SET DEFAULT nextval('"Book_Store"."Message_Customer ID_seq"'::regclass);


--
-- TOC entry 3256 (class 2604 OID 25570)
-- Name: Package Package_ID; Type: DEFAULT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Package" ALTER COLUMN "Package_ID" SET DEFAULT nextval('"Book_Store"."Package_Package ID_seq"'::regclass);


--
-- TOC entry 3257 (class 2604 OID 25571)
-- Name: Package Shipping_Company_ID; Type: DEFAULT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Package" ALTER COLUMN "Shipping_Company_ID" SET DEFAULT nextval('"Book_Store"."Package_Shipping Company ID_seq"'::regclass);


--
-- TOC entry 3258 (class 2604 OID 25572)
-- Name: Published_by Publisher_ID; Type: DEFAULT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Published_by" ALTER COLUMN "Publisher_ID" SET DEFAULT nextval('"Book_Store"."Published by_Publisher ID _seq"'::regclass);


--
-- TOC entry 3259 (class 2604 OID 25573)
-- Name: Publisher Publisher_ID; Type: DEFAULT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Publisher" ALTER COLUMN "Publisher_ID" SET DEFAULT nextval('"Book_Store"."Publisher_Publisher ID_seq"'::regclass);


--
-- TOC entry 3260 (class 2604 OID 25574)
-- Name: ShippingCompany Shipping_Company_ID; Type: DEFAULT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."ShippingCompany" ALTER COLUMN "Shipping_Company_ID" SET DEFAULT nextval('"Book_Store"."ShippingCompany_ShippingCompany_seq"'::regclass);


--
-- TOC entry 3261 (class 2604 OID 25575)
-- Name: Warehouse Warehouse_ID; Type: DEFAULT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Warehouse" ALTER COLUMN "Warehouse_ID" SET DEFAULT nextval('"Book_Store"."Warehouse_Warehouse ID _seq"'::regclass);


--
-- TOC entry 3262 (class 2604 OID 25576)
-- Name: Written_by Author_ID; Type: DEFAULT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Written_by" ALTER COLUMN "Author_ID" SET DEFAULT nextval('"Book_Store"."Written by_Author ID _seq"'::regclass);


--
-- TOC entry 3264 (class 2606 OID 25578)
-- Name: Admin Admin_pkey; Type: CONSTRAINT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Admin"
    ADD CONSTRAINT "Admin_pkey" PRIMARY KEY ("Admin_ID");


--
-- TOC entry 3266 (class 2606 OID 25580)
-- Name: Author Author_pkey; Type: CONSTRAINT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Author"
    ADD CONSTRAINT "Author_pkey" PRIMARY KEY ("Author_ID");


--
-- TOC entry 3268 (class 2606 OID 25582)
-- Name: Book Book_pkey; Type: CONSTRAINT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Book"
    ADD CONSTRAINT "Book_pkey" PRIMARY KEY ("ISBN");


--
-- TOC entry 3270 (class 2606 OID 25584)
-- Name: Category Category_pkey; Type: CONSTRAINT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Category"
    ADD CONSTRAINT "Category_pkey" PRIMARY KEY ("Category_ID");


--
-- TOC entry 3272 (class 2606 OID 25586)
-- Name: Copy Copy_pkey; Type: CONSTRAINT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Copy"
    ADD CONSTRAINT "Copy_pkey" PRIMARY KEY ("Copy_ID");


--
-- TOC entry 3274 (class 2606 OID 25588)
-- Name: Customer Customer_pkey; Type: CONSTRAINT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Customer"
    ADD CONSTRAINT "Customer_pkey" PRIMARY KEY ("Customer_ID");


--
-- TOC entry 3276 (class 2606 OID 25590)
-- Name: Has Has_Pkey; Type: CONSTRAINT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Has"
    ADD CONSTRAINT "Has_Pkey" PRIMARY KEY ("Category_ID", "ISBN");


--
-- TOC entry 3278 (class 2606 OID 25592)
-- Name: Invoice Invoice_pkey; Type: CONSTRAINT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Invoice"
    ADD CONSTRAINT "Invoice_pkey" PRIMARY KEY ("Invoice_ID");


--
-- TOC entry 3280 (class 2606 OID 25594)
-- Name: Message Message_pkey; Type: CONSTRAINT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Message"
    ADD CONSTRAINT "Message_pkey" PRIMARY KEY ("Message_ID");


--
-- TOC entry 3282 (class 2606 OID 25596)
-- Name: Package Package_pkey; Type: CONSTRAINT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Package"
    ADD CONSTRAINT "Package_pkey" PRIMARY KEY ("Package_ID");


--
-- TOC entry 3284 (class 2606 OID 25598)
-- Name: Published_by Publishby_Pkey; Type: CONSTRAINT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Published_by"
    ADD CONSTRAINT "Publishby_Pkey" PRIMARY KEY ("ISBN", "Publisher_ID");


--
-- TOC entry 3286 (class 2606 OID 25600)
-- Name: Publisher Publisher_pkey; Type: CONSTRAINT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Publisher"
    ADD CONSTRAINT "Publisher_pkey" PRIMARY KEY ("Publisher_ID");


--
-- TOC entry 3288 (class 2606 OID 25602)
-- Name: ShippingCompany ShippingCompany_pkey; Type: CONSTRAINT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."ShippingCompany"
    ADD CONSTRAINT "ShippingCompany_pkey" PRIMARY KEY ("Shipping_Company_ID");


--
-- TOC entry 3290 (class 2606 OID 25604)
-- Name: Warehouse Warehouse_pkey; Type: CONSTRAINT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Warehouse"
    ADD CONSTRAINT "Warehouse_pkey" PRIMARY KEY ("Warehouse_ID");


--
-- TOC entry 3292 (class 2606 OID 25606)
-- Name: Written_by Written_by_Pkey; Type: CONSTRAINT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Written_by"
    ADD CONSTRAINT "Written_by_Pkey" PRIMARY KEY ("ISBN", "Author_ID");


--
-- TOC entry 3293 (class 2606 OID 25607)
-- Name: Copy Copy_Fkey1; Type: FK CONSTRAINT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Copy"
    ADD CONSTRAINT "Copy_Fkey1" FOREIGN KEY ("ISBN") REFERENCES "Book_Store"."Book"("ISBN") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3294 (class 2606 OID 25612)
-- Name: Copy Copy_Fkey2; Type: FK CONSTRAINT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Copy"
    ADD CONSTRAINT "Copy_Fkey2" FOREIGN KEY ("Warehouse_ID") REFERENCES "Book_Store"."Warehouse"("Warehouse_ID");


--
-- TOC entry 3295 (class 2606 OID 25617)
-- Name: Has Has_Fkey1; Type: FK CONSTRAINT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Has"
    ADD CONSTRAINT "Has_Fkey1" FOREIGN KEY ("Category_ID") REFERENCES "Book_Store"."Category"("Category_ID") NOT VALID;


--
-- TOC entry 3296 (class 2606 OID 25622)
-- Name: Has Has_Fkey2; Type: FK CONSTRAINT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Has"
    ADD CONSTRAINT "Has_Fkey2" FOREIGN KEY ("ISBN") REFERENCES "Book_Store"."Book"("ISBN") NOT VALID;


--
-- TOC entry 3297 (class 2606 OID 25627)
-- Name: Invoice Invoice_Fkey1; Type: FK CONSTRAINT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Invoice"
    ADD CONSTRAINT "Invoice_Fkey1" FOREIGN KEY ("ISBN") REFERENCES "Book_Store"."Book"("ISBN") NOT VALID;


--
-- TOC entry 3298 (class 2606 OID 25632)
-- Name: Invoice Invoice_Fkey2; Type: FK CONSTRAINT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Invoice"
    ADD CONSTRAINT "Invoice_Fkey2" FOREIGN KEY ("Copy_ID") REFERENCES "Book_Store"."Copy"("Copy_ID") NOT VALID;


--
-- TOC entry 3299 (class 2606 OID 25637)
-- Name: Invoice Invoice_Fkey3; Type: FK CONSTRAINT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Invoice"
    ADD CONSTRAINT "Invoice_Fkey3" FOREIGN KEY ("Customer_ID") REFERENCES "Book_Store"."Customer"("Customer_ID") NOT VALID;


--
-- TOC entry 3300 (class 2606 OID 25642)
-- Name: Invoice Invoice_Fkey4; Type: FK CONSTRAINT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Invoice"
    ADD CONSTRAINT "Invoice_Fkey4" FOREIGN KEY ("Package_ID") REFERENCES "Book_Store"."Package"("Package_ID") NOT VALID;


--
-- TOC entry 3301 (class 2606 OID 25647)
-- Name: Message Message_Fkey; Type: FK CONSTRAINT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Message"
    ADD CONSTRAINT "Message_Fkey" FOREIGN KEY ("Admin_ID") REFERENCES "Book_Store"."Admin"("Admin_ID");


--
-- TOC entry 3302 (class 2606 OID 25652)
-- Name: Message Message_Fkey2; Type: FK CONSTRAINT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Message"
    ADD CONSTRAINT "Message_Fkey2" FOREIGN KEY ("Customer_ID") REFERENCES "Book_Store"."Customer"("Customer_ID");


--
-- TOC entry 3303 (class 2606 OID 25657)
-- Name: Package Package_Fkey; Type: FK CONSTRAINT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Package"
    ADD CONSTRAINT "Package_Fkey" FOREIGN KEY ("Shipping_Company_ID") REFERENCES "Book_Store"."ShippingCompany"("Shipping_Company_ID") NOT VALID;


--
-- TOC entry 3304 (class 2606 OID 25662)
-- Name: Published_by Publisheby_Fkey2; Type: FK CONSTRAINT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Published_by"
    ADD CONSTRAINT "Publisheby_Fkey2" FOREIGN KEY ("ISBN") REFERENCES "Book_Store"."Book"("ISBN") NOT VALID;


--
-- TOC entry 3305 (class 2606 OID 25667)
-- Name: Published_by Publishedby_Fkey1; Type: FK CONSTRAINT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Published_by"
    ADD CONSTRAINT "Publishedby_Fkey1" FOREIGN KEY ("Publisher_ID") REFERENCES "Book_Store"."Publisher"("Publisher_ID") NOT VALID;


--
-- TOC entry 3306 (class 2606 OID 25672)
-- Name: Written_by Writtenby_Fkey1; Type: FK CONSTRAINT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Written_by"
    ADD CONSTRAINT "Writtenby_Fkey1" FOREIGN KEY ("Author_ID") REFERENCES "Book_Store"."Author"("Author_ID") NOT VALID;


--
-- TOC entry 3307 (class 2606 OID 25677)
-- Name: Written_by Writtenby_Fkey2; Type: FK CONSTRAINT; Schema: Book_Store; Owner: postgres
--

ALTER TABLE ONLY "Book_Store"."Written_by"
    ADD CONSTRAINT "Writtenby_Fkey2" FOREIGN KEY ("ISBN") REFERENCES "Book_Store"."Book"("ISBN") NOT VALID;


-- Completed on 2022-12-16 19:43:54

--
-- PostgreSQL database dump complete
--

