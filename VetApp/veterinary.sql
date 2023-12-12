--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.0

-- Started on 2023-12-12 20:37:00 +03

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
-- TOC entry 216 (class 1259 OID 18327)
-- Name: animal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.animal (
    id bigint NOT NULL,
    breed character varying(255),
    colour character varying(255),
    date_of_birth date,
    gender character varying(255),
    name character varying(255),
    species character varying(255),
    customer_id bigint
);


ALTER TABLE public.animal OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 18326)
-- Name: animal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.animal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.animal_id_seq OWNER TO postgres;

--
-- TOC entry 3651 (class 0 OID 0)
-- Dependencies: 215
-- Name: animal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.animal_id_seq OWNED BY public.animal.id;


--
-- TOC entry 218 (class 1259 OID 18336)
-- Name: appointment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.appointment (
    id bigint NOT NULL,
    appointment_date timestamp(6) without time zone,
    doctor_id bigint,
    animal_id bigint
);


ALTER TABLE public.appointment OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 18335)
-- Name: appointment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.appointment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.appointment_id_seq OWNER TO postgres;

--
-- TOC entry 3652 (class 0 OID 0)
-- Dependencies: 217
-- Name: appointment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.appointment_id_seq OWNED BY public.appointment.id;


--
-- TOC entry 220 (class 1259 OID 18343)
-- Name: available_date; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.available_date (
    id bigint NOT NULL,
    doctor_id bigint,
    available_date date
);


ALTER TABLE public.available_date OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 18342)
-- Name: available_date_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.available_date_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.available_date_id_seq OWNER TO postgres;

--
-- TOC entry 3653 (class 0 OID 0)
-- Dependencies: 219
-- Name: available_date_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.available_date_id_seq OWNED BY public.available_date.id;


--
-- TOC entry 222 (class 1259 OID 18350)
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer (
    id bigint NOT NULL,
    address character varying(255),
    city character varying(255),
    mail character varying(255),
    name character varying(255),
    phone character varying(255)
);


ALTER TABLE public.customer OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 18349)
-- Name: customer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customer_id_seq OWNER TO postgres;

--
-- TOC entry 3654 (class 0 OID 0)
-- Dependencies: 221
-- Name: customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customer_id_seq OWNED BY public.customer.id;


--
-- TOC entry 224 (class 1259 OID 18359)
-- Name: doctor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.doctor (
    id bigint NOT NULL,
    address character varying(255),
    city character varying(255),
    mail character varying(255),
    name character varying(255),
    phone character varying(255)
);


ALTER TABLE public.doctor OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 18358)
-- Name: doctor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.doctor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.doctor_id_seq OWNER TO postgres;

--
-- TOC entry 3655 (class 0 OID 0)
-- Dependencies: 223
-- Name: doctor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.doctor_id_seq OWNED BY public.doctor.id;


--
-- TOC entry 226 (class 1259 OID 18368)
-- Name: vaccine; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vaccine (
    id bigint NOT NULL,
    code character varying(255),
    name character varying(255),
    protection_finish_date date,
    protection_start_date date,
    animal_id bigint
);


ALTER TABLE public.vaccine OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 18367)
-- Name: vaccine_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vaccine_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.vaccine_id_seq OWNER TO postgres;

--
-- TOC entry 3656 (class 0 OID 0)
-- Dependencies: 225
-- Name: vaccine_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vaccine_id_seq OWNED BY public.vaccine.id;


--
-- TOC entry 3468 (class 2604 OID 18330)
-- Name: animal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animal ALTER COLUMN id SET DEFAULT nextval('public.animal_id_seq'::regclass);


--
-- TOC entry 3469 (class 2604 OID 18339)
-- Name: appointment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appointment ALTER COLUMN id SET DEFAULT nextval('public.appointment_id_seq'::regclass);


--
-- TOC entry 3470 (class 2604 OID 18346)
-- Name: available_date id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.available_date ALTER COLUMN id SET DEFAULT nextval('public.available_date_id_seq'::regclass);


--
-- TOC entry 3471 (class 2604 OID 18353)
-- Name: customer id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer ALTER COLUMN id SET DEFAULT nextval('public.customer_id_seq'::regclass);


--
-- TOC entry 3472 (class 2604 OID 18362)
-- Name: doctor id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doctor ALTER COLUMN id SET DEFAULT nextval('public.doctor_id_seq'::regclass);


--
-- TOC entry 3473 (class 2604 OID 18371)
-- Name: vaccine id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vaccine ALTER COLUMN id SET DEFAULT nextval('public.vaccine_id_seq'::regclass);


--
-- TOC entry 3635 (class 0 OID 18327)
-- Dependencies: 216
-- Data for Name: animal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.animal (id, breed, colour, date_of_birth, gender, name, species, customer_id) FROM stdin;
16	Tabby	Black	2015-02-10	Male	Kariş	Cat	3
1	Tabby	Gray & White	2022-06-29	Female	Miso	Cat	1
22	Tabby	Black & White	2022-06-29	Male	Soya	Cat	2
23	Tabby	Black & White	2015-02-10	Male	Yeti	Cat	6
24	Labrador Retriever	Black	2014-06-15	Male	Gölge	Dog	7
\.


--
-- TOC entry 3637 (class 0 OID 18336)
-- Dependencies: 218
-- Data for Name: appointment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.appointment (id, appointment_date, doctor_id, animal_id) FROM stdin;
2	2023-12-08 10:00:00	1	1
1	2023-12-08 09:00:00	1	1
4	2023-12-13 14:00:00	7	16
5	2023-12-12 17:00:00	6	24
6	2023-12-16 17:00:00	3	22
\.


--
-- TOC entry 3639 (class 0 OID 18343)
-- Dependencies: 220
-- Data for Name: available_date; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.available_date (id, doctor_id, available_date) FROM stdin;
1	1	2023-12-08
2	2	2023-12-11
4	6	2023-12-12
5	7	2023-12-13
6	2	2023-12-14
7	1	2023-12-15
8	3	2023-12-16
\.


--
-- TOC entry 3641 (class 0 OID 18350)
-- Dependencies: 222
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer (id, address, city, mail, name, phone) FROM stdin;
3	Koşuyolu / Kadıköy	İstanbul	dilos@tandir.com	Dilan Tanal	5544902767
2	Koşuyolu / Kadıköy	İstanbul	cansu@keles.com	Cansu Keles	5543902543
6	Koşuyolu / Kadıköy	Istanbul	fatihdırag@gmail.com	Fatih Dırağ	5345639856
7	Etiler / Beşiktaş	Istanbul	alicaglar@gmail.com	Ali Çağlar	5438959584
1	Koşuyolu / Kadıköy	Istanbul	oncel@keles.com	Öncel Keleş	5369876543
\.


--
-- TOC entry 3643 (class 0 OID 18359)
-- Dependencies: 224
-- Data for Name: doctor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.doctor (id, address, city, mail, name, phone) FROM stdin;
2	Fıstıkağacı / Üsküdar	İstanbul	kemal@vetart.com	Kemal Özkan	0216 345 56 35
3	Fıstıkağacı / Üsküdar	İstanbul	alper@vetart.com	Alper Tavşan	0216 345 56 35
1	Fıstıkağacı / Üsküdar	İstanbul	ceren@vetart.com	Ceren Artıran	0216 345 56 35
6	Fıstıkağacı / Üsküdar	İstanbul	deniz@vetart.com	Koray Musluer	0216 345 56 35
7	Fıstıkağacı / Üsküdar	İstanbul	deniz@vetart.com	Rukiye Kurt	0216 345 56 35
\.


--
-- TOC entry 3645 (class 0 OID 18368)
-- Dependencies: 226
-- Data for Name: vaccine; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vaccine (id, code, name, protection_finish_date, protection_start_date, animal_id) FROM stdin;
1	80B55V08	Rabies Vaccine	2023-12-15	2023-06-15	24
29	80B55V12	Rabies Vaccine	2024-03-15	2023-03-15	16
30	80B55V14	Rabies Vaccine	2024-05-25	2023-05-25	22
31	30B55V14	Combination Vaccine	2023-06-25	2023-01-25	23
28	30B55V07	Combination Vaccine	2024-07-12	2024-01-12	1
\.


--
-- TOC entry 3657 (class 0 OID 0)
-- Dependencies: 215
-- Name: animal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.animal_id_seq', 24, true);


--
-- TOC entry 3658 (class 0 OID 0)
-- Dependencies: 217
-- Name: appointment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.appointment_id_seq', 6, true);


--
-- TOC entry 3659 (class 0 OID 0)
-- Dependencies: 219
-- Name: available_date_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.available_date_id_seq', 8, true);


--
-- TOC entry 3660 (class 0 OID 0)
-- Dependencies: 221
-- Name: customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customer_id_seq', 7, true);


--
-- TOC entry 3661 (class 0 OID 0)
-- Dependencies: 223
-- Name: doctor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.doctor_id_seq', 7, true);


--
-- TOC entry 3662 (class 0 OID 0)
-- Dependencies: 225
-- Name: vaccine_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vaccine_id_seq', 31, true);


--
-- TOC entry 3475 (class 2606 OID 18334)
-- Name: animal animal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animal
    ADD CONSTRAINT animal_pkey PRIMARY KEY (id);


--
-- TOC entry 3477 (class 2606 OID 18341)
-- Name: appointment appointment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appointment
    ADD CONSTRAINT appointment_pkey PRIMARY KEY (id);


--
-- TOC entry 3479 (class 2606 OID 18348)
-- Name: available_date available_date_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.available_date
    ADD CONSTRAINT available_date_pkey PRIMARY KEY (id);


--
-- TOC entry 3481 (class 2606 OID 18357)
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);


--
-- TOC entry 3483 (class 2606 OID 18366)
-- Name: doctor doctor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT doctor_pkey PRIMARY KEY (id);


--
-- TOC entry 3485 (class 2606 OID 18375)
-- Name: vaccine vaccine_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vaccine
    ADD CONSTRAINT vaccine_pkey PRIMARY KEY (id);


--
-- TOC entry 3487 (class 2606 OID 18391)
-- Name: appointment fk2kkeptdxfuextg5ch7xp3ytie; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appointment
    ADD CONSTRAINT fk2kkeptdxfuextg5ch7xp3ytie FOREIGN KEY (animal_id) REFERENCES public.animal(id);


--
-- TOC entry 3486 (class 2606 OID 18376)
-- Name: animal fk6pvxm5gfjqxclb651be9unswe; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animal
    ADD CONSTRAINT fk6pvxm5gfjqxclb651be9unswe FOREIGN KEY (customer_id) REFERENCES public.customer(id);


--
-- TOC entry 3489 (class 2606 OID 18386)
-- Name: available_date fkk0d6pu1wxarsoou0x2e1cc2on; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.available_date
    ADD CONSTRAINT fkk0d6pu1wxarsoou0x2e1cc2on FOREIGN KEY (doctor_id) REFERENCES public.doctor(id);


--
-- TOC entry 3490 (class 2606 OID 18396)
-- Name: vaccine fkne3kmh8y5pcyxwl4u2w9prw6j; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vaccine
    ADD CONSTRAINT fkne3kmh8y5pcyxwl4u2w9prw6j FOREIGN KEY (animal_id) REFERENCES public.animal(id);


--
-- TOC entry 3488 (class 2606 OID 18381)
-- Name: appointment fkoeb98n82eph1dx43v3y2bcmsl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appointment
    ADD CONSTRAINT fkoeb98n82eph1dx43v3y2bcmsl FOREIGN KEY (doctor_id) REFERENCES public.doctor(id);


-- Completed on 2023-12-12 20:37:00 +03

--
-- PostgreSQL database dump complete
--

