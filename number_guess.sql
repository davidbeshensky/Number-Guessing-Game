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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games_data; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games_data (
    game_id integer NOT NULL,
    score integer,
    user_id integer
);


ALTER TABLE public.games_data OWNER TO freecodecamp;

--
-- Name: games_data_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_data_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_data_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_data_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_data_game_id_seq OWNED BY public.games_data.game_id;


--
-- Name: user_data; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.user_data (
    user_id integer NOT NULL,
    user_name character varying(22) NOT NULL
);


ALTER TABLE public.user_data OWNER TO freecodecamp;

--
-- Name: user_data_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.user_data_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_data_user_id_seq OWNER TO freecodecamp;

--
-- Name: user_data_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.user_data_user_id_seq OWNED BY public.user_data.user_id;


--
-- Name: games_data game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games_data ALTER COLUMN game_id SET DEFAULT nextval('public.games_data_game_id_seq'::regclass);


--
-- Name: user_data user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_data ALTER COLUMN user_id SET DEFAULT nextval('public.user_data_user_id_seq'::regclass);


--
-- Data for Name: games_data; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games_data VALUES (1, 0, 1);
INSERT INTO public.games_data VALUES (2, 1, 18);
INSERT INTO public.games_data VALUES (3, 673, 19);
INSERT INTO public.games_data VALUES (4, 413, 19);
INSERT INTO public.games_data VALUES (5, 761, 20);
INSERT INTO public.games_data VALUES (6, 343, 20);
INSERT INTO public.games_data VALUES (7, 810, 19);
INSERT INTO public.games_data VALUES (8, 707, 19);
INSERT INTO public.games_data VALUES (9, 551, 19);
INSERT INTO public.games_data VALUES (10, 2, 1);
INSERT INTO public.games_data VALUES (11, 3, 1);
INSERT INTO public.games_data VALUES (12, 937, 22);
INSERT INTO public.games_data VALUES (13, 893, 23);
INSERT INTO public.games_data VALUES (14, 619, 22);
INSERT INTO public.games_data VALUES (15, 965, 22);
INSERT INTO public.games_data VALUES (16, 430, 22);
INSERT INTO public.games_data VALUES (17, 108, 24);
INSERT INTO public.games_data VALUES (18, 940, 25);
INSERT INTO public.games_data VALUES (19, 776, 24);
INSERT INTO public.games_data VALUES (20, 107, 24);
INSERT INTO public.games_data VALUES (21, 898, 24);
INSERT INTO public.games_data VALUES (22, 2, 1);
INSERT INTO public.games_data VALUES (23, 6, 1);
INSERT INTO public.games_data VALUES (24, 4, 1);
INSERT INTO public.games_data VALUES (25, 205, 26);
INSERT INTO public.games_data VALUES (26, 341, 26);
INSERT INTO public.games_data VALUES (27, 939, 27);
INSERT INTO public.games_data VALUES (28, 3, 27);
INSERT INTO public.games_data VALUES (29, 927, 26);
INSERT INTO public.games_data VALUES (30, 286, 26);
INSERT INTO public.games_data VALUES (31, 203, 26);
INSERT INTO public.games_data VALUES (32, 173, 28);
INSERT INTO public.games_data VALUES (33, 718, 28);
INSERT INTO public.games_data VALUES (34, 366, 29);
INSERT INTO public.games_data VALUES (35, 82, 29);
INSERT INTO public.games_data VALUES (36, 483, 28);
INSERT INTO public.games_data VALUES (37, 132, 28);
INSERT INTO public.games_data VALUES (38, 292, 28);
INSERT INTO public.games_data VALUES (39, 520, 30);
INSERT INTO public.games_data VALUES (40, 200, 30);
INSERT INTO public.games_data VALUES (41, 225, 31);
INSERT INTO public.games_data VALUES (42, 441, 31);
INSERT INTO public.games_data VALUES (43, 217, 30);
INSERT INTO public.games_data VALUES (44, 580, 30);
INSERT INTO public.games_data VALUES (45, 400, 30);
INSERT INTO public.games_data VALUES (46, 1, 1);
INSERT INTO public.games_data VALUES (47, 1, 21);
INSERT INTO public.games_data VALUES (48, 1, 32);
INSERT INTO public.games_data VALUES (49, 243, 34);
INSERT INTO public.games_data VALUES (50, 134, 34);
INSERT INTO public.games_data VALUES (51, 979, 35);
INSERT INTO public.games_data VALUES (52, 43, 35);
INSERT INTO public.games_data VALUES (53, 460, 34);
INSERT INTO public.games_data VALUES (54, 236, 34);
INSERT INTO public.games_data VALUES (55, 862, 34);


--
-- Data for Name: user_data; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.user_data VALUES (1, 'dave');
INSERT INTO public.user_data VALUES (2, 'user_1678839342931');
INSERT INTO public.user_data VALUES (3, 'user_1678839342930');
INSERT INTO public.user_data VALUES (4, 'derve');
INSERT INTO public.user_data VALUES (5, 'derb');
INSERT INTO public.user_data VALUES (6, 'derd');
INSERT INTO public.user_data VALUES (7, 'user_1678840722278');
INSERT INTO public.user_data VALUES (8, 'user_1678840722277');
INSERT INTO public.user_data VALUES (9, 'user_1678840996783');
INSERT INTO public.user_data VALUES (10, 'user_1678840996782');
INSERT INTO public.user_data VALUES (11, '');
INSERT INTO public.user_data VALUES (12, 'd user_data');
INSERT INTO public.user_data VALUES (13, 'fs');
INSERT INTO public.user_data VALUES (14, 'davvvv');
INSERT INTO public.user_data VALUES (15, 'dorkl');
INSERT INTO public.user_data VALUES (16, 'dlarp');
INSERT INTO public.user_data VALUES (17, 'dlorga');
INSERT INTO public.user_data VALUES (18, 'yyyyaya');
INSERT INTO public.user_data VALUES (19, 'user_1678842354204');
INSERT INTO public.user_data VALUES (20, 'user_1678842354203');
INSERT INTO public.user_data VALUES (21, 'darb');
INSERT INTO public.user_data VALUES (22, 'user_1678843822918');
INSERT INTO public.user_data VALUES (23, 'user_1678843822917');
INSERT INTO public.user_data VALUES (24, 'user_1678844405163');
INSERT INTO public.user_data VALUES (25, 'user_1678844405162');
INSERT INTO public.user_data VALUES (26, 'user_1678844784212');
INSERT INTO public.user_data VALUES (27, 'user_1678844784211');
INSERT INTO public.user_data VALUES (28, 'user_1678844917390');
INSERT INTO public.user_data VALUES (29, 'user_1678844917389');
INSERT INTO public.user_data VALUES (30, 'user_1678844958317');
INSERT INTO public.user_data VALUES (31, 'user_1678844958316');
INSERT INTO public.user_data VALUES (32, 'lerdy');
INSERT INTO public.user_data VALUES (33, 'dorb');
INSERT INTO public.user_data VALUES (34, 'user_1678845182423');
INSERT INTO public.user_data VALUES (35, 'user_1678845182422');


--
-- Name: games_data_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_data_game_id_seq', 55, true);


--
-- Name: user_data_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.user_data_user_id_seq', 35, true);


--
-- Name: games_data games_data_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games_data
    ADD CONSTRAINT games_data_pkey PRIMARY KEY (game_id);


--
-- Name: user_data user_data_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_data
    ADD CONSTRAINT user_data_pkey PRIMARY KEY (user_id);


--
-- Name: games_data games_data_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games_data
    ADD CONSTRAINT games_data_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.user_data(user_id);


--
-- PostgreSQL database dump complete
--

