--
-- PostgreSQL database dump
--

-- Dumped from database version 15.10 (Debian 15.10-1.pgdg120+1)
-- Dumped by pg_dump version 15.10 (Debian 15.10-1.pgdg120+1)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: all_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.all_categories (
    category_id character varying(255) DEFAULT gen_random_uuid() NOT NULL,
    category_name character varying(255) NOT NULL
);


ALTER TABLE public.all_categories OWNER TO postgres;

--
-- Name: all_products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.all_products (
    product_id character varying(255) DEFAULT gen_random_uuid() NOT NULL,
    product_name character varying(255) NOT NULL,
    description character varying(255),
    quantity integer,
    price numeric(38,2),
    category_id character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.all_products OWNER TO postgres;

--
-- Data for Name: all_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.all_categories (category_id, category_name) FROM stdin;
1b012b57-dadd-4647-9e38-ebcbab03a916	Electronics
09130c98-33cb-4b02-ba37-dda81fc65362	Books
d7422409-381e-4a23-8bae-7c5799a80918	Clothing
0dba8d94-116a-4fe5-8111-695277400b8b	DenemeCategory
\.


--
-- Data for Name: all_products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.all_products (product_id, product_name, description, quantity, price, category_id, created_at, updated_at) FROM stdin;
04e5f8de-5106-46e8-938e-0de08cddd283	Smartphone	A modern smartphone	10	699.99	1b012b57-dadd-4647-9e38-ebcbab03a916	\N	\N
c703103e-7f1d-46bc-a1a2-92c97cc46459	Novel	A best-selling novel	50	19.99	09130c98-33cb-4b02-ba37-dda81fc65362	\N	\N
00987fd8-5236-4715-a1ff-c1ee6d2ebdf5	T-Shirt	A comfortable t-shirt	100	9.99	d7422409-381e-4a23-8bae-7c5799a80918	\N	\N
02ac3224-5b8a-4b40-81a0-bc96478dc464	Deneme Product 1	Deneme description'─▒	10	1599.99	0dba8d94-116a-4fe5-8111-695277400b8b	2025-01-04 14:36:37.551285	\N
7711fd41-89d1-4f85-bdda-3dc9426b3aca	Deneme Product 2	Deneme description'─▒ 2	20	5599.99	0dba8d94-116a-4fe5-8111-695277400b8b	2025-01-04 14:36:53.29068	\N
\.


--
-- Name: all_categories all_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.all_categories
    ADD CONSTRAINT all_categories_pkey PRIMARY KEY (category_id);


--
-- Name: all_products all_products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.all_products
    ADD CONSTRAINT all_products_pkey PRIMARY KEY (product_id);


--
-- Name: all_categories unique_category_name; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.all_categories
    ADD CONSTRAINT unique_category_name UNIQUE (category_name);


--
-- Name: all_products fk_category; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.all_products
    ADD CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES public.all_categories(category_id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

