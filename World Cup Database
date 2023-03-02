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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (481, 2018, 'Final', 1153, 1154, 4, 2);
INSERT INTO public.games VALUES (482, 2018, 'Third Place', 1155, 1156, 2, 0);
INSERT INTO public.games VALUES (483, 2018, 'Semi-Final', 1154, 1156, 2, 1);
INSERT INTO public.games VALUES (484, 2018, 'Semi-Final', 1153, 1155, 1, 0);
INSERT INTO public.games VALUES (485, 2018, 'Quarter-Final', 1154, 1162, 3, 2);
INSERT INTO public.games VALUES (486, 2018, 'Quarter-Final', 1156, 1164, 2, 0);
INSERT INTO public.games VALUES (487, 2018, 'Quarter-Final', 1155, 1166, 2, 1);
INSERT INTO public.games VALUES (488, 2018, 'Quarter-Final', 1153, 1168, 2, 0);
INSERT INTO public.games VALUES (489, 2018, 'Eighth-Final', 1156, 1170, 2, 1);
INSERT INTO public.games VALUES (490, 2018, 'Eighth-Final', 1164, 1172, 1, 0);
INSERT INTO public.games VALUES (491, 2018, 'Eighth-Final', 1155, 1174, 3, 2);
INSERT INTO public.games VALUES (492, 2018, 'Eighth-Final', 1166, 1176, 2, 0);
INSERT INTO public.games VALUES (493, 2018, 'Eighth-Final', 1154, 1178, 2, 1);
INSERT INTO public.games VALUES (494, 2018, 'Eighth-Final', 1162, 1180, 2, 1);
INSERT INTO public.games VALUES (495, 2018, 'Eighth-Final', 1168, 1182, 2, 1);
INSERT INTO public.games VALUES (496, 2018, 'Eighth-Final', 1153, 1184, 4, 3);
INSERT INTO public.games VALUES (497, 2014, 'Final', 1185, 1184, 1, 0);
INSERT INTO public.games VALUES (498, 2014, 'Third Place', 1187, 1166, 3, 0);
INSERT INTO public.games VALUES (499, 2014, 'Semi-Final', 1184, 1187, 1, 0);
INSERT INTO public.games VALUES (500, 2014, 'Semi-Final', 1185, 1166, 7, 1);
INSERT INTO public.games VALUES (501, 2014, 'Quarter-Final', 1187, 1194, 1, 0);
INSERT INTO public.games VALUES (502, 2014, 'Quarter-Final', 1184, 1155, 1, 0);
INSERT INTO public.games VALUES (503, 2014, 'Quarter-Final', 1166, 1170, 2, 1);
INSERT INTO public.games VALUES (504, 2014, 'Quarter-Final', 1185, 1153, 1, 0);
INSERT INTO public.games VALUES (505, 2014, 'Eighth-Final', 1166, 1202, 2, 1);
INSERT INTO public.games VALUES (506, 2014, 'Eighth-Final', 1170, 1168, 2, 0);
INSERT INTO public.games VALUES (507, 2014, 'Eighth-Final', 1153, 1206, 2, 0);
INSERT INTO public.games VALUES (508, 2014, 'Eighth-Final', 1185, 1208, 2, 1);
INSERT INTO public.games VALUES (509, 2014, 'Eighth-Final', 1187, 1176, 2, 1);
INSERT INTO public.games VALUES (510, 2014, 'Eighth-Final', 1194, 1212, 2, 1);
INSERT INTO public.games VALUES (511, 2014, 'Eighth-Final', 1184, 1172, 1, 0);
INSERT INTO public.games VALUES (512, 2014, 'Eighth-Final', 1155, 1216, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1153, 'France');
INSERT INTO public.teams VALUES (1154, 'Croatia');
INSERT INTO public.teams VALUES (1155, 'Belgium');
INSERT INTO public.teams VALUES (1156, 'England');
INSERT INTO public.teams VALUES (1162, 'Russia');
INSERT INTO public.teams VALUES (1164, 'Sweden');
INSERT INTO public.teams VALUES (1166, 'Brazil');
INSERT INTO public.teams VALUES (1168, 'Uruguay');
INSERT INTO public.teams VALUES (1170, 'Colombia');
INSERT INTO public.teams VALUES (1172, 'Switzerland');
INSERT INTO public.teams VALUES (1174, 'Japan');
INSERT INTO public.teams VALUES (1176, 'Mexico');
INSERT INTO public.teams VALUES (1178, 'Denmark');
INSERT INTO public.teams VALUES (1180, 'Spain');
INSERT INTO public.teams VALUES (1182, 'Portugal');
INSERT INTO public.teams VALUES (1184, 'Argentina');
INSERT INTO public.teams VALUES (1185, 'Germany');
INSERT INTO public.teams VALUES (1187, 'Netherlands');
INSERT INTO public.teams VALUES (1194, 'Costa Rica');
INSERT INTO public.teams VALUES (1202, 'Chile');
INSERT INTO public.teams VALUES (1206, 'Nigeria');
INSERT INTO public.teams VALUES (1208, 'Algeria');
INSERT INTO public.teams VALUES (1212, 'Greece');
INSERT INTO public.teams VALUES (1216, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 512, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 256, true);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 256, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 1216, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

