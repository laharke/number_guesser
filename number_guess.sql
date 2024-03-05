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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    guesses integer,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22)
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (14, 3);
INSERT INTO public.games VALUES (12, 3);
INSERT INTO public.games VALUES (546, 14);
INSERT INTO public.games VALUES (345, 15);
INSERT INTO public.games VALUES (632, 14);
INSERT INTO public.games VALUES (734, 14);
INSERT INTO public.games VALUES (934, 14);
INSERT INTO public.games VALUES (70, 18);
INSERT INTO public.games VALUES (221, 19);
INSERT INTO public.games VALUES (243, 18);
INSERT INTO public.games VALUES (543, 18);
INSERT INTO public.games VALUES (184, 18);
INSERT INTO public.games VALUES (70, 20);
INSERT INTO public.games VALUES (516, 21);
INSERT INTO public.games VALUES (697, 20);
INSERT INTO public.games VALUES (281, 20);
INSERT INTO public.games VALUES (819, 20);
INSERT INTO public.games VALUES (687, 22);
INSERT INTO public.games VALUES (129, 23);
INSERT INTO public.games VALUES (163, 22);
INSERT INTO public.games VALUES (342, 22);
INSERT INTO public.games VALUES (707, 22);
INSERT INTO public.games VALUES (654, 24);
INSERT INTO public.games VALUES (30, 25);
INSERT INTO public.games VALUES (330, 24);
INSERT INTO public.games VALUES (924, 24);
INSERT INTO public.games VALUES (441, 24);
INSERT INTO public.games VALUES (960, 26);
INSERT INTO public.games VALUES (969, 27);
INSERT INTO public.games VALUES (398, 26);
INSERT INTO public.games VALUES (366, 26);
INSERT INTO public.games VALUES (829, 26);
INSERT INTO public.games VALUES (336, 28);
INSERT INTO public.games VALUES (875, 29);
INSERT INTO public.games VALUES (387, 30);
INSERT INTO public.games VALUES (583, 31);
INSERT INTO public.games VALUES (870, 30);
INSERT INTO public.games VALUES (372, 30);
INSERT INTO public.games VALUES (122, 30);
INSERT INTO public.games VALUES (882, 32);
INSERT INTO public.games VALUES (371, 33);
INSERT INTO public.games VALUES (628, 32);
INSERT INTO public.games VALUES (122, 32);
INSERT INTO public.games VALUES (238, 32);
INSERT INTO public.games VALUES (230, 34);
INSERT INTO public.games VALUES (838, 35);
INSERT INTO public.games VALUES (956, 34);
INSERT INTO public.games VALUES (604, 34);
INSERT INTO public.games VALUES (407, 34);
INSERT INTO public.games VALUES (708, 36);
INSERT INTO public.games VALUES (640, 37);
INSERT INTO public.games VALUES (630, 37);
INSERT INTO public.games VALUES (976, 39);
INSERT INTO public.games VALUES (457, 40);
INSERT INTO public.games VALUES (675, 39);
INSERT INTO public.games VALUES (467, 39);
INSERT INTO public.games VALUES (331, 39);
INSERT INTO public.games VALUES (9, 16);
INSERT INTO public.games VALUES (214, 46);
INSERT INTO public.games VALUES (609, 47);
INSERT INTO public.games VALUES (627, 46);
INSERT INTO public.games VALUES (994, 46);
INSERT INTO public.games VALUES (572, 46);
INSERT INTO public.games VALUES (847, 51);
INSERT INTO public.games VALUES (13, 52);
INSERT INTO public.games VALUES (395, 51);
INSERT INTO public.games VALUES (672, 51);
INSERT INTO public.games VALUES (396, 51);
INSERT INTO public.games VALUES (10, 54);
INSERT INTO public.games VALUES (789, 55);
INSERT INTO public.games VALUES (246, 55);
INSERT INTO public.games VALUES (360, 56);
INSERT INTO public.games VALUES (523, 56);
INSERT INTO public.games VALUES (821, 55);
INSERT INTO public.games VALUES (793, 55);
INSERT INTO public.games VALUES (240, 55);
INSERT INTO public.games VALUES (336, 57);
INSERT INTO public.games VALUES (603, 57);
INSERT INTO public.games VALUES (626, 58);
INSERT INTO public.games VALUES (17, 58);
INSERT INTO public.games VALUES (863, 57);
INSERT INTO public.games VALUES (551, 57);
INSERT INTO public.games VALUES (364, 57);
INSERT INTO public.games VALUES (288, 59);
INSERT INTO public.games VALUES (583, 59);
INSERT INTO public.games VALUES (165, 60);
INSERT INTO public.games VALUES (486, 60);
INSERT INTO public.games VALUES (588, 59);
INSERT INTO public.games VALUES (916, 59);
INSERT INTO public.games VALUES (427, 59);
INSERT INTO public.games VALUES (659, 61);
INSERT INTO public.games VALUES (389, 61);
INSERT INTO public.games VALUES (416, 62);
INSERT INTO public.games VALUES (602, 62);
INSERT INTO public.games VALUES (753, 61);
INSERT INTO public.games VALUES (224, 61);
INSERT INTO public.games VALUES (111, 61);
INSERT INTO public.games VALUES (916, 63);
INSERT INTO public.games VALUES (952, 63);
INSERT INTO public.games VALUES (655, 64);
INSERT INTO public.games VALUES (532, 64);
INSERT INTO public.games VALUES (30, 63);
INSERT INTO public.games VALUES (26, 63);
INSERT INTO public.games VALUES (156, 63);
INSERT INTO public.games VALUES (218, 65);
INSERT INTO public.games VALUES (87, 65);
INSERT INTO public.games VALUES (714, 66);
INSERT INTO public.games VALUES (772, 66);
INSERT INTO public.games VALUES (403, 65);
INSERT INTO public.games VALUES (884, 65);
INSERT INTO public.games VALUES (122, 65);
INSERT INTO public.games VALUES (661, 67);
INSERT INTO public.games VALUES (485, 67);
INSERT INTO public.games VALUES (898, 68);
INSERT INTO public.games VALUES (389, 68);
INSERT INTO public.games VALUES (596, 67);
INSERT INTO public.games VALUES (860, 67);
INSERT INTO public.games VALUES (136, 67);
INSERT INTO public.games VALUES (73, 69);
INSERT INTO public.games VALUES (780, 69);
INSERT INTO public.games VALUES (887, 70);
INSERT INTO public.games VALUES (580, 70);
INSERT INTO public.games VALUES (193, 69);
INSERT INTO public.games VALUES (530, 69);
INSERT INTO public.games VALUES (575, 69);
INSERT INTO public.games VALUES (567, 71);
INSERT INTO public.games VALUES (300, 71);
INSERT INTO public.games VALUES (569, 72);
INSERT INTO public.games VALUES (846, 72);
INSERT INTO public.games VALUES (906, 71);
INSERT INTO public.games VALUES (994, 71);
INSERT INTO public.games VALUES (733, 71);
INSERT INTO public.games VALUES (410, 73);
INSERT INTO public.games VALUES (719, 73);
INSERT INTO public.games VALUES (819, 74);
INSERT INTO public.games VALUES (58, 74);
INSERT INTO public.games VALUES (998, 73);
INSERT INTO public.games VALUES (616, 73);
INSERT INTO public.games VALUES (354, 73);
INSERT INTO public.games VALUES (955, 75);
INSERT INTO public.games VALUES (761, 75);
INSERT INTO public.games VALUES (286, 76);
INSERT INTO public.games VALUES (967, 76);
INSERT INTO public.games VALUES (156, 75);
INSERT INTO public.games VALUES (313, 75);
INSERT INTO public.games VALUES (319, 75);
INSERT INTO public.games VALUES (335, 77);
INSERT INTO public.games VALUES (705, 77);
INSERT INTO public.games VALUES (894, 78);
INSERT INTO public.games VALUES (608, 78);
INSERT INTO public.games VALUES (755, 77);
INSERT INTO public.games VALUES (612, 77);
INSERT INTO public.games VALUES (665, 77);
INSERT INTO public.games VALUES (6, 79);
INSERT INTO public.games VALUES (227, 79);
INSERT INTO public.games VALUES (221, 80);
INSERT INTO public.games VALUES (654, 80);
INSERT INTO public.games VALUES (980, 79);
INSERT INTO public.games VALUES (691, 79);
INSERT INTO public.games VALUES (622, 79);
INSERT INTO public.games VALUES (304, 81);
INSERT INTO public.games VALUES (745, 81);
INSERT INTO public.games VALUES (211, 82);
INSERT INTO public.games VALUES (596, 82);
INSERT INTO public.games VALUES (959, 81);
INSERT INTO public.games VALUES (497, 81);
INSERT INTO public.games VALUES (326, 81);
INSERT INTO public.games VALUES (663, 83);
INSERT INTO public.games VALUES (597, 83);
INSERT INTO public.games VALUES (86, 84);
INSERT INTO public.games VALUES (232, 84);
INSERT INTO public.games VALUES (657, 83);
INSERT INTO public.games VALUES (395, 83);
INSERT INTO public.games VALUES (135, 83);
INSERT INTO public.games VALUES (9, 85);
INSERT INTO public.games VALUES (160, 86);
INSERT INTO public.games VALUES (10, 86);
INSERT INTO public.games VALUES (601, 87);
INSERT INTO public.games VALUES (854, 87);
INSERT INTO public.games VALUES (703, 86);
INSERT INTO public.games VALUES (227, 86);
INSERT INTO public.games VALUES (131, 86);
INSERT INTO public.games VALUES (7, 16);
INSERT INTO public.games VALUES (895, 88);
INSERT INTO public.games VALUES (484, 88);
INSERT INTO public.games VALUES (731, 89);
INSERT INTO public.games VALUES (331, 89);
INSERT INTO public.games VALUES (603, 88);
INSERT INTO public.games VALUES (393, 88);
INSERT INTO public.games VALUES (2, 88);
INSERT INTO public.games VALUES (307, 90);
INSERT INTO public.games VALUES (214, 90);
INSERT INTO public.games VALUES (815, 91);
INSERT INTO public.games VALUES (351, 91);
INSERT INTO public.games VALUES (225, 90);
INSERT INTO public.games VALUES (743, 90);
INSERT INTO public.games VALUES (506, 90);
INSERT INTO public.games VALUES (70, 92);
INSERT INTO public.games VALUES (826, 92);
INSERT INTO public.games VALUES (607, 93);
INSERT INTO public.games VALUES (641, 93);
INSERT INTO public.games VALUES (363, 92);
INSERT INTO public.games VALUES (721, 92);
INSERT INTO public.games VALUES (490, 92);
INSERT INTO public.games VALUES (686, 94);
INSERT INTO public.games VALUES (129, 94);
INSERT INTO public.games VALUES (102, 95);
INSERT INTO public.games VALUES (497, 95);
INSERT INTO public.games VALUES (492, 94);
INSERT INTO public.games VALUES (352, 94);
INSERT INTO public.games VALUES (597, 94);
INSERT INTO public.games VALUES (987, 96);
INSERT INTO public.games VALUES (710, 96);
INSERT INTO public.games VALUES (206, 97);
INSERT INTO public.games VALUES (906, 97);
INSERT INTO public.games VALUES (485, 96);
INSERT INTO public.games VALUES (808, 96);
INSERT INTO public.games VALUES (368, 96);
INSERT INTO public.games VALUES (433, 98);
INSERT INTO public.games VALUES (407, 98);
INSERT INTO public.games VALUES (856, 99);
INSERT INTO public.games VALUES (906, 99);
INSERT INTO public.games VALUES (168, 98);
INSERT INTO public.games VALUES (273, 98);
INSERT INTO public.games VALUES (673, 98);
INSERT INTO public.games VALUES (775, 100);
INSERT INTO public.games VALUES (590, 100);
INSERT INTO public.games VALUES (611, 101);
INSERT INTO public.games VALUES (273, 101);
INSERT INTO public.games VALUES (189, 100);
INSERT INTO public.games VALUES (405, 100);
INSERT INTO public.games VALUES (758, 100);
INSERT INTO public.games VALUES (820, 102);
INSERT INTO public.games VALUES (339, 102);
INSERT INTO public.games VALUES (98, 103);
INSERT INTO public.games VALUES (563, 103);
INSERT INTO public.games VALUES (714, 102);
INSERT INTO public.games VALUES (666, 102);
INSERT INTO public.games VALUES (529, 102);
INSERT INTO public.games VALUES (11, 104);
INSERT INTO public.games VALUES (102, 105);
INSERT INTO public.games VALUES (430, 105);
INSERT INTO public.games VALUES (94, 106);
INSERT INTO public.games VALUES (493, 106);
INSERT INTO public.games VALUES (935, 105);
INSERT INTO public.games VALUES (264, 105);
INSERT INTO public.games VALUES (897, 105);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1709645559159');
INSERT INTO public.users VALUES (2, 'user_1709645559158');
INSERT INTO public.users VALUES (3, 'mauro');
INSERT INTO public.users VALUES (4, 'user_1709645613765');
INSERT INTO public.users VALUES (5, 'user_1709645613764');
INSERT INTO public.users VALUES (6, 'user_1709645633753');
INSERT INTO public.users VALUES (7, 'user_1709645633752');
INSERT INTO public.users VALUES (8, 'user_1709645935862');
INSERT INTO public.users VALUES (9, 'user_1709645935861');
INSERT INTO public.users VALUES (10, 'user_1709645941798');
INSERT INTO public.users VALUES (11, 'user_1709645941797');
INSERT INTO public.users VALUES (12, 'user_1709645967158');
INSERT INTO public.users VALUES (13, 'user_1709645967157');
INSERT INTO public.users VALUES (14, 'user_1709647523405');
INSERT INTO public.users VALUES (15, 'user_1709647523404');
INSERT INTO public.users VALUES (16, 'luka');
INSERT INTO public.users VALUES (17, 'pedro');
INSERT INTO public.users VALUES (18, 'user_1709647584731');
INSERT INTO public.users VALUES (19, 'user_1709647584730');
INSERT INTO public.users VALUES (20, 'user_1709647606709');
INSERT INTO public.users VALUES (21, 'user_1709647606708');
INSERT INTO public.users VALUES (22, 'user_1709647633694');
INSERT INTO public.users VALUES (23, 'user_1709647633693');
INSERT INTO public.users VALUES (24, 'user_1709647654583');
INSERT INTO public.users VALUES (25, 'user_1709647654582');
INSERT INTO public.users VALUES (26, 'user_1709647672408');
INSERT INTO public.users VALUES (27, 'user_1709647672407');
INSERT INTO public.users VALUES (28, 'user_1709647704514');
INSERT INTO public.users VALUES (29, 'user_1709647704513');
INSERT INTO public.users VALUES (30, 'user_1709647708728');
INSERT INTO public.users VALUES (31, 'user_1709647708727');
INSERT INTO public.users VALUES (32, 'user_1709647766780');
INSERT INTO public.users VALUES (33, 'user_1709647766779');
INSERT INTO public.users VALUES (34, 'user_1709647984310');
INSERT INTO public.users VALUES (35, 'user_1709647984309');
INSERT INTO public.users VALUES (36, 'user_1709648001963');
INSERT INTO public.users VALUES (37, 'user_1709648001964');
INSERT INTO public.users VALUES (38, 'asd');
INSERT INTO public.users VALUES (39, 'user_1709648087088');
INSERT INTO public.users VALUES (40, 'user_1709648087087');
INSERT INTO public.users VALUES (41, 'qwe');
INSERT INTO public.users VALUES (42, 'user_1709648237098');
INSERT INTO public.users VALUES (43, 'user_1709648237097');
INSERT INTO public.users VALUES (44, 'user_1709648244760');
INSERT INTO public.users VALUES (45, 'user_1709648244759');
INSERT INTO public.users VALUES (46, 'user_1709648253963');
INSERT INTO public.users VALUES (47, 'user_1709648253962');
INSERT INTO public.users VALUES (48, 'user_1709648260065');
INSERT INTO public.users VALUES (49, 'user_1709648260064');
INSERT INTO public.users VALUES (50, 'jorge');
INSERT INTO public.users VALUES (51, 'user_1709648322732');
INSERT INTO public.users VALUES (52, 'user_1709648322731');
INSERT INTO public.users VALUES (53, 'itort');
INSERT INTO public.users VALUES (54, 'dsfjasdf');
INSERT INTO public.users VALUES (55, 'user_1709648383156');
INSERT INTO public.users VALUES (56, 'user_1709648383155');
INSERT INTO public.users VALUES (57, 'user_1709648849463');
INSERT INTO public.users VALUES (58, 'user_1709648849462');
INSERT INTO public.users VALUES (59, 'user_1709648874875');
INSERT INTO public.users VALUES (60, 'user_1709648874874');
INSERT INTO public.users VALUES (61, 'user_1709649037982');
INSERT INTO public.users VALUES (62, 'user_1709649037981');
INSERT INTO public.users VALUES (63, 'user_1709649051642');
INSERT INTO public.users VALUES (64, 'user_1709649051641');
INSERT INTO public.users VALUES (65, 'user_1709649090765');
INSERT INTO public.users VALUES (66, 'user_1709649090764');
INSERT INTO public.users VALUES (67, 'user_1709649197761');
INSERT INTO public.users VALUES (68, 'user_1709649197760');
INSERT INTO public.users VALUES (69, 'user_1709649247437');
INSERT INTO public.users VALUES (70, 'user_1709649247436');
INSERT INTO public.users VALUES (71, 'user_1709649264747');
INSERT INTO public.users VALUES (72, 'user_1709649264746');
INSERT INTO public.users VALUES (73, 'user_1709649273812');
INSERT INTO public.users VALUES (74, 'user_1709649273811');
INSERT INTO public.users VALUES (75, 'user_1709649388764');
INSERT INTO public.users VALUES (76, 'user_1709649388763');
INSERT INTO public.users VALUES (77, 'user_1709649647556');
INSERT INTO public.users VALUES (78, 'user_1709649647555');
INSERT INTO public.users VALUES (79, 'user_1709649650665');
INSERT INTO public.users VALUES (80, 'user_1709649650664');
INSERT INTO public.users VALUES (81, 'user_1709649653379');
INSERT INTO public.users VALUES (82, 'user_1709649653378');
INSERT INTO public.users VALUES (83, 'user_1709649707075');
INSERT INTO public.users VALUES (84, 'user_1709649707074');
INSERT INTO public.users VALUES (85, 'pedro pa');
INSERT INTO public.users VALUES (86, 'user_1709649956638');
INSERT INTO public.users VALUES (87, 'user_1709649956637');
INSERT INTO public.users VALUES (88, 'user_1709650022937');
INSERT INTO public.users VALUES (89, 'user_1709650022936');
INSERT INTO public.users VALUES (90, 'user_1709650031422');
INSERT INTO public.users VALUES (91, 'user_1709650031421');
INSERT INTO public.users VALUES (92, 'user_1709650115485');
INSERT INTO public.users VALUES (93, 'user_1709650115484');
INSERT INTO public.users VALUES (94, 'user_1709650160121');
INSERT INTO public.users VALUES (95, 'user_1709650160120');
INSERT INTO public.users VALUES (96, 'user_1709650165722');
INSERT INTO public.users VALUES (97, 'user_1709650165721');
INSERT INTO public.users VALUES (98, 'user_1709650195565');
INSERT INTO public.users VALUES (99, 'user_1709650195564');
INSERT INTO public.users VALUES (100, 'user_1709650422903');
INSERT INTO public.users VALUES (101, 'user_1709650422902');
INSERT INTO public.users VALUES (102, 'user_1709650496185');
INSERT INTO public.users VALUES (103, 'user_1709650496184');
INSERT INTO public.users VALUES (104, 'juancru');
INSERT INTO public.users VALUES (105, 'user_1709650596629');
INSERT INTO public.users VALUES (106, 'user_1709650596628');


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 106, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games fk_users; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

