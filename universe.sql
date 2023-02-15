--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    origin_of_name text NOT NULL,
    galaxy_type character varying(30) NOT NULL,
    age_in_billion_years_old numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_regular_orbit boolean NOT NULL,
    planet_id integer NOT NULL,
    discovery_date character varying(30)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    moon_present boolean NOT NULL,
    diameter_in_km integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    surface_temperature_in_kelvin integer NOT NULL,
    galaxy_id integer NOT NULL,
    brightness_magnitude numeric
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: zodiac; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.zodiac (
    zodiac_id integer NOT NULL,
    name character varying(30) NOT NULL,
    solar_stay_period_in_days integer NOT NULL
);


ALTER TABLE public.zodiac OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 'This name is derived from the constellation Andromeda, in which the galaxy is located. The constellation is named after the mythical princess Andromeda in Greek mythology.', 'Spiral Galaxy', 9.5);
INSERT INTO public.galaxy VALUES (2, 'Black Eye Galaxy', 'The galaxy has a bright central region surrounded by a large, dark band of dust that creates the appearance of a black eye and hence is named after its appearance.', 'Barred Spiral Galaxy', 17);
INSERT INTO public.galaxy VALUES (3, 'Cigar Galaxy', 'It is named because of its elongated, cigar-like appearance.', 'Starburst Galaxy', 12);
INSERT INTO public.galaxy VALUES (4, 'Milky Way Galaxy', 'This name was chosen because the galaxy appears as a milky band of light stretching across the night sky.', 'Barred Spiral Galaxy', 13.5);
INSERT INTO public.galaxy VALUES (5, 'Sombrero Galaxy', 'The name was chosen because the galaxy shape, when viewed from Earth, resembles a wide-brimmed hat which is call Sombrero in Spanish.', 'Barred Spiral Galaxy', 13);
INSERT INTO public.galaxy VALUES (6, 'Triangulum Galaxy', 'It is named after its appearance, which is shaped like a triangle.', 'Barred Spiral Galaxy', 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Ananke', false, 4, '14-08-1951');
INSERT INTO public.moon VALUES (2, 'Ariel', true, 11, '24-10-1851');
INSERT INTO public.moon VALUES (3, 'Atlas', true, 10, '15-09-1980');
INSERT INTO public.moon VALUES (4, 'Belinda', true, 11, '11-02-1986');
INSERT INTO public.moon VALUES (5, 'Caliban', false, 11, '13-09-1997');
INSERT INTO public.moon VALUES (6, 'Carme', true, 4, '15-08-1938');
INSERT INTO public.moon VALUES (7, 'Charon', true, 8, '22-06-1978');
INSERT INTO public.moon VALUES (8, 'Deimos', false, 5, '12-08-1877');
INSERT INTO public.moon VALUES (9, 'Despina', true, 7, '14-07-1989');
INSERT INTO public.moon VALUES (10, 'Eurydome', false, 4, '01-09-2003');
INSERT INTO public.moon VALUES (11, 'Helene', true, 10, '02-10-1980');
INSERT INTO public.moon VALUES (12, 'Io', false, 4, '07-01-1610');
INSERT INTO public.moon VALUES (13, 'Kiviuq', false, 10, '15-09-2000');
INSERT INTO public.moon VALUES (14, 'Moon', true, 1, NULL);
INSERT INTO public.moon VALUES (15, 'Nix', false, 8, '15-05-2005');
INSERT INTO public.moon VALUES (16, 'Phobos', false, 5, '17-08-1877');
INSERT INTO public.moon VALUES (17, 'Sao', false, 7, '05-09-2000');
INSERT INTO public.moon VALUES (18, 'Styx', false, 8, '11-07-2012');
INSERT INTO public.moon VALUES (19, 'Triton', true, 7, '10-10-1846');
INSERT INTO public.moon VALUES (20, 'Umbriel', false, 11, '24-10-1851');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 6, true, 12742);
INSERT INTO public.planet VALUES (2, 'Epsilon Eridani b', 1, false, 12740);
INSERT INTO public.planet VALUES (3, 'Fomalhaut b', 2, false, 120000);
INSERT INTO public.planet VALUES (4, 'Jupiter', 6, true, 139822);
INSERT INTO public.planet VALUES (5, 'Mars', 6, true, 6792);
INSERT INTO public.planet VALUES (6, 'Mercury', 6, false, 4880);
INSERT INTO public.planet VALUES (7, 'Neptune', 6, true, 49244);
INSERT INTO public.planet VALUES (8, 'Pluto', 6, true, 2377);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', 3, false, 14000);
INSERT INTO public.planet VALUES (10, 'Saturn', 6, true, 116460);
INSERT INTO public.planet VALUES (11, 'Uranus', 6, true, 50724);
INSERT INTO public.planet VALUES (12, 'Venus', 6, false, 12104);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Epsilon Eridani', 5400, 2, 3.7);
INSERT INTO public.star VALUES (2, 'Fomalhaut', 8400, 1, 1.16);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 3042, 5, 11.05);
INSERT INTO public.star VALUES (4, 'Rigel', 12100, 6, 0.18);
INSERT INTO public.star VALUES (5, 'Sirius', 9940, 3, -1.46);
INSERT INTO public.star VALUES (6, 'Sun', 5500, 4, -26.7);


--
-- Data for Name: zodiac; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.zodiac VALUES (1, 'Aquarius', 24);
INSERT INTO public.zodiac VALUES (2, 'Aries', 25);
INSERT INTO public.zodiac VALUES (3, 'Cancer', 20);
INSERT INTO public.zodiac VALUES (4, 'Capricornus', 28);
INSERT INTO public.zodiac VALUES (5, 'Gemini', 31);
INSERT INTO public.zodiac VALUES (6, 'Leo', 37);
INSERT INTO public.zodiac VALUES (7, 'Libra', 23);
INSERT INTO public.zodiac VALUES (8, 'Ophiuchus', 18);
INSERT INTO public.zodiac VALUES (9, 'Pisces', 38);
INSERT INTO public.zodiac VALUES (10, 'Sagittarius', 32);
INSERT INTO public.zodiac VALUES (11, 'Scorpius', 7);
INSERT INTO public.zodiac VALUES (12, 'Taurus', 37);
INSERT INTO public.zodiac VALUES (13, 'Virgo', 45);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: zodiac zodiac_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.zodiac
    ADD CONSTRAINT zodiac_pkey PRIMARY KEY (zodiac_id);


--
-- Name: zodiac zodiac_zodiac_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.zodiac
    ADD CONSTRAINT zodiac_zodiac_id_key UNIQUE (zodiac_id);


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

