toc.dat                                                                                             0000600 0004000 0002000 00000006354 14504440577 0014461 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                           {            prueba    14.5    14.5     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    82680    prueba    DATABASE     e   CREATE DATABASE prueba WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE prueba;
                postgres    false         �            1259    82692    artista    TABLE     �  CREATE TABLE public.artista (
    id integer NOT NULL,
    nombre_real character varying(255) NOT NULL,
    nombre_artistico character varying(255) NOT NULL,
    correo character varying(255) NOT NULL,
    contrasena character varying(255) NOT NULL,
    telefono character varying(20),
    genero_musical character varying(255),
    biografia text,
    redes_sociales jsonb,
    imagen_perfil character varying(255)
);
    DROP TABLE public.artista;
       public         heap    postgres    false         �            1259    82691    artista_id_seq    SEQUENCE     �   CREATE SEQUENCE public.artista_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.artista_id_seq;
       public          postgres    false    210         �           0    0    artista_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.artista_id_seq OWNED BY public.artista.id;
          public          postgres    false    209         \           2604    82695 
   artista id    DEFAULT     h   ALTER TABLE ONLY public.artista ALTER COLUMN id SET DEFAULT nextval('public.artista_id_seq'::regclass);
 9   ALTER TABLE public.artista ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210         �          0    82692    artista 
   TABLE DATA           �   COPY public.artista (id, nombre_real, nombre_artistico, correo, contrasena, telefono, genero_musical, biografia, redes_sociales, imagen_perfil) FROM stdin;
    public          postgres    false    210       3309.dat �           0    0    artista_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.artista_id_seq', 19, true);
          public          postgres    false    209         ^           2606    82701    artista artista_correo_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.artista
    ADD CONSTRAINT artista_correo_key UNIQUE (correo);
 D   ALTER TABLE ONLY public.artista DROP CONSTRAINT artista_correo_key;
       public            postgres    false    210         `           2606    82699    artista artista_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.artista
    ADD CONSTRAINT artista_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.artista DROP CONSTRAINT artista_pkey;
       public            postgres    false    210                                                                                                                                                                                                                                                                                            3309.dat                                                                                            0000600 0004000 0002000 00000000532 14504440577 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	julian palacio	palacioOnTheBeat	palacionthebeat@gmail.com	12345678	+573101234567	rock	Productor musical	\N	\N
1	Sergio Paredes	Seiim	seiim@gmail.com	12345678	+573142734677	reggaeton	Productor musical	{"twitter": "https://twitter.com/artista", "facebook": "https://www.facebook.com/artista"}	https://ruta-de-la-imagen.com/imagen_perfil.jpg
\.


                                                                                                                                                                      restore.sql                                                                                         0000600 0004000 0002000 00000006452 14504440577 0015405 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

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

DROP DATABASE prueba;
--
-- Name: prueba; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE prueba WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';


ALTER DATABASE prueba OWNER TO postgres;

\connect prueba

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
-- Name: artista; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.artista (
    id integer NOT NULL,
    nombre_real character varying(255) NOT NULL,
    nombre_artistico character varying(255) NOT NULL,
    correo character varying(255) NOT NULL,
    contrasena character varying(255) NOT NULL,
    telefono character varying(20),
    genero_musical character varying(255),
    biografia text,
    redes_sociales jsonb,
    imagen_perfil character varying(255)
);


ALTER TABLE public.artista OWNER TO postgres;

--
-- Name: artista_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.artista_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artista_id_seq OWNER TO postgres;

--
-- Name: artista_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.artista_id_seq OWNED BY public.artista.id;


--
-- Name: artista id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artista ALTER COLUMN id SET DEFAULT nextval('public.artista_id_seq'::regclass);


--
-- Data for Name: artista; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.artista (id, nombre_real, nombre_artistico, correo, contrasena, telefono, genero_musical, biografia, redes_sociales, imagen_perfil) FROM stdin;
\.
COPY public.artista (id, nombre_real, nombre_artistico, correo, contrasena, telefono, genero_musical, biografia, redes_sociales, imagen_perfil) FROM '$$PATH$$/3309.dat';

--
-- Name: artista_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.artista_id_seq', 19, true);


--
-- Name: artista artista_correo_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artista
    ADD CONSTRAINT artista_correo_key UNIQUE (correo);


--
-- Name: artista artista_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artista
    ADD CONSTRAINT artista_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      