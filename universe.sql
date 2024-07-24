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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    description text NOT NULL,
    haslife boolean NOT NULL
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
    name character varying(255) NOT NULL,
    possibility_of_has_life numeric(5,2) NOT NULL,
    description text NOT NULL,
    haswater boolean NOT NULL,
    planet_id integer NOT NULL
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
    name character varying(255) NOT NULL,
    haslife boolean NOT NULL,
    planet_types character varying(255) NOT NULL,
    distance_from_earth_in_km integer NOT NULL,
    description text NOT NULL,
    star_id integer NOT NULL
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
    name character varying(255) NOT NULL,
    ages_in_millions_of_years integer NOT NULL,
    description text NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: version; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.version (
    version_id integer NOT NULL,
    author character varying(255) NOT NULL,
    description text NOT NULL,
    name character varying(255)
);


ALTER TABLE public.version OWNER TO freecodecamp;

--
-- Name: version_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.version_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.version_id_seq OWNER TO freecodecamp;

--
-- Name: version_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.version_id_seq OWNED BY public.version.version_id;


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
-- Name: version version_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.version ALTER COLUMN version_id SET DEFAULT nextval('public.version_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 10000, 'A large spiral galaxy', true);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 13500, 'The galaxy containing our Solar System', true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 3000, 'A small spiral galaxy', false);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 6000, 'A spiral galaxy interacting with a companion galaxy', false);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 9000, 'A galaxy with a bright nucleus and a large central bulge', false);
INSERT INTO public.galaxy VALUES (6, 'Black Eye', 4000, 'A galaxy with a dark band of absorbing dust in front of its bright nucleus', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 0.00, 'The Earths only natural satellite.', false, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 0.00, 'A moon of Mars, irregular in shape.', false, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 0.00, 'The smaller moon of Mars.', false, 4);
INSERT INTO public.moon VALUES (4, 'Io', 0.00, 'The most volcanically active body in the Solar System.', false, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 80.00, 'A moon of Jupiter with a subsurface ocean.', true, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 0.00, 'The largest moon in the Solar System.', false, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 0.00, 'A heavily cratered moon of Jupiter.', false, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 90.00, 'A moon of Saturn with a thick atmosphere.', true, 6);
INSERT INTO public.moon VALUES (9, 'Rhea', 0.00, 'The second-largest moon of Saturn.', false, 6);
INSERT INTO public.moon VALUES (10, 'Iapetus', 0.00, 'A moon of Saturn with a distinctive two-tone coloration.', false, 6);
INSERT INTO public.moon VALUES (11, 'Miranda', 0.00, 'A moon of Uranus with extreme geological features.', false, 7);
INSERT INTO public.moon VALUES (12, 'Titania', 0.00, 'The largest moon of Uranus.', false, 7);
INSERT INTO public.moon VALUES (13, 'Oberon', 0.00, 'The second-largest moon of Uranus.', false, 7);
INSERT INTO public.moon VALUES (14, 'Triton', 0.00, 'The largest moon of Neptune, with geysers.', false, 8);
INSERT INTO public.moon VALUES (15, 'Charon', 0.00, 'The largest moon of Pluto.', false, 9);
INSERT INTO public.moon VALUES (16, 'Nix', 0.00, 'A small moon of Pluto.', false, 9);
INSERT INTO public.moon VALUES (17, 'Hydra', 0.00, 'A small moon of Pluto.', false, 9);
INSERT INTO public.moon VALUES (18, 'Kepler-22b I', 50.00, 'A moon of the exoplanet Kepler-22b.', true, 11);
INSERT INTO public.moon VALUES (19, 'Proxima b I', 70.00, 'A moon of the exoplanet Proxima b.', true, 10);
INSERT INTO public.moon VALUES (20, 'TRAPPIST-1e I', 60.00, 'A moon of the exoplanet TRAPPIST-1e.', true, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, 'Terrestrial', 57900, 'The smallest planet in the Solar System.', 1);
INSERT INTO public.planet VALUES (2, 'Venus', false, 'Terrestrial', 108200, 'The hottest planet in the Solar System.', 1);
INSERT INTO public.planet VALUES (3, 'Earth', true, 'Terrestrial', 149600, 'The only planet known to support life.', 1);
INSERT INTO public.planet VALUES (4, 'Mars', false, 'Terrestrial', 227900, 'Known as the Red Planet.', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 'Gas Giant', 778300, 'The largest planet in the Solar System.', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 'Gas Giant', 1427000, 'Famous for its ring system.', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', false, 'Ice Giant', 2871000, 'An ice giant with a tilted axis.', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', false, 'Ice Giant', 4495000, 'Known for its deep blue color.', 1);
INSERT INTO public.planet VALUES (9, 'Pluto', false, 'Dwarf Planet', 5906000, 'Reclassified as a dwarf planet.', 1);
INSERT INTO public.planet VALUES (10, 'Proxima b', true, 'Terrestrial', 40140, 'An exoplanet in the Proxima Centauri system.', 2);
INSERT INTO public.planet VALUES (11, 'Kepler-22b', false, 'Super-Earth', 58700, 'An exoplanet in the habitable zone of its star.', 2);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1e', true, 'Terrestrial', 39400, 'An exoplanet in the TRAPPIST-1 system.', 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 200, 'The brightest star in the night sky', 2);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 8500, 'A red supergiant star', 2);
INSERT INTO public.star VALUES (3, 'Rigel', 8600, 'A blue supergiant star', 2);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 5000, 'The closest known star to the Sun', 2);
INSERT INTO public.star VALUES (5, 'Vega', 450, 'The fifth-brightest star in the night sky', 2);
INSERT INTO public.star VALUES (6, 'Altair', 1500, 'The twelfth-brightest star in the night sky', 2);


--
-- Data for Name: version; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.version VALUES (1, 'John', 'Fisrt beta.', 'Beta');
INSERT INTO public.version VALUES (2, 'Musk', 'Update it', 'Beta2');
INSERT INTO public.version VALUES (3, 'Bill', 'Fix bug', 'Beta3');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: version_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.version_id_seq', 3, true);


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
-- Name: version unique_description; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.version
    ADD CONSTRAINT unique_description UNIQUE (description);


--
-- Name: version version_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.version
    ADD CONSTRAINT version_pkey PRIMARY KEY (version_id);


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

