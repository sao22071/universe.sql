--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text NOT NULL,
    distance_from_earth_in_light_years integer,
    age_in_million_years integer
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
    name character varying(60) NOT NULL,
    description text NOT NULL,
    diameter_km integer,
    surface_temp_kelvin integer,
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
    name character varying(60) NOT NULL,
    description text NOT NULL,
    mass numeric(20,2),
    is_habitable boolean,
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
    name character varying(60) NOT NULL,
    description text NOT NULL,
    is_binary boolean,
    radius integer,
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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


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
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'Halley''s Comet', 'A short-period comet visible from Earth every 75–76 years');
INSERT INTO public.comet VALUES (2, 'Comet Hale-Bopp', 'One of the most widely observed comets of the 20th century');
INSERT INTO public.comet VALUES (3, 'Comet NEOWISE', 'A comet discovered in March 2020 that became visible to the naked eye');
INSERT INTO public.comet VALUES (4, 'Comet Shoemaker-Levy 9', 'A comet that famously broke apart and collided with Jupiter in 1994');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', 0, 13600);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Nearest major galaxy', 2537000, 10000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Distant spiral galaxy', 3000000, 9000);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Famous interacting galaxy', 23000000, 450);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Unusual spiral galaxy', 29000000, 800);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 'Large spiral galaxy', 21000000, 1400);
INSERT INTO public.galaxy VALUES (7, 'Cartwheel', 'Distorted galaxy', 500000, 150);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Earths natural satellite', 3474, 250, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 'One of Mars moons', 22, 233, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 'One of Mars moons', 12, 233, 2);
INSERT INTO public.moon VALUES (4, 'Europa', 'Moon of Jupiter with a subsurface ocean', 3121, 102, 3);
INSERT INTO public.moon VALUES (5, 'Ganymede', 'Largest moon in the Solar System', 5268, 110, 3);
INSERT INTO public.moon VALUES (6, 'Callisto', 'Heavily cratered moon of Jupiter', 4820, 134, 4);
INSERT INTO public.moon VALUES (7, 'Titan', 'Largest moon of Saturn, has a thick atmosphere', 5150, 94, 4);
INSERT INTO public.moon VALUES (8, 'Enceladus', 'Moon of Saturn with icy geysers', 504, 75, 5);
INSERT INTO public.moon VALUES (9, 'Triton', 'Largest moon of Neptune', 2706, 38, 5);
INSERT INTO public.moon VALUES (10, 'Oberon', 'One of Uranus moons', 1523, 60, 6);
INSERT INTO public.moon VALUES (11, 'Titania', 'Largest moon of Uranus', 1576, 60, 6);
INSERT INTO public.moon VALUES (12, 'Rhea', 'Second-largest moon of Saturn', 1528, 99, 7);
INSERT INTO public.moon VALUES (13, 'Iapetus', 'Moon of Saturn with a distinctive two-tone coloration', 1469, 130, 8);
INSERT INTO public.moon VALUES (14, 'Oberon II', 'Another name for Oberon', 1523, 60, 8);
INSERT INTO public.moon VALUES (15, 'Miranda', 'Smallest of Uranus major moons', 471, 60, 9);
INSERT INTO public.moon VALUES (16, 'Ariel', 'Fourth-largest moon of Uranus', 1158, 60, 9);
INSERT INTO public.moon VALUES (17, 'Umbriel', 'Moon of Uranus', 1169, 60, 10);
INSERT INTO public.moon VALUES (18, 'Dione', 'Moon of Saturn', 1122, 105, 11);
INSERT INTO public.moon VALUES (19, 'Tethys', 'Moon of Saturn with a large crater', 1060, 86, 11);
INSERT INTO public.moon VALUES (20, 'Himalia', 'One of Jupiters irregular moons', 170, 124, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Proxima b', 'Closest exoplanet to Earth', 1.27, true, 1);
INSERT INTO public.planet VALUES (2, 'Alpha Centauri Bb', 'Orbiting Alpha Centauri B', 1.10, false, 2);
INSERT INTO public.planet VALUES (3, 'Betelgeuse I', 'First planet of Betelgeuse', 3.65, false, 3);
INSERT INTO public.planet VALUES (4, 'Sirius A I', 'First planet of Sirius A', 2.18, true, 4);
INSERT INTO public.planet VALUES (5, 'Sirius B I', 'White dwarf companion planet', 0.45, false, 5);
INSERT INTO public.planet VALUES (6, 'Vega I', 'Orbiting Vega', 5.60, true, 6);
INSERT INTO public.planet VALUES (7, 'Proxima c', 'Second exoplanet of Proxima Centauri', 1.70, false, 1);
INSERT INTO public.planet VALUES (8, 'Rigel I', 'First planet of Rigel', 6.35, true, 8);
INSERT INTO public.planet VALUES (9, 'Polaris B', 'Orbiting the North Star', 4.20, false, 9);
INSERT INTO public.planet VALUES (10, 'Altair I', 'First planet of Altair', 2.90, true, 10);
INSERT INTO public.planet VALUES (11, 'Betelgeuse II', 'Second planet of Betelgeuse', 2.75, false, 3);
INSERT INTO public.planet VALUES (12, 'Vega II', 'Second planet of Vega', 4.10, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpha Centauri A', 'Part of a binary star system', true, 695700, 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri B', 'Companion to Alpha Centauri A', true, 602700, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'Red supergiant star in Orion', false, 887000, 2);
INSERT INTO public.star VALUES (4, 'Sirius A', 'Brightest star in the night sky', true, 1189640, 3);
INSERT INTO public.star VALUES (5, 'Sirius B', 'White dwarf companion to Sirius A', true, 5900, 3);
INSERT INTO public.star VALUES (6, 'Vega', 'Part of the Lyra constellation', false, 1240000, 4);
INSERT INTO public.star VALUES (7, 'Proxima Centauri', 'Closest known star to the Sun', true, 106000, 1);
INSERT INTO public.star VALUES (8, 'Rigel', 'Blue supergiant star in Orion', false, 786000, 2);
INSERT INTO public.star VALUES (9, 'Polaris', 'North Star', false, 3850000, 5);
INSERT INTO public.star VALUES (10, 'Altair', 'Bright star in the Aquila constellation', false, 1002000, 6);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: comet comet_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_id_unique UNIQUE (comet_id);


--
-- Name: comet comet_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pk PRIMARY KEY (comet_id);


--
-- Name: galaxy galaxy_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_unique UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_unique UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_unique UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_unique UNIQUE (star_id);


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

