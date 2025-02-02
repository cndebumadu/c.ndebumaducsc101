--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: staff; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.staff (
    staff_id integer NOT NULL,
    staff_name text NOT NULL,
    dno integer NOT NULL,
    staff_sal real NOT NULL,
    age integer NOT NULL,
    phone character varying(15) NOT NULL,
    gender character varying(1)
);


ALTER TABLE public.staff OWNER TO postgres;

--
-- Data for Name: staff; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.staff (staff_id, staff_name, dno, staff_sal, age, phone, gender) FROM stdin;
101	Alade Joy	2	250000	33	8.0230897e+09	\N
100	Mustapha Ali	3	175000	32	8.063286e+09	\N
107	Alokwe Martin	7	380000	48	7.090083e+09	\N
97	Dankade Aminat	5	550000	40	9.023689e+09	\N
108	Josiah Joshua	1	120000	30	8.053189e+09	\N
102	 Mankinde Mary	2	450000	38	7.061046e+09	\N
120	Adeleke Jane	4	200000	38	7.061046e+09	\N
122	Osahon Mark	6	320000	44	8.02229e+09	\N
104	Kuti Lawal	1	750000	35	9.14569e+09	\N
117	Suleman Ajayi	3	800000	50	7030089981	\N
\.


--
-- Name: staff employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staff
    ADD CONSTRAINT employees_pkey PRIMARY KEY (staff_id);


--
-- PostgreSQL database dump complete
--

