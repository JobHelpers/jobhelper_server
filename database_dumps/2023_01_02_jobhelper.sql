--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

-- Started on 2023-01-02 21:57:54

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

DROP DATABASE jobhelper;
--
-- TOC entry 3409 (class 1262 OID 24628)
-- Name: jobhelper; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE jobhelper WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Ukrainian_Ukraine.1251';


\connect jobhelper

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
-- TOC entry 839 (class 1247 OID 24630)
-- Name: subject_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.subject_status AS ENUM (
    'main',
    'mandatory',
    'optional'
);


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 212 (class 1259 OID 24647)
-- Name: cities; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cities (
    id integer NOT NULL,
    name character varying(127) NOT NULL
);


--
-- TOC entry 211 (class 1259 OID 24646)
-- Name: cities_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3410 (class 0 OID 0)
-- Dependencies: 211
-- Name: cities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cities_id_seq OWNED BY public.cities.id;


--
-- TOC entry 224 (class 1259 OID 24722)
-- Name: coefficients; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.coefficients (
    id integer NOT NULL,
    coefficient double precision NOT NULL,
    min_grade integer NOT NULL,
    subject_id integer,
    faculty_id integer
);


--
-- TOC entry 223 (class 1259 OID 24721)
-- Name: coefficients_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.coefficients_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3411 (class 0 OID 0)
-- Dependencies: 223
-- Name: coefficients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.coefficients_id_seq OWNED BY public.coefficients.id;


--
-- TOC entry 210 (class 1259 OID 24638)
-- Name: collaborators; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.collaborators (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(120) NOT NULL,
    role character varying(120) NOT NULL
);


--
-- TOC entry 209 (class 1259 OID 24637)
-- Name: collaborators_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.collaborators_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3412 (class 0 OID 0)
-- Dependencies: 209
-- Name: collaborators_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.collaborators_id_seq OWNED BY public.collaborators.id;


--
-- TOC entry 222 (class 1259 OID 24703)
-- Name: faculties; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.faculties (
    id integer NOT NULL,
    name text NOT NULL,
    university_id integer,
    speciality_code character varying(100),
    short_description text,
    url text
);


--
-- TOC entry 221 (class 1259 OID 24702)
-- Name: faculties_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.faculties_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3413 (class 0 OID 0)
-- Dependencies: 221
-- Name: faculties_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.faculties_id_seq OWNED BY public.faculties.id;


--
-- TOC entry 226 (class 1259 OID 24739)
-- Name: max_min_grades; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.max_min_grades (
    id integer NOT NULL,
    year integer NOT NULL,
    faculty_id integer,
    speciality_code character varying,
    max_min_budget double precision NOT NULL,
    max_min_contract double precision NOT NULL
);


--
-- TOC entry 225 (class 1259 OID 24738)
-- Name: max_min_grades_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.max_min_grades_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3414 (class 0 OID 0)
-- Dependencies: 225
-- Name: max_min_grades_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.max_min_grades_id_seq OWNED BY public.max_min_grades.id;


--
-- TOC entry 214 (class 1259 OID 24654)
-- Name: specialities; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.specialities (
    id integer NOT NULL,
    code character varying(45) NOT NULL,
    name text NOT NULL,
    parent integer
);


--
-- TOC entry 213 (class 1259 OID 24653)
-- Name: specialities_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.specialities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3415 (class 0 OID 0)
-- Dependencies: 213
-- Name: specialities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.specialities_id_seq OWNED BY public.specialities.id;


--
-- TOC entry 218 (class 1259 OID 24672)
-- Name: specialities_subjects; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.specialities_subjects (
    id integer NOT NULL,
    speciality_code character varying(10),
    subject_id integer,
    subject_status public.subject_status NOT NULL
);


--
-- TOC entry 217 (class 1259 OID 24671)
-- Name: specialities_subjects_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.specialities_subjects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3416 (class 0 OID 0)
-- Dependencies: 217
-- Name: specialities_subjects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.specialities_subjects_id_seq OWNED BY public.specialities_subjects.id;


--
-- TOC entry 216 (class 1259 OID 24665)
-- Name: subjects; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.subjects (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);


--
-- TOC entry 215 (class 1259 OID 24664)
-- Name: subjects_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.subjects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3417 (class 0 OID 0)
-- Dependencies: 215
-- Name: subjects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.subjects_id_seq OWNED BY public.subjects.id;


--
-- TOC entry 220 (class 1259 OID 24689)
-- Name: universities; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.universities (
    id integer NOT NULL,
    name text NOT NULL,
    city_id integer
);


--
-- TOC entry 219 (class 1259 OID 24688)
-- Name: universities_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.universities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3418 (class 0 OID 0)
-- Dependencies: 219
-- Name: universities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.universities_id_seq OWNED BY public.universities.id;


--
-- TOC entry 3208 (class 2604 OID 24650)
-- Name: cities id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cities ALTER COLUMN id SET DEFAULT nextval('public.cities_id_seq'::regclass);


--
-- TOC entry 3214 (class 2604 OID 24725)
-- Name: coefficients id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.coefficients ALTER COLUMN id SET DEFAULT nextval('public.coefficients_id_seq'::regclass);


--
-- TOC entry 3207 (class 2604 OID 24641)
-- Name: collaborators id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.collaborators ALTER COLUMN id SET DEFAULT nextval('public.collaborators_id_seq'::regclass);


--
-- TOC entry 3213 (class 2604 OID 24706)
-- Name: faculties id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.faculties ALTER COLUMN id SET DEFAULT nextval('public.faculties_id_seq'::regclass);


--
-- TOC entry 3215 (class 2604 OID 24742)
-- Name: max_min_grades id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.max_min_grades ALTER COLUMN id SET DEFAULT nextval('public.max_min_grades_id_seq'::regclass);


--
-- TOC entry 3209 (class 2604 OID 24657)
-- Name: specialities id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.specialities ALTER COLUMN id SET DEFAULT nextval('public.specialities_id_seq'::regclass);


--
-- TOC entry 3211 (class 2604 OID 24675)
-- Name: specialities_subjects id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.specialities_subjects ALTER COLUMN id SET DEFAULT nextval('public.specialities_subjects_id_seq'::regclass);


--
-- TOC entry 3210 (class 2604 OID 24668)
-- Name: subjects id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.subjects ALTER COLUMN id SET DEFAULT nextval('public.subjects_id_seq'::regclass);


--
-- TOC entry 3212 (class 2604 OID 24692)
-- Name: universities id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.universities ALTER COLUMN id SET DEFAULT nextval('public.universities_id_seq'::regclass);


--
-- TOC entry 3389 (class 0 OID 24647)
-- Dependencies: 212
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.cities (id, name) VALUES (1, 'Львів');
INSERT INTO public.cities (id, name) VALUES (2, 'Київ');


--
-- TOC entry 3401 (class 0 OID 24722)
-- Dependencies: 224
-- Data for Name: coefficients; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (2, 0.35, 130, 1, 826173);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (3, 0.4, 145, 14, 826173);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (4, 0.25, 130, 3, 826173);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (5, 0.25, 130, 6, 826173);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (6, 0.25, 130, 18, 826173);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (7, 0.25, 130, 19, 826173);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (8, 0.25, 130, 21, 826173);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (9, 0.25, 130, 22, 826173);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (10, 0.2, 100, 29, 810096);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (11, 0.2, 115, 14, 810096);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (12, 0.6, 124, 999, 810096);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (13, 0.35, 100, 1, 833553);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (14, 0.4, 115, 14, 833553);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (15, 0.25, 100, 3, 833553);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (16, 0.25, 100, 6, 833553);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (17, 0.25, 100, 18, 833553);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (18, 0.25, 100, 19, 833553);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (19, 0.25, 100, 21, 833553);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (20, 0.25, 100, 22, 833553);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (1, 0.35, 130, 1, 834453);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (21, 0.4, 145, 14, 834453);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (22, 0.25, 130, 3, 834453);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (23, 0.25, 130, 6, 834453);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (24, 0.25, 130, 18, 834453);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (25, 0.25, 130, 19, 834453);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (26, 0.25, 130, 21, 834453);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (27, 0.25, 130, 22, 834453);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (28, 0.3, 100, 1, 842107);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (29, 0.5, 100, 14, 842107);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (32, 0.2, 100, 3, 842107);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (30, 0.2, 100, 6, 842107);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (31, 0.2, 100, 18, 842107);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (33, 0.2, 100, 19, 842107);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (34, 0.2, 100, 21, 842107);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (35, 0.2, 100, 22, 842107);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (36, 0.25, 100, 1, 842578);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (37, 0.5, 100, 14, 842578);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (38, 0.25, 100, 3, 842578);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (39, 0.25, 100, 6, 842578);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (40, 0.25, 100, 18, 842578);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (41, 0.25, 100, 19, 842578);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (42, 0.25, 100, 21, 842578);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (43, 0.25, 100, 22, 842578);


--
-- TOC entry 3387 (class 0 OID 24638)
-- Dependencies: 210
-- Data for Name: collaborators; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.collaborators (id, name, email, role) VALUES (1, 'Stanislav Denysenko', 'lohopusik67@gmail.com', 'Frontend dev');
INSERT INTO public.collaborators (id, name, email, role) VALUES (2, 'Vitaliy Sevastyanov', 'vetal.sevastyanov@gmail.com', 'Frontend dev');
INSERT INTO public.collaborators (id, name, email, role) VALUES (3, 'Nazar Bylen', 'nazar.bylen.ir.2021@lpnu.ua', 'Backend dev');
INSERT INTO public.collaborators (id, name, email, role) VALUES (4, 'Orest Borshovskiy', 'oborshovskiy@gmail.com', 'Backend dev');
INSERT INTO public.collaborators (id, name, email, role) VALUES (5, 'Ihor Patko', 'patkoihor2004@gmail.com', 'Backend dev');
INSERT INTO public.collaborators (id, name, email, role) VALUES (6, 'Maksym Morochenets', 'maksmorroo@gmail.com', 'Backend dev');
INSERT INTO public.collaborators (id, name, email, role) VALUES (7, 'Ihor Byra', 'ihorbyra@gmail.com', 'Mentor');


--
-- TOC entry 3399 (class 0 OID 24703)
-- Dependencies: 222
-- Data for Name: faculties; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (826173, 'Інститут комп''ютерних технологій, автоматики та метрології', 97, '122', '', '');
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (826494, 'Факультет міжнародних економічних відносин та інформаційних технологій', 16, '122', '', '');
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (833553, 'Інститут комп''ютерних технологій, автоматики та метрології', 97, '125', '', '');
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (834453, 'Інститут комп''ютерних наук та інформаційних технологій', 97, '122', '', '');
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (835497, 'Факультет прикладної математики та інформатики', 282, '125', '', '');
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (842107, 'Факультет прикладної математики та інформатики', 282, '122', '', '');
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (842578, 'Факультет електроніки та комп`ютерних технологій', 282, '122', '', '');
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (855074, 'Інститут деревообробних та комп''ютерних технологій і дизайну', 160, '122', '', '');
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (856008, 'Факультет видавничо-поліграфічних та інформаційних технологій', 167, '122', '', '');
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (860317, 'Факультет прикладних наук', 244, '122', '', '');
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (869029, 'Філософський факультет', 282, '033', '', '');
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (810096, 'Інститут архітектури та дизайну', 97, '022', '', '');
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (855732, 'Інститут економіки і менеджменту', 97, '075', '', '');
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (833097, '
Інститут права, психології та інноваційної освіти', 97, '061', '', '');
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (856581, 'Інститут економіки і менеджменту', 97, '051', '', '');
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (856624, 'Інститут економіки і менеджменту', 97, '073', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (827395, 'Інститут права, психології та інноваційної освіти', 97, '053', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (877889, '
Інститут гуманітарних та соціальних наук', 97, '054', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (838766, 'Інститут геодезії', 97, '103', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (855964, 'Інститут комп''ютерних наук та інформаційних технологій', 97, '124', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (836893, 'Інститут телекомунікацій, радіоелектроніки та електронної техніки', 97, '171', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (853127, '
Інститут хімії та хімічних технологій', 97, '181', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (856872, 'Інститут будівництва та інженерних систем', 97, '192', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (833638, 'Інститут гуманітарних та соціальних наук', 97, '291', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (851657, 'Інститут прикладної математики та фундаментальних наук', 97, '291', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (856873, 'Інститут механічної інженерії та транспорту', 97, '274', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (828804, 'Інститут сталого розвитку імені В`ячеслава', 97, '242', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (883189, 'Інститут прикладної математики та фундаментальних наук', 97, '113', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (857860, 'Інститут права, психології та інноваційної освіти', 97, '081', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (861629, 'Інститут адміністрування та післядипломної освіти', 97, '281', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (851933, 'Економічний факультет', 282, '073', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (851995, 'Факультет міжнародних відносин', 282, '292', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (839187, 'Географічний факультет', 282, '181', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (853825, 'Філософський факультет', 282, '053', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (924217, '
Факультет електроніки та комп`ютерних технологій', 282, '171', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (857382, 'Факультет педагогічної освіти', 282, '231', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (828645, 'Факультет прикладної математики та інформатики', 282, '113', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (852793, '
Історичний факультет', 282, '032', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (861425, '
Факультет міжнародних економічних відносин та інформаційних технологій', 16, '292', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (892873, 'Факультет товарознавства, управління та сфери обслуговування', 16, '181', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (849976, 'Навчально-науковий інститут журналістики', 41, '061', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (846210, '
Історичний факультет', 41, '032', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (851759, 'Географічний факультет', 41, '242', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (839896, 'Навчально-науковий інститут міжнародних відносин', 41, '293', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (816072, 'Навчально-науковий інститут філології', 41, '035', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (851193, 'Навчально-науковий інститут права', 41, '081', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (864837, 'Філософський факультет', 41, '033', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (814348, 'Навчально-науковий інститут філології', 41, '014', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (815450, 'Філософський факультет', 41, '031', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (862064, 'Факультет психології', 41, '231', NULL, NULL);


--
-- TOC entry 3403 (class 0 OID 24739)
-- Dependencies: 226
-- Data for Name: max_min_grades; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.max_min_grades (id, year, faculty_id, speciality_code, max_min_budget, max_min_contract) VALUES (1, 2021, 826173, '122', 193.443, 151.062);
INSERT INTO public.max_min_grades (id, year, faculty_id, speciality_code, max_min_budget, max_min_contract) VALUES (2, 2021, 810096, '022', 180.234, 136.68);
INSERT INTO public.max_min_grades (id, year, faculty_id, speciality_code, max_min_budget, max_min_contract) VALUES (9, 2021, 833553, '125', 185.283, 123.063);
INSERT INTO public.max_min_grades (id, year, faculty_id, speciality_code, max_min_budget, max_min_contract) VALUES (3, 2021, 834453, '122', 189.261, 146.472);
INSERT INTO public.max_min_grades (id, year, faculty_id, speciality_code, max_min_budget, max_min_contract) VALUES (4, 2021, 842107, '122', 186.66, 125.868);
INSERT INTO public.max_min_grades (id, year, faculty_id, speciality_code, max_min_budget, max_min_contract) VALUES (5, 2021, 842578, '122', 185.64, 149.94);


--
-- TOC entry 3391 (class 0 OID 24654)
-- Dependencies: 214
-- Data for Name: specialities; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.specialities (id, code, name, parent) VALUES (1, '011', 'Освітні, педагогічні науки', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (2, '012', 'Дошкільна освіта', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (3, '013', 'Початкова освіта', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (4, '014', 'Середня освіта', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (5, '014.01', 'Українська мова і література', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (6, '014.021', 'Англійська мова і література', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (7, '014.022', 'Німецька мова і література', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (8, '014.023', 'Французька мова і література', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (9, '014.024', 'Іспанська мова і література', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (10, '014.025', 'Російська мова і література', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (11, '014.026', 'Угорська мова і література', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (12, '014.027', 'Румунська/молдовська мова і література', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (13, '014.028', 'Польська мова і література', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (14, '014.029', 'Інші мови (із зазначенням мови)', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (15, '014.03', 'Історія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (16, '014.04', 'Математика', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (17, '014.05', 'Біологія та здоров’я людини', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (18, '014.06', 'Хімія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (19, '014.07', 'Географія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (20, '014.08', 'Фізика', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (21, '014.09', 'Інформатика', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (22, '014.10', 'Трудове навчання та технології', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (23, '014.11', 'Фізична культура', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (24, '014.12', 'Образотворче мистецтво', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (25, '014.13', 'Музичне мистецтво', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (26, '014.15', 'Природничі науки', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (27, '015', 'Професійна освіта', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (28, '015.31', 'Будівництво та зварювання', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (29, '015.32', 'Електроніка, метрологія та радіотелекомунікації', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (30, '015.33', 'Енергетика, електротехніка та електромеханіка', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (31, '015.34', 'Машинобудування', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (32, '015.35', 'Видобуток, переробка та транспортування корисних копалин', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (33, '015.36', 'Технологія виробів легкої промисловості', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (34, '015.37', 'Аграрне виробництво, переробка сільськогосподарської продукції та харчові технології', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (35, '015.38', 'Транспорт', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (36, '015.39', 'Цифрові технології', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (37, '016', 'Спеціальна освіта', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (38, '016.01', 'Логопедія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (39, '016.02', 'Олігофренопедагогіка', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (40, '016.03', 'Ортопедагогіка', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (41, '016.04', 'Сурдопедагогіка', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (42, '016.05', 'Тифлопедагогіка', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (43, '017', 'Фізична культура і спорт', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (44, '021', 'Аудіовізуальне мистецтво та виробництво', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (45, '022', 'Дизайн', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (46, '022.01', 'Графічний дизайн', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (47, '022.02', 'Дизайн одягу (взуття)', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (48, '022.03', 'Дизайн середовища', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (49, '022.04', 'Промисловий дизайн', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (50, '022.05', 'Перукарське мистецтво та декоративна косметика', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (51, '023', 'Образотворче мистецтво, декоративне мистецтво, реставрація', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (52, '024', 'Хореографія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (53, '025', 'Музичне мистецтво', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (54, '026', 'Сценічне мистецтво', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (55, '027', 'Музеєзнавство, пам’яткознавство', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (56, '028', 'Менеджмент соціокультурної діяльності', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (57, '029', 'Інформаційна, бібліотечна та архівна справа', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (58, '031', 'Релігієзнавство', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (59, '032', 'Історія та археологія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (60, '033', 'Філософія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (61, '034', 'Культурологія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (62, '035', 'Філологія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (63, '035.01', 'українська мова та література', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (64, '035.02', 'кримськотатарська мова та література', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (65, '035.032', 'слов’янські мови та літератури (переклад включно), перша - болгарська', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (66, '035.033', 'слов’янські мови та літератури (переклад включно), перша - польська', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (67, '035.034', 'слов’янські мови та літератури (переклад включно), перша - російська', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (68, '035.035', 'слов’янські мови та літератури (переклад включно), перша - сербська', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (69, '035.036', 'слов’янські мови та літератури (переклад включно), перша - словацька', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (70, '035.037', 'слов’янські мови та літератури (переклад включно), перша - хорватська', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (71, '035.038', 'слов’янські мови та літератури (переклад включно), перша - чеська', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (72, '035.041', 'германські мови та літератури (переклад включно), перша - англійська', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (73, '035.043', 'германські мови та літератури (переклад включно), перша - німецька', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (74, '035.044', 'германські мови та літератури (переклад включно), перша - шведська', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (75, '035.051', 'романські мови та літератури (переклад включно), перша - іспанська', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (76, '035.052', 'романські мови та літератури (переклад включно), перша - італійська', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (77, '035.053', 'романські мови та літератури (переклад включно), перша - португальська', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (78, '035.054', 'романські мови та літератури (переклад включно), перша - румунська', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (79, '035.055', 'романські мови та літератури (переклад включно), перша - французька', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (80, '035.060', 'східні мови та літератури (переклад включно), перша - арабська', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (81, '035.061', 'східні мови та літератури (переклад включно), перша - в’єтнамська', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (82, '035.062', 'східні мови та літератури (переклад включно), перша - ґінді', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (83, '035.063', 'східні мови та літератури (переклад включно), перша - іврит', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (84, '035.064', 'східні мови та літератури (переклад включно), перша - індонезійська', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (85, '035.065', 'східні мови та літератури (переклад включно), перша - китайська', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (86, '035.066', 'східні мови та літератури (переклад включно), перша - корейська', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (87, '035.067', 'східні мови та літератури (переклад включно), перша - перська', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (88, '035.068', 'східні мови та літератури (переклад включно), перша - турецька', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (89, '035.069', 'східні мови та літератури (переклад включно), перша - японська', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (90, '035.071', 'угро-фінські мови та літератури (переклад включно), перша - угорська', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (91, '035.08', 'класичні мови та літератури (переклад включно)', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (92, '035.081', 'новогрецька мова і література (переклад включно)', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (93, '035.09', 'фольклористика', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (94, '035.10', 'прикладна лінгвістика', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (95, '041', 'Богослов’я', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (96, '051', 'Економіка', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (97, '052', 'Політологія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (98, '053', 'Психологія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (99, '054', 'Соціологія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (100, '061', 'Журналістика', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (101, '071', 'Облік і оподаткування', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (102, '072', 'Фінанси, банківська справа та страхування', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (103, '073', 'Менеджмент', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (104, '075', 'Маркетинг', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (105, '076', 'Підприємництво, торгівля та біржова діяльність', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (106, '081', 'Право', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (107, '091', 'Біологія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (108, '101', 'Екологія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (109, '102', 'Хімія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (110, '103', 'Науки про Землю', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (111, '104', 'Фізика та астрономія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (112, '105', 'Прикладна фізика та наноматеріали', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (113, '106', 'Географія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (114, '111', 'Математика', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (115, '112', 'Статистика', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (116, '113', 'Прикладна математика', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (117, '121', 'Інженерія програмного забезпечення', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (118, '122', 'Комп''ютерні науки', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (119, '123', 'Комп’ютерна інженерія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (120, '124', 'Системний аналіз', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (121, '125', 'Кібербезпека', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (122, '126', 'Інформаційні системи та технології', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (123, '131', 'Прикладна механіка', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (124, '132', 'Матеріалознавство', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (125, '133', 'Галузеве машинобудування', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (126, '134', 'Авіаційна та ракетно-космічна техніка', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (127, '135', 'Суднобудування', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (128, '136', 'Металургія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (129, '141', 'Електроенергетика, електротехніка та електромеханіка', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (130, '142', 'Енергетичне машинобудування', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (131, '143', 'Атомна енергетика', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (132, '144', 'Теплоенергетика', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (133, '145', 'Гідроенергетика', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (134, '151', 'Автоматизація та комп’ютерно-інтегровані технології', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (135, '152', 'Метрологія та інформаційно-вимірювальна техніка', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (136, '153', 'Мікро- та наносистемна техніка', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (137, '161', 'Хімічні технології та інженерія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (138, '162', 'Біотехнології та біоінженерія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (139, '163', 'Біомедична інженерія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (140, '171', 'Електроніка', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (141, '172', 'Телекомунікації та радіотехніка', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (142, '173', 'Авіоніка', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (143, '181', 'Харчові технології', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (144, '182', 'Технології легкої промисловості', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (145, '183', 'Технології захисту навколишнього середовища', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (146, '184', 'Гірництво', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (147, '185', 'Нафтогазова інженерія та технології', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (148, '186', 'Видавництво та поліграфія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (149, '187', 'Деревообробні та меблеві технології', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (150, '191', 'Архітектура та містобудування', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (151, '192', 'Будівництво та цивільна інженерія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (152, '193', 'Геодезія та землеустрій', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (153, '194', 'Гідротехнічне будівництво, водна інженерія та водні технології', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (154, '201', 'Агрономія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (155, '202', 'Захист і карантин рослин', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (156, '203', 'Садівництво та виноградарство', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (157, '204', 'Технологія виробництва і переробки продукції тваринництва', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (158, '205', 'Лісове господарство', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (159, '206', 'Садово-паркове господарство', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (160, '207', 'Водні біоресурси та аквакультура', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (161, '208', 'Агроінженерія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (162, '211', 'Ветеринарна медицина', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (163, '212', 'Ветеринарна гігієна, санітарія і експертиза', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (164, '221', 'Стоматологія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (165, '222', 'Медицина', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (166, '223', 'Медсестринство', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (167, '224', 'Технології медичної діагностики та лікування', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (168, '225', 'Медична психологія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (169, '226', 'Фармація, промислова фармація', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (170, '227', 'Фізична терапія, ерготерапія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (171, '227.01', 'Фізична терапія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (172, '227.02', 'Ерготерапія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (173, '228', 'Педіатрія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (174, '229', 'Громадське здоров`я', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (175, '231', 'Соціальна робота', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (176, '232', 'Соціальне забезпечення', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (177, '241', 'Готельно-ресторанна справа', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (178, '242', 'Туризм', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (179, '251', 'Державна безпека', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (180, '252', 'Безпека державного кордону', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (181, '253', 'Військове управління', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (182, '254', 'Забезпечення військ (сил)', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (183, '255', 'Озброєння та військова техніка', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (184, '256', 'Національна безпека', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (185, '261', 'Пожежна безпека', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (186, '262', 'Правоохоронна діяльність', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (187, '263', 'Цивільна безпека', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (188, '271', 'Морський та внутрішній водний транспорт', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (189, '271.01', 'Навігація і управління морськими суднами', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (190, '271.02', 'Управління судновими технічними системами і комплексами', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (191, '271.03', 'Експлуатація суднового електрообладнання і засобів автоматики', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (192, '271.04', 'Судноводіння на внутрішніх водних шляхах', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (193, '272', 'Авіаційний транспорт', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (194, '273', 'Залізничний транспорт', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (195, '274', 'Автомобільний транспорт', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (196, '275', 'Транспортні технології', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (197, '275.01', 'на морському та річковому транспорті', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (198, '275.02', 'на залізничному транспорті', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (199, '275.03', 'на автомобільному транспорті', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (200, '275.04', 'на повітряному транспорті', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (201, '281', 'Публічне управління та адміністрування', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (202, '291', 'Міжнародні відносини, суспільні комунікації та регіональні студії', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (203, '292', 'Міжнародні економічні відносини', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (204, '293', 'Міжнародне право', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (206, '014.02', 'Середня освіта02', 0);


--
-- TOC entry 3395 (class 0 OID 24672)
-- Dependencies: 218
-- Data for Name: specialities_subjects; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1187, '101', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1188, '101', 18, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1189, '101', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1190, '101', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1191, '101', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1192, '101', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1193, '101', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1194, '101', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1195, '102', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1196, '102', 22, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1197, '102', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1198, '102', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1199, '102', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1200, '102', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1201, '102', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1202, '102', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1203, '103', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1204, '103', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1205, '103', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1206, '103', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1207, '103', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1208, '103', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1209, '103', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1210, '103', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1211, '104', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1212, '104', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1213, '104', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1214, '104', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1215, '104', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1216, '104', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1217, '104', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1218, '104', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1219, '105', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1220, '105', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1221, '105', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1222, '105', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1223, '105', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1224, '105', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1225, '105', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1226, '105', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1227, '106', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1228, '106', 19, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1229, '106', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1230, '106', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1231, '106', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1232, '106', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1233, '106', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1234, '106', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1235, '111', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1236, '111', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1237, '111', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1238, '111', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1239, '111', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1240, '111', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1241, '111', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1242, '111', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1243, '112', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1244, '112', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1245, '112', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1246, '112', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1247, '112', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1248, '112', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1249, '112', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1250, '112', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1251, '113', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1252, '113', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1253, '113', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1254, '113', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1255, '113', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1256, '113', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1257, '113', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1258, '113', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1259, '121', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1260, '121', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1261, '121', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1262, '121', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1263, '121', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1264, '121', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1265, '121', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1266, '121', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1267, '122', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1268, '122', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1269, '122', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1270, '122', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1271, '122', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1272, '122', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1273, '122', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1274, '122', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1275, '123', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1276, '123', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1277, '123', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1278, '123', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1279, '123', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1280, '123', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1281, '123', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1282, '123', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1283, '124', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1284, '124', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1285, '124', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1286, '124', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1287, '124', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1288, '124', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1289, '124', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1290, '124', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1291, '125', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1292, '125', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1293, '125', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1294, '125', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1295, '125', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1296, '125', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1297, '125', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1298, '125', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1299, '126', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1300, '126', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1301, '126', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1302, '126', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1303, '126', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1304, '126', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1305, '126', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1306, '126', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1307, '131', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1308, '131', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1309, '131', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1310, '131', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1311, '131', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1312, '131', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1313, '131', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1314, '131', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1315, '132', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1316, '132', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1317, '132', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1318, '132', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1319, '132', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1320, '132', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1321, '132', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1322, '132', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1323, '133', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1324, '133', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1325, '133', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1326, '133', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1327, '133', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1328, '133', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1329, '133', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1330, '133', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1331, '134', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1332, '134', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1333, '134', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1334, '134', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1335, '134', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1336, '134', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1337, '134', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1338, '134', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1339, '135', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1340, '135', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1341, '135', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1342, '135', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1343, '135', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1344, '135', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1345, '135', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1346, '135', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1347, '136', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1348, '136', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1349, '136', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1350, '136', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1351, '136', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1352, '136', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1353, '136', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1354, '136', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1355, '141', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1356, '141', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1357, '141', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1358, '141', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1359, '141', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1360, '141', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1361, '141', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1362, '141', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1363, '142', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1364, '142', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1365, '142', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1366, '142', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1367, '142', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1368, '142', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1369, '142', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1370, '142', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1371, '143', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1372, '143', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1373, '143', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1374, '143', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1375, '144', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1376, '144', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1377, '144', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1378, '144', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1379, '145', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1380, '145', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1381, '145', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1382, '145', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1383, '151', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1384, '151', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1385, '151', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1386, '151', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1387, '151', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1388, '151', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1389, '151', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1390, '151', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1391, '152', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1392, '152', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1393, '152', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1394, '152', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1395, '152', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1396, '152', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1397, '152', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1398, '152', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1399, '153', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1400, '153', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1401, '153', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1402, '153', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1403, '153', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1404, '153', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1405, '153', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1406, '153', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1407, '161', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1408, '161', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1409, '161', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1410, '161', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1411, '161', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1412, '161', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1413, '161', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1414, '161', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1415, '162', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1416, '162', 18, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1417, '162', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1418, '162', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1419, '162', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1420, '162', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1421, '162', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1422, '162', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1423, '163', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1424, '163', 18, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1425, '163', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1426, '163', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1427, '163', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1428, '163', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1429, '163', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1430, '163', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1431, '171', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1432, '171', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1433, '171', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1434, '171', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1435, '171', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1436, '171', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1437, '171', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1438, '171', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1439, '172', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1440, '172', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1441, '172', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1442, '172', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1443, '172', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1444, '172', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1445, '172', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1446, '172', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1447, '173', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1448, '173', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1449, '173', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1450, '173', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1451, '173', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1452, '173', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1453, '173', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1454, '173', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1455, '181', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1456, '181', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1457, '181', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1458, '181', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1459, '181', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1460, '181', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1461, '181', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1462, '181', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1463, '182', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1464, '182', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1465, '182', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1466, '182', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1467, '182', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1468, '182', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1469, '182', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1470, '182', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1471, '183', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1472, '183', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1473, '183', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1474, '183', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1475, '183', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1476, '183', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1477, '183', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1478, '183', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1479, '184', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1480, '184', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1481, '184', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1482, '184', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1483, '184', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1484, '184', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1485, '184', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1486, '184', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1487, '185', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1488, '185', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1489, '185', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1490, '185', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1491, '185', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1492, '185', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1493, '185', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1494, '185', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1495, '186', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1496, '186', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1497, '186', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1498, '186', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1499, '186', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1500, '186', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1501, '186', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1502, '186', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1503, '187', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1504, '187', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1505, '187', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1506, '187', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1507, '187', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1508, '187', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1509, '187', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1510, '187', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1511, '191', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1512, '191', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1513, '191', 999, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1514, '192', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1515, '192', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1516, '192', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1517, '192', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1518, '192', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1519, '192', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1520, '192', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1521, '192', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1522, '193', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1523, '193', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1524, '193', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1525, '193', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1526, '193', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1527, '193', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1528, '193', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1529, '193', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1530, '194', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1531, '194', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1532, '194', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1533, '194', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1534, '194', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1535, '194', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1536, '194', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1537, '194', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1538, '201', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1539, '201', 18, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1540, '201', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1541, '201', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1542, '201', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1543, '201', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1544, '201', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1545, '201', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1546, '202', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1547, '202', 18, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1548, '202', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1549, '202', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1550, '202', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1551, '202', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1552, '202', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1553, '202', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1554, '203', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1555, '203', 18, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1556, '203', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1557, '203', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1558, '203', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1559, '203', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1560, '203', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1561, '203', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1562, '204', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1563, '204', 18, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1564, '204', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1565, '204', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1566, '204', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1567, '204', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1568, '204', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1569, '204', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1570, '205', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1571, '205', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1572, '205', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1573, '205', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1574, '205', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1575, '205', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1576, '205', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1577, '205', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1578, '206', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1579, '206', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1580, '206', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1581, '206', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1582, '206', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1583, '206', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1584, '206', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1585, '206', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1586, '207', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1587, '207', 18, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1588, '207', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1589, '207', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1590, '207', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1591, '207', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1592, '207', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1593, '207', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1594, '208', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1595, '208', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1596, '208', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1597, '208', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1598, '208', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1599, '208', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1600, '208', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1601, '208', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1602, '211', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1603, '211', 18, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1604, '211', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1605, '211', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1606, '211', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1607, '212', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1608, '212', 18, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1609, '212', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1610, '212', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1611, '212', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1612, '221', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1613, '221', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1614, '221', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1615, '221', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1616, '221', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1617, '222', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1618, '222', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1619, '222', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1620, '222', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1621, '222', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1622, '223', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1623, '223', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1624, '223', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1625, '223', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1626, '223', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1627, '224', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1628, '224', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1629, '224', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1630, '224', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1631, '224', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1632, '225', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1633, '225', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1634, '225', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1635, '225', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1636, '225', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1637, '226', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1638, '226', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1639, '226', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1640, '226', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1641, '226', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1642, '227', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1643, '227', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1644, '227', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1645, '227', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1646, '227', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1647, '228', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1648, '228', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1649, '228', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1650, '228', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1651, '228', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1652, '229', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1653, '229', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1654, '229', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1655, '229', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1656, '229', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1657, '231', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1658, '231', 6, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1659, '231', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1660, '231', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1661, '231', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1662, '231', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1663, '231', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1664, '231', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1665, '232', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1666, '232', 6, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1667, '232', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1668, '232', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1669, '232', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1670, '232', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1671, '232', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1672, '232', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1673, '241', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1674, '241', 3, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1675, '241', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1676, '241', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1677, '241', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1678, '241', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1679, '241', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1680, '241', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1681, '242', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1682, '242', 3, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1683, '242', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1684, '242', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1685, '242', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1686, '242', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1687, '242', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1688, '242', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1689, '251', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1690, '252', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1691, '253', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1692, '254', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1693, '255', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1694, '255', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1695, '255', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1696, '255', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1697, '256', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1698, '261', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1699, '261', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1700, '261', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1701, '261', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1702, '262', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1703, '262', 6, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1704, '262', 999, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1705, '263', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1706, '263', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1707, '263', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1708, '263', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1709, '271', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1710, '272', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1711, '272', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1712, '272', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1713, '272', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1714, '273', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1715, '273', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1716, '273', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1717, '273', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1718, '274', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1719, '274', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1720, '274', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1721, '274', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1722, '275', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1723, '275', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1724, '275', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1725, '275', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1726, '281', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1727, '281', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1728, '281', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1729, '281', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1730, '281', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1731, '281', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1732, '281', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1733, '281', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1734, '291', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1735, '291', 3, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1736, '291', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1737, '291', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1738, '291', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1739, '291', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1740, '291', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1741, '291', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1742, '292', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1743, '292', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1744, '292', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1745, '292', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1746, '292', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1747, '292', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1748, '292', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1749, '292', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1750, '293', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1751, '293', 3, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1752, '293', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1753, '293', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1754, '011', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1755, '012', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1756, '012', 6, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1757, '012', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1758, '012', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1759, '012', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1760, '012', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1761, '012', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1762, '012', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1763, '013', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1764, '013', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1765, '013', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1766, '013', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1767, '013', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1768, '013', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1769, '013', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1770, '013', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1771, '014.01', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1772, '014.01', 6, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1773, '014.01', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1774, '014.01', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1775, '014.01', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1776, '014.01', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1777, '014.01', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1778, '014.01', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1779, '014.02', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1780, '014.02', 3, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1781, '014.02', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1782, '014.02', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1783, '014.02', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1784, '014.02', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1785, '014.02', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1786, '014.02', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1787, '014.03', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1788, '014.03', 6, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1789, '014.03', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1790, '014.03', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1791, '014.03', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1792, '014.03', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1793, '014.03', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1794, '014.03', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1795, '014.04', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1796, '014.04', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1797, '014.04', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1798, '014.04', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1799, '014.04', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1800, '014.04', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1801, '014.04', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1802, '014.04', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1803, '014.05', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1804, '014.05', 18, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1805, '014.05', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1806, '014.05', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1807, '014.05', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1808, '014.05', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1809, '014.05', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1810, '014.05', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1811, '014.06', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1812, '014.06', 22, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1813, '014.06', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1814, '014.06', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1815, '014.06', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1816, '014.06', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1817, '014.06', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1818, '014.06', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1819, '014.07', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1820, '014.07', 19, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1821, '014.07', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1822, '014.07', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1823, '014.07', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1824, '014.07', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1825, '014.07', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1826, '014.07', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1827, '014.08', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1828, '014.08', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1829, '014.08', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1830, '014.08', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1831, '014.08', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1832, '014.08', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1833, '014.08', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1834, '014.08', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1835, '014.09', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1836, '014.09', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1837, '014.09', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1838, '014.09', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1839, '014.09', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1840, '014.09', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1841, '014.09', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1842, '014.09', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1843, '014.10', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1844, '014.10', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1845, '014.10', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1846, '014.10', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1847, '014.10', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1848, '014.10', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1849, '014.10', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1850, '014.10', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1851, '014.11', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1852, '014.11', 18, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1853, '014.11', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1854, '014.11', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1855, '014.11', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1856, '014.11', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1857, '014.11', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1858, '014.11', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1859, '014.12', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1860, '014.12', 6, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1861, '014.12', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1862, '014.12', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1863, '014.12', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1864, '014.12', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1865, '014.12', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1866, '014.12', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1867, '014.13', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1868, '014.13', 6, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1869, '014.13', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1870, '014.13', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1871, '014.13', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1872, '014.13', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1873, '014.13', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1874, '014.13', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1875, '014.15', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1876, '014.15', 18, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1877, '014.15', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1878, '014.15', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1879, '014.15', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1880, '014.15', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1881, '014.15', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1882, '014.15', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1883, '015', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1884, '015', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1885, '015', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1886, '015', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1887, '015', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1888, '015', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1889, '015', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1890, '015', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1891, '016', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1892, '016', 18, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1893, '016', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1894, '016', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1895, '016', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1896, '016', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1897, '016', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1898, '016', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1899, '017', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1900, '017', 18, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1901, '017', 999, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1902, '021', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1903, '021', 6, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1904, '021', 21, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1905, '021', 999, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1906, '022.01', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1907, '022.01', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1908, '022.01', 999, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1909, '022.02', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1910, '022.02', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1911, '022.02', 999, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1912, '022.03', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1913, '022.03', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1914, '022.03', 999, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1915, '022.04', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1916, '022.04', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1917, '022.04', 999, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1918, '022.05', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1919, '022.05', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1920, '022.05', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1921, '022.05', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1922, '022.05', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1923, '022.05', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1924, '022.05', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1925, '022.05', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1926, '023', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1927, '023', 6, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1928, '023', 22, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1929, '023', 999, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1930, '024', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1931, '024', 6, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1932, '024', 18, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1933, '024', 999, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1934, '025', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1935, '025', 6, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1936, '025', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1937, '025', 3, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1938, '025', 999, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1939, '026', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1940, '026', 6, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1941, '026', 3, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1942, '026', 999, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1943, '027', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1944, '027', 6, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1945, '027', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1946, '027', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1947, '027', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1948, '027', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1949, '027', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1950, '027', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1951, '028', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1952, '028', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1953, '028', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1954, '028', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1955, '028', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1956, '028', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1957, '028', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1958, '028', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1959, '029', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1960, '029', 6, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1961, '029', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1962, '029', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1963, '029', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1964, '029', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1965, '029', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1966, '029', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1967, '031', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1968, '031', 6, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1969, '031', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1970, '031', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1971, '031', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1972, '031', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1973, '031', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1974, '031', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1975, '032', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1976, '032', 6, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1977, '032', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1978, '032', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1979, '032', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1980, '032', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1981, '032', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1982, '032', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1983, '033', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1984, '033', 6, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1985, '033', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1986, '033', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1987, '033', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1988, '033', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1989, '033', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1990, '033', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1991, '034', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1992, '034', 6, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1993, '034', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1994, '034', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1995, '034', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1996, '034', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1997, '034', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1998, '034', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1999, '035', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2000, '035', 3, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2001, '035', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2002, '035', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2003, '035', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2004, '035', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2005, '035', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2006, '035', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2007, '041', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2008, '051', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2009, '051', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2010, '051', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2011, '051', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2012, '051', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2013, '051', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2014, '051', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2015, '051', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2016, '052', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2017, '052', 6, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2018, '052', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2019, '052', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2020, '052', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2021, '052', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2022, '052', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2023, '052', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2024, '053', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2025, '053', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2026, '053', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2027, '053', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2028, '053', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2029, '053', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2030, '053', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2031, '053', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2032, '054', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2033, '054', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2034, '054', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2035, '054', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2036, '054', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2037, '054', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2038, '054', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2039, '054', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2040, '061', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2041, '061', 6, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2042, '061', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2043, '061', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2044, '061', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2045, '061', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2046, '061', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2047, '061', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2048, '071', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2049, '071', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2050, '071', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2051, '071', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2052, '071', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2053, '071', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2054, '071', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2055, '071', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2056, '072', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2057, '072', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2058, '072', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2059, '072', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2060, '072', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2061, '072', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2062, '072', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2063, '072', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2064, '073', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2065, '073', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2066, '073', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2067, '073', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2068, '073', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2069, '073', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2070, '073', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2071, '073', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2072, '075', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2073, '075', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2074, '075', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2075, '075', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2076, '075', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2077, '075', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2078, '075', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2079, '075', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2080, '076', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2081, '076', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2082, '076', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2083, '076', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2084, '076', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2085, '076', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2086, '076', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2087, '076', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2088, '081', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2089, '081', 6, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2090, '081', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2091, '081', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2092, '091', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2093, '091', 18, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2094, '091', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2095, '091', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2096, '091', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2097, '091', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2098, '091', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2099, '091', 22, 'optional');


--
-- TOC entry 3393 (class 0 OID 24665)
-- Dependencies: 216
-- Data for Name: subjects; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.subjects (id, name) VALUES (1, 'Українська мова');
INSERT INTO public.subjects (id, name) VALUES (3, 'Іноземні мови');
INSERT INTO public.subjects (id, name) VALUES (6, 'Істроія України');
INSERT INTO public.subjects (id, name) VALUES (14, 'Математика');
INSERT INTO public.subjects (id, name) VALUES (18, 'Біологія');
INSERT INTO public.subjects (id, name) VALUES (19, 'Географія');
INSERT INTO public.subjects (id, name) VALUES (21, 'Фізика');
INSERT INTO public.subjects (id, name) VALUES (22, 'Хімія');
INSERT INTO public.subjects (id, name) VALUES (29, 'Українська мова та література');
INSERT INTO public.subjects (id, name) VALUES (999, 'Творчий конкурс');


--
-- TOC entry 3397 (class 0 OID 24689)
-- Dependencies: 220
-- Data for Name: universities; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.universities (id, name, city_id) VALUES (16, 'Львівський торговельно-економічний університет', 1);
INSERT INTO public.universities (id, name, city_id) VALUES (97, 'Національний університет "Львівська політехніка"', 1);
INSERT INTO public.universities (id, name, city_id) VALUES (160, 'Державний вищий навчальний заклад "Національний лісотехнічний університет України"', 1);
INSERT INTO public.universities (id, name, city_id) VALUES (167, 'Українська академія друкарства', 1);
INSERT INTO public.universities (id, name, city_id) VALUES (244, 'Заклад вищої освіти "Український католицький університет"', 1);
INSERT INTO public.universities (id, name, city_id) VALUES (282, 'Львівський національний університет імені Івана Франка', 1);
INSERT INTO public.universities (id, name, city_id) VALUES (41, 'Київський національний університет імені Тараса Шевченка', 2);


--
-- TOC entry 3419 (class 0 OID 0)
-- Dependencies: 211
-- Name: cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.cities_id_seq', 1, false);


--
-- TOC entry 3420 (class 0 OID 0)
-- Dependencies: 223
-- Name: coefficients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.coefficients_id_seq', 4, true);


--
-- TOC entry 3421 (class 0 OID 0)
-- Dependencies: 209
-- Name: collaborators_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.collaborators_id_seq', 1, false);


--
-- TOC entry 3422 (class 0 OID 0)
-- Dependencies: 221
-- Name: faculties_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.faculties_id_seq', 1, false);


--
-- TOC entry 3423 (class 0 OID 0)
-- Dependencies: 225
-- Name: max_min_grades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.max_min_grades_id_seq', 2, true);


--
-- TOC entry 3424 (class 0 OID 0)
-- Dependencies: 213
-- Name: specialities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.specialities_id_seq', 206, true);


--
-- TOC entry 3425 (class 0 OID 0)
-- Dependencies: 217
-- Name: specialities_subjects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.specialities_subjects_id_seq', 2099, true);


--
-- TOC entry 3426 (class 0 OID 0)
-- Dependencies: 215
-- Name: subjects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.subjects_id_seq', 1, false);


--
-- TOC entry 3427 (class 0 OID 0)
-- Dependencies: 219
-- Name: universities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.universities_id_seq', 1, false);


--
-- TOC entry 3221 (class 2606 OID 24652)
-- Name: cities cities_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);


--
-- TOC entry 3235 (class 2606 OID 24727)
-- Name: coefficients coefficients_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.coefficients
    ADD CONSTRAINT coefficients_pkey PRIMARY KEY (id);


--
-- TOC entry 3217 (class 2606 OID 24645)
-- Name: collaborators collaborators_email_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.collaborators
    ADD CONSTRAINT collaborators_email_key UNIQUE (email);


--
-- TOC entry 3219 (class 2606 OID 24643)
-- Name: collaborators collaborators_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.collaborators
    ADD CONSTRAINT collaborators_pkey PRIMARY KEY (id);


--
-- TOC entry 3233 (class 2606 OID 24710)
-- Name: faculties faculties_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.faculties
    ADD CONSTRAINT faculties_pkey PRIMARY KEY (id);


--
-- TOC entry 3237 (class 2606 OID 24746)
-- Name: max_min_grades max_min_grades_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.max_min_grades
    ADD CONSTRAINT max_min_grades_pkey PRIMARY KEY (id);


--
-- TOC entry 3223 (class 2606 OID 24663)
-- Name: specialities specialities_code_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.specialities
    ADD CONSTRAINT specialities_code_key UNIQUE (code);


--
-- TOC entry 3225 (class 2606 OID 24661)
-- Name: specialities specialities_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.specialities
    ADD CONSTRAINT specialities_pkey PRIMARY KEY (id);


--
-- TOC entry 3229 (class 2606 OID 24677)
-- Name: specialities_subjects specialities_subjects_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.specialities_subjects
    ADD CONSTRAINT specialities_subjects_pkey PRIMARY KEY (id);


--
-- TOC entry 3227 (class 2606 OID 24670)
-- Name: subjects subjects_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subjects_pkey PRIMARY KEY (id);


--
-- TOC entry 3231 (class 2606 OID 24696)
-- Name: universities universities_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.universities
    ADD CONSTRAINT universities_pkey PRIMARY KEY (id);


--
-- TOC entry 3244 (class 2606 OID 24733)
-- Name: coefficients coefficients_faculty_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.coefficients
    ADD CONSTRAINT coefficients_faculty_id_fkey FOREIGN KEY (faculty_id) REFERENCES public.faculties(id);


--
-- TOC entry 3243 (class 2606 OID 24728)
-- Name: coefficients coefficients_subject_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.coefficients
    ADD CONSTRAINT coefficients_subject_id_fkey FOREIGN KEY (subject_id) REFERENCES public.subjects(id);


--
-- TOC entry 3242 (class 2606 OID 24716)
-- Name: faculties faculties_speciality_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.faculties
    ADD CONSTRAINT faculties_speciality_code_fkey FOREIGN KEY (speciality_code) REFERENCES public.specialities(code);


--
-- TOC entry 3241 (class 2606 OID 24711)
-- Name: faculties faculties_university_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.faculties
    ADD CONSTRAINT faculties_university_id_fkey FOREIGN KEY (university_id) REFERENCES public.universities(id);


--
-- TOC entry 3245 (class 2606 OID 24747)
-- Name: max_min_grades max_min_grades_faculty_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.max_min_grades
    ADD CONSTRAINT max_min_grades_faculty_id_fkey FOREIGN KEY (faculty_id) REFERENCES public.faculties(id);


--
-- TOC entry 3246 (class 2606 OID 24752)
-- Name: max_min_grades max_min_grades_speciality_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.max_min_grades
    ADD CONSTRAINT max_min_grades_speciality_code_fkey FOREIGN KEY (speciality_code) REFERENCES public.specialities(code);


--
-- TOC entry 3238 (class 2606 OID 24678)
-- Name: specialities_subjects specialities_subjects_speciality_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.specialities_subjects
    ADD CONSTRAINT specialities_subjects_speciality_code_fkey FOREIGN KEY (speciality_code) REFERENCES public.specialities(code);


--
-- TOC entry 3239 (class 2606 OID 24683)
-- Name: specialities_subjects specialities_subjects_subject_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.specialities_subjects
    ADD CONSTRAINT specialities_subjects_subject_id_fkey FOREIGN KEY (subject_id) REFERENCES public.subjects(id);


--
-- TOC entry 3240 (class 2606 OID 24697)
-- Name: universities universities_city_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.universities
    ADD CONSTRAINT universities_city_id_fkey FOREIGN KEY (city_id) REFERENCES public.cities(id);


-- Completed on 2023-01-02 21:57:55

--
-- PostgreSQL database dump complete
--

