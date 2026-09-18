--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: data; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.data (
    description character varying(30),
    data_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.data OWNER TO freecodecamp;

--
-- Name: data_data_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.data_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.data_data_id_seq OWNER TO freecodecamp;

--
-- Name: data_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.data_data_id_seq OWNED BY public.data.data_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years numeric,
    galaxy_type character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    description text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    description text,
    has_life boolean,
    is_spherical boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: data data_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.data ALTER COLUMN data_id SET DEFAULT nextval('public.data_data_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: data; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.data VALUES ('efwrgr', 1, 'ddwf');
INSERT INTO public.data VALUES ('efwrgr', 2, 'ddwwwf');
INSERT INTO public.data VALUES ('efwrgr', 3, 'ddwdfwf');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (5, 'Milkway', 'la nostra galassia', 23333, 'boh');
INSERT INTO public.galaxy VALUES (6, 'way', ' galassia', 23333, 'boh');
INSERT INTO public.galaxy VALUES (7, 'aawy', ' gsia', 23333, 'bh');
INSERT INTO public.galaxy VALUES (8, 'wy', ' ssia', 233, 'b');
INSERT INTO public.galaxy VALUES (9, 'w', ' gaia', 233, 'bh');
INSERT INTO public.galaxy VALUES (10, 'y', ' gssia', 2333, 'h');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (6, 'alfa', 3533728, 'dbwsjwosoqomos', 11);
INSERT INTO public.moon VALUES (7, 'aa', 3533728, 'dbwsjwosoqomos', 12);
INSERT INTO public.moon VALUES (8, 'ala', 3533728, 'dbwsjwosoqomos', 11);
INSERT INTO public.moon VALUES (9, 'bbb', 3533728, 'dbwsjwosoqomos', 10);
INSERT INTO public.moon VALUES (10, 'ddd', 3533728, 'dbwsjwosoqomos', 8);
INSERT INTO public.moon VALUES (11, 'ggdgg', 3533728, 'dbwsjwosoqomos', 8);
INSERT INTO public.moon VALUES (12, 'sggddd', 3533728, 'dbwsjwosoqomos', 8);
INSERT INTO public.moon VALUES (13, 'jd', 3533728, 'dbwsjwosoqomos', 9);
INSERT INTO public.moon VALUES (14, 'deegdd', 3533728, 'dbwsjwosoqomos', 11);
INSERT INTO public.moon VALUES (15, 'drgrhsdd', 3533728, 'dbwsjwosoqomos', 9);
INSERT INTO public.moon VALUES (16, 'dyj6jdd', 3533728, 'dbwsjwosoqomos', 8);
INSERT INTO public.moon VALUES (17, 'alrshhfa', 3533728, 'dbwsjwosoqomos', 11);
INSERT INTO public.moon VALUES (18, 'asrhha', 3533728, 'dbwsjwosoqomos', 12);
INSERT INTO public.moon VALUES (19, 'alhrsha', 3533728, 'dbwsjwosoqomos', 11);
INSERT INTO public.moon VALUES (20, 'hhbbb', 3533728, 'dbwsjwosoqomos', 10);
INSERT INTO public.moon VALUES (21, 'dd4wyd', 3533728, 'dbwsjwosoqomos', 8);
INSERT INTO public.moon VALUES (22, 'grhhg', 3533728, 'dbwsjwosoqomos', 8);
INSERT INTO public.moon VALUES (23, 'sgd', 3533728, 'dbwsjwosoqomos', 8);
INSERT INTO public.moon VALUES (24, 'jurjd', 3533728, 'dbwsjwosoqomos', 9);
INSERT INTO public.moon VALUES (25, 'deed', 3533728, 'dbwsjwosoqomos', 11);
INSERT INTO public.moon VALUES (26, 'dhsdd', 3533728, 'dbwsjwosoqomos', 9);
INSERT INTO public.moon VALUES (27, 'dydd', 3533728, 'dbwsjwosoqomos', 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'an', 68688, 'woqxllx', true, true, 7);
INSERT INTO public.planet VALUES (3, 'abb', 68688, 'woqxllx', true, true, 9);
INSERT INTO public.planet VALUES (4, 'ccccn', 68688, 'woqxllx', true, false, 8);
INSERT INTO public.planet VALUES (5, 'accc', 68688, 'woqxllx', true, true, 10);
INSERT INTO public.planet VALUES (6, 'adddd', 68688, 'woqxllx', true, true, 7);
INSERT INTO public.planet VALUES (7, 'ddff', 68688, 'woqxllx', true, true, 11);
INSERT INTO public.planet VALUES (8, 'affff', 68688, 'woqxllx', true, true, 11);
INSERT INTO public.planet VALUES (9, 'allllln', 68688, 'woqxllx', true, true, 9);
INSERT INTO public.planet VALUES (10, 'kkkkkan', 68688, 'woqxllx', true, true, 10);
INSERT INTO public.planet VALUES (11, 'nnnnan', 68688, 'woqxllx', true, true, 9);
INSERT INTO public.planet VALUES (12, 'avvvv', 68688, 'woqxllx', true, true, 7);
INSERT INTO public.planet VALUES (13, 'ahhhn', 68688, 'woqxllx', true, true, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (7, 'aa', 'bbbbb', 82282, 5);
INSERT INTO public.star VALUES (8, 'bbbb', 'bccccb', 882, 6);
INSERT INTO public.star VALUES (9, 'ccc', 'bddd0', 82, 7);
INSERT INTO public.star VALUES (10, 'ddd', 'bbb', 822, 8);
INSERT INTO public.star VALUES (11, 'fff', 'bbbbb', 8282, 9);
INSERT INTO public.star VALUES (12, 'ggg', 'bbbbb', 822, 10);


--
-- Name: data_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.data_data_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 10, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 27, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: data data_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.data
    ADD CONSTRAINT data_name_key UNIQUE (name);


--
-- Name: data data_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.data
    ADD CONSTRAINT data_pkey PRIMARY KEY (data_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

