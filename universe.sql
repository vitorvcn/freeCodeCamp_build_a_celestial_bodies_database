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
    name character varying(20),
    description text,
    age_in_millions_of_years integer NOT NULL,
    galaxy_type character varying(20)
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
-- Name: life; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.life (
    life_id integer NOT NULL,
    name character varying(20) NOT NULL,
    type_of_life character varying(20)
);


ALTER TABLE public.life OWNER TO freecodecamp;

--
-- Name: life_life_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.life_life_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.life_life_id_seq OWNER TO freecodecamp;

--
-- Name: life_life_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.life_life_id_seq OWNED BY public.life.life_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20),
    description text,
    planet_id integer NOT NULL,
    age_in_millions_of_years integer NOT NULL
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
    name character varying(20),
    description text,
    has_water boolean,
    has_life boolean,
    star_id integer NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric(4,2)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_life; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_life (
    planet_id integer NOT NULL,
    life_id integer NOT NULL,
    planet_life_id integer NOT NULL,
    name character varying(20)
);


ALTER TABLE public.planet_life OWNER TO freecodecamp;

--
-- Name: planet_life_planet_life_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_life_planet_life_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_life_planet_life_id_seq OWNER TO freecodecamp;

--
-- Name: planet_life_planet_life_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_life_planet_life_id_seq OWNED BY public.planet_life.planet_life_id;


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
    name character varying(20),
    description text,
    galaxy_id integer NOT NULL,
    age_in_millions_of_years integer NOT NULL
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: life life_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life ALTER COLUMN life_id SET DEFAULT nextval('public.life_life_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_life planet_life_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_life ALTER COLUMN planet_life_id SET DEFAULT nextval('public.planet_life_planet_life_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Eldoria', 'A large spiral galaxy with numerous arms filled with young stars.', 5000, 'Spiral');
INSERT INTO public.galaxy VALUES (2, 'Zarnov', 'Compact elliptical galaxy with a dense core and an ancient star population', 10000, 'Elliptical');
INSERT INTO public.galaxy VALUES (3, 'Thaloria', 'An irregular dwarf galaxy with a distorted shape and several star-forming regions.', 3000, 'Irregular');
INSERT INTO public.galaxy VALUES (4, 'Velarion', 'A lenticular galaxy with features of both spiral and elliptical galaxies, know for its flat stellar disk', 7500, 'Lenticular');
INSERT INTO public.galaxy VALUES (5, 'Kelyron', 'A barred spiral galaxy with a prominent central bar and spiral arms extending outward.', 6000, 'Barred Spiral');
INSERT INTO public.galaxy VALUES (6, 'Draconis', 'A giant elliptical galaxy, famous for its vast regions of interstellar gas and ancient globular clusters.', 12000, 'Elliptical');


--
-- Data for Name: life; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.life VALUES (1, 'Human', 'Animal');
INSERT INTO public.life VALUES (2, 'Vegetables', 'Plant');
INSERT INTO public.life VALUES (3, 'Mushroom', 'Fungi');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Lumis', 'A small, icy moon with a reclective surface and occasional geysers of frozen gases.', 1, 80);
INSERT INTO public.moon VALUES (2, 'Noctis', 'A rocky moon with a dark surface and many craters, showing evidence of ancient impacts.', 1, 120);
INSERT INTO public.moon VALUES (3, 'Galea', 'A large, gaseous moon with a thick atmosphere and swirling cloud formations.', 2, 200);
INSERT INTO public.moon VALUES (4, 'Tempestus', 'A rocky, stormy moon with frequent atmospheric disturbances and lightning storms.', 2, 250);
INSERT INTO public.moon VALUES (5, 'Volcanis', 'A volvanic moon with active lava flows and a harsh, sulfuric atmosphere.', 3, 3000);
INSERT INTO public.moon VALUES (6, 'Ignis', 'A small, rocky moon with a surface covered in volcanic rocks and ash.', 3, 4500);
INSERT INTO public.moon VALUES (7, 'Glacia', 'A frozen moon with a surface covered in ice and occasional ice geysers.', 4, 4000);
INSERT INTO public.moon VALUES (8, 'Borealis', 'A small, icy moon with bright auroras and a thin, icy crust.', 4, 5500);
INSERT INTO public.moon VALUES (9, 'Verdantia', 'A lush moon with abundant forests, rivers and a temperate climate.', 5, 600);
INSERT INTO public.moon VALUES (10, 'Sylvanus', 'A forested moon with diverse flora and fauna, orbiting close to lumina.', 5, 800);
INSERT INTO public.moon VALUES (11, 'Solis', 'A barren, desert moon with high temperatures and shifting sands.', 6, 1000);
INSERT INTO public.moon VALUES (12, 'Aridus', 'A rocky, desolate moon with extreme temperatures and minimal atmospheric activity.', 6, 1500);
INSERT INTO public.moon VALUES (13, 'Verdantus', 'A green, lush moon with fertile soil and extensive plant life.', 7, 1000);
INSERT INTO public.moon VALUES (14, 'Arboris', 'A moon with dense forests and large, ancient trees.', 7, 1500);
INSERT INTO public.moon VALUES (15, 'Frigus', 'A cold, icy moon with polar ice caps and frozen surfaces.', 8, 2000);
INSERT INTO public.moon VALUES (16, 'Glacius', 'A moon with a thick ice layer and occasional ice quakes.', 8, 3500);
INSERT INTO public.moon VALUES (17, 'Emeralda', 'A vibrant, green moon with lush vegetation and several samll lakes.', 9, 800);
INSERT INTO public.moon VALUES (18, 'Citrina', 'A moon with a yellowish surface and sparse plant life.', 9, 1200);
INSERT INTO public.moon VALUES (19, 'Obsidian', 'A dark, rocky moon with a surface of volcanic glass and few craters.', 10, 1500);
INSERT INTO public.moon VALUES (20, 'Nimbus', 'A small, rocky moon with a thin atmosphere and occasional meteor showers.', 10, 2000);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Aetheris', 'A rocky planet with a thin atmosphere and large plains of crystallized minerals.', true, false, 1, 150, 90.00);
INSERT INTO public.planet VALUES (2, 'Zephyra', 'A gas giant with a thick atmosphere of hydrogen and helium, known for its strong winds and storm systems.', false, false, 1, 300, 12.00);
INSERT INTO public.planet VALUES (3, 'Pyralis', 'A rocky, volcanic planet with frequent eruptions and a sulfuric atmosphere.', false, false, 2, 4000, 30.00);
INSERT INTO public.planet VALUES (4, 'Celestia', 'A frozen, icy world with vast ice plains and a thin atmosphere.', true, false, 2, 6000, 30.00);
INSERT INTO public.planet VALUES (5, 'Lumina', 'A temperate, rocky planet with diverse landscapes including oceans, forests, and mountains.', true, true, 3, 800, 15.00);
INSERT INTO public.planet VALUES (6, 'Xeros', 'A desert world with extreme temperatures and occasional sandstorms.', false, false, 3, 1200, 15.00);
INSERT INTO public.planet VALUES (7, 'Auron', 'A rocky planet with a stable climate and expansive grasslands.', true, true, 4, 2500, 20.00);
INSERT INTO public.planet VALUES (8, 'Dracos', 'A cold, rocky planet with polar ice caps and minimal atmospheric activity.', true, false, 4, 6000, 20.00);
INSERT INTO public.planet VALUES (9, 'Veridian', 'A lush, green planet with rich vegetation and a mild climate.', true, true, 5, 1500, 25.00);
INSERT INTO public.planet VALUES (10, 'Pyxis', 'A rocky, barren planet with a sparse atmosphere and frequent meteor impacts.', false, false, 5, 2500, 25.00);
INSERT INTO public.planet VALUES (11, 'Regalus', 'A rocky planet with ancient mountain ranges and vast desert regions.', false, false, 6, 7000, 35.00);
INSERT INTO public.planet VALUES (12, 'Elysia', 'A lush, ocean-covered planet with a warm climate and abundant marine life.', true, true, 6, 8000, 35.00);


--
-- Data for Name: planet_life; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_life VALUES (5, 1, 1, 'Luminian');
INSERT INTO public.planet_life VALUES (7, 1, 2, 'Auronian');
INSERT INTO public.planet_life VALUES (9, 1, 3, 'Veridianian');
INSERT INTO public.planet_life VALUES (12, 1, 4, 'Elysianian');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Solara', 'A bright, young star located in one of the outer arms of the Eldoria Galaxy, known for its high luminosity and intense solar flares.', 1, 200);
INSERT INTO public.star VALUES (2, 'Antares Z', 'A massive, ancient red giant star at the core of the Zarnov Galaxy, characterized by its deep red color and immense size.', 2, 9500);
INSERT INTO public.star VALUES (3, 'Novara', 'A variable star in the Thaloria Galary, noted for its irregular brightness chanfes and location within a dense star cluster.', 3, 1000);
INSERT INTO public.star VALUES (4, 'Luminara', 'A stable, middle-aged star in the Velarion Galaxy, known for its steady output and surrounding planetary system.', 4, 4500);
INSERT INTO public.star VALUES (5, 'Polaris K', 'A prominent, pulsating star located near the central bar of the Kelyron Galaxy, recognized for its rhythmic brightness variantions.', 5, 3000);
INSERT INTO public.star VALUES (6, 'Titanis', 'An ancient white dwarf star in the Draconis Galaxy, known for its high density and the remnents of its former planetary nebula.', 6, 11000);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: life_life_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.life_life_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_life_planet_life_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_life_planet_life_id_seq', 4, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: life life_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life
    ADD CONSTRAINT life_pkey PRIMARY KEY (life_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet_life planet_life_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_life
    ADD CONSTRAINT planet_life_pkey PRIMARY KEY (planet_life_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_id UNIQUE (galaxy_id);


--
-- Name: life unique_life_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life
    ADD CONSTRAINT unique_life_id UNIQUE (life_id);


--
-- Name: moon unique_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_id UNIQUE (moon_id);


--
-- Name: planet unique_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_id UNIQUE (planet_id);


--
-- Name: planet_life unique_planet_life_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_life
    ADD CONSTRAINT unique_planet_life_id UNIQUE (planet_life_id);


--
-- Name: star unique_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_id UNIQUE (star_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet_life fk_life_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_life
    ADD CONSTRAINT fk_life_id FOREIGN KEY (life_id) REFERENCES public.life(life_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet_life fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_life
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

