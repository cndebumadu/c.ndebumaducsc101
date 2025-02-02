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
-- Name: dataplan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dataplan (
    data_id integer NOT NULL,
    data_size text NOT NULL,
    data_duration integer NOT NULL,
    data_price character varying(50)
);


ALTER TABLE public.dataplan OWNER TO postgres;

--
-- Name: department; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.department (
    dept_managerid integer NOT NULL,
    dno integer NOT NULL,
    dname text NOT NULL,
    dlocation text NOT NULL,
    pno integer
);


ALTER TABLE public.department OWNER TO postgres;

--
-- Name: project; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.project (
    pno integer NOT NULL,
    pname text NOT NULL,
    pduration text NOT NULL,
    project_managerid integer
);


ALTER TABLE public.project OWNER TO postgres;

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
-- Data for Name: dataplan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dataplan (data_id, data_size, data_duration, data_price) FROM stdin;
1	350MB	2	200
2	1.8GB	14	500
3	3.9GB	30	1000
4	7.5GB	30	1500
5	9.2GB	30	1500
6	10.8GB	30	2500
7	14GB	30	3000
8	18GB	30	4000
9	24GB	30	5000
10	29.9GB	30	8000
11	50GB	30	10000
\.


--
-- Data for Name: department; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.department (dept_managerid, dno, dname, dlocation, pno) FROM stdin;
108	1	Administration	Ikeja	44
101	2	Account	Egbeda	11
100	3	packaging	Ajah	44
120	4	Research	V.I	33
97	5	Account	Magodo	22
122	6	Operation	Mile 2	44
107	7	packaging	Ketu	55
\.


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.project (pno, pname, pduration, project_managerid) FROM stdin;
11	A	9 Months	102
22	B	14 months	97
33	D	16 Month	120
44	D	25 Month	108
55	E	9 month	107
\.


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
-- Name: customers company_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT company_pkey PRIMARY KEY (c_id);


--
-- Name: dataplan dataplan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dataplan
    ADD CONSTRAINT dataplan_pkey PRIMARY KEY (data_id);


--
-- Name: department department_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.department
    ADD CONSTRAINT department_pkey PRIMARY KEY (dept_managerid);


--
-- Name: staff employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staff
    ADD CONSTRAINT employees_pkey PRIMARY KEY (staff_id);


--
-- Name: project project_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_pkey PRIMARY KEY (pno);


--
-- PostgreSQL database dump complete
--

