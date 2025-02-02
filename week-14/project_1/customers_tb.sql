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
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    c_id integer NOT NULL,
    c_name text NOT NULL,
    c_email text NOT NULL,
    c_mobile character varying(12) NOT NULL,
    eid integer NOT NULL,
    data_id integer,
    c_age integer
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers (c_id, c_name, c_email, c_mobile, eid, data_id, c_age) FROM stdin;
110	Musta Karim	m_karim@gmail.com	8055089112	102	5	35
111	Lilian Jaiye	i_jaiye@gamil.com	8055185341	100	3	43
112	Arthur Musa	a_musa@gamil.com	7055282813	107	10	50
113	Philip Akonjo	p_akonjo@gamil.com	9052356772	100	2	41
114	Marylene Mapa	m_mapa@gamil.com	8053333551	120	5	33
115	Oghenero Agor	o_agor@gamil.com	7055566774	117	11	50
116	Adams Bree	a_bree@gamil.com	8056765424	102	10	33
117	Okafor Mathais	o_mathias@gamil.com	8056763367	120	10	45
118	Samson Adeleke	s_adeleke@gamil.com	7056774423	117	11	65
119	lawal tamire	l_tamire@gamil.com	9052111101	107	50	35
120	James Job	j_job@gamil.com	8059693919	100	8	44
121	mathew Jakande	m_jakande@gamil.com	7051232144	120	2	21
122	Jimila Adegboya	j_adegboye@gamil.com	8054921923	107	5	20
\.


--
-- Name: customers company_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT company_pkey PRIMARY KEY (c_id);


--
-- PostgreSQL database dump complete
--

