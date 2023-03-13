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
    round character varying(20) NOT NULL,
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(20) NOT NULL
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
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (126, 2018, 'Final', 717, 718, 4, 2);
INSERT INTO public.games VALUES (127, 2018, 'Third Place', 719, 720, 2, 0);
INSERT INTO public.games VALUES (128, 2018, 'Semi-Final', 718, 720, 2, 1);
INSERT INTO public.games VALUES (129, 2018, 'Semi-Final', 717, 719, 1, 0);
INSERT INTO public.games VALUES (130, 2018, 'Quarter-Final', 718, 721, 3, 2);
INSERT INTO public.games VALUES (131, 2018, 'Quarter-Final', 720, 722, 2, 0);
INSERT INTO public.games VALUES (132, 2018, 'Quarter-Final', 719, 723, 2, 1);
INSERT INTO public.games VALUES (133, 2018, 'Quarter-Final', 717, 724, 2, 0);
INSERT INTO public.games VALUES (134, 2018, 'Eighth-Final', 720, 725, 2, 1);
INSERT INTO public.games VALUES (135, 2018, 'Eighth-Final', 722, 726, 1, 0);
INSERT INTO public.games VALUES (136, 2018, 'Eighth-Final', 719, 727, 3, 2);
INSERT INTO public.games VALUES (137, 2018, 'Eighth-Final', 723, 728, 2, 0);
INSERT INTO public.games VALUES (138, 2018, 'Eighth-Final', 718, 729, 2, 1);
INSERT INTO public.games VALUES (139, 2018, 'Eighth-Final', 721, 730, 2, 1);
INSERT INTO public.games VALUES (140, 2018, 'Eighth-Final', 724, 731, 2, 1);
INSERT INTO public.games VALUES (141, 2018, 'Eighth-Final', 717, 732, 4, 3);
INSERT INTO public.games VALUES (142, 2014, 'Final', 733, 732, 1, 0);
INSERT INTO public.games VALUES (143, 2014, 'Third Place', 734, 723, 3, 0);
INSERT INTO public.games VALUES (144, 2014, 'Semi-Final', 732, 734, 1, 0);
INSERT INTO public.games VALUES (145, 2014, 'Semi-Final', 733, 723, 7, 1);
INSERT INTO public.games VALUES (146, 2014, 'Quarter-Final', 734, 735, 1, 0);
INSERT INTO public.games VALUES (147, 2014, 'Quarter-Final', 732, 719, 1, 0);
INSERT INTO public.games VALUES (148, 2014, 'Quarter-Final', 723, 725, 2, 1);
INSERT INTO public.games VALUES (149, 2014, 'Quarter-Final', 733, 717, 1, 0);
INSERT INTO public.games VALUES (150, 2014, 'Eighth-Final', 723, 736, 2, 1);
INSERT INTO public.games VALUES (151, 2014, 'Eighth-Final', 725, 724, 2, 0);
INSERT INTO public.games VALUES (152, 2014, 'Eighth-Final', 717, 737, 2, 0);
INSERT INTO public.games VALUES (153, 2014, 'Eighth-Final', 733, 738, 2, 1);
INSERT INTO public.games VALUES (154, 2014, 'Eighth-Final', 734, 728, 2, 1);
INSERT INTO public.games VALUES (155, 2014, 'Eighth-Final', 735, 739, 2, 1);
INSERT INTO public.games VALUES (156, 2014, 'Eighth-Final', 732, 726, 1, 0);
INSERT INTO public.games VALUES (157, 2014, 'Eighth-Final', 719, 740, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (717, 'France');
INSERT INTO public.teams VALUES (718, 'Croatia');
INSERT INTO public.teams VALUES (719, 'Belgium');
INSERT INTO public.teams VALUES (720, 'England');
INSERT INTO public.teams VALUES (721, 'Russia');
INSERT INTO public.teams VALUES (722, 'Sweden');
INSERT INTO public.teams VALUES (723, 'Brazil');
INSERT INTO public.teams VALUES (724, 'Uruguay');
INSERT INTO public.teams VALUES (725, 'Colombia');
INSERT INTO public.teams VALUES (726, 'Switzerland');
INSERT INTO public.teams VALUES (727, 'Japan');
INSERT INTO public.teams VALUES (728, 'Mexico');
INSERT INTO public.teams VALUES (729, 'Denmark');
INSERT INTO public.teams VALUES (730, 'Spain');
INSERT INTO public.teams VALUES (731, 'Portugal');
INSERT INTO public.teams VALUES (732, 'Argentina');
INSERT INTO public.teams VALUES (733, 'Germany');
INSERT INTO public.teams VALUES (734, 'Netherlands');
INSERT INTO public.teams VALUES (735, 'Costa Rica');
INSERT INTO public.teams VALUES (736, 'Chile');
INSERT INTO public.teams VALUES (737, 'Nigeria');
INSERT INTO public.teams VALUES (738, 'Algeria');
INSERT INTO public.teams VALUES (739, 'Greece');
INSERT INTO public.teams VALUES (740, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 157, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 740, true);


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

