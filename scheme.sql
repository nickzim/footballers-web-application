PGDMP     '                    x            footballersDB    11.4    11.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    41007    footballersDB    DATABASE     �   CREATE DATABASE "footballersDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE "footballersDB";
             postgres    false            �            1259    41272    clubs    TABLE     `   CREATE TABLE public.clubs (
    club_id integer NOT NULL,
    clubname character varying(50)
);
    DROP TABLE public.clubs;
       public         postgres    false            �            1259    41270    clubs_club_id_seq    SEQUENCE     �   CREATE SEQUENCE public.clubs_club_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.clubs_club_id_seq;
       public       postgres    false    197                       0    0    clubs_club_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.clubs_club_id_seq OWNED BY public.clubs.club_id;
            public       postgres    false    196            �            1259    41286    footballers    TABLE     �   CREATE TABLE public.footballers (
    playername character varying(50),
    age integer,
    country character varying(50),
    position_id integer,
    club_id integer
);
    DROP TABLE public.footballers;
       public         postgres    false            �            1259    41280 	   positions    TABLE     l   CREATE TABLE public.positions (
    position_id integer NOT NULL,
    positionname character varying(50)
);
    DROP TABLE public.positions;
       public         postgres    false            �            1259    41278    positions_position_id_seq    SEQUENCE     �   CREATE SEQUENCE public.positions_position_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.positions_position_id_seq;
       public       postgres    false    199                       0    0    positions_position_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.positions_position_id_seq OWNED BY public.positions.position_id;
            public       postgres    false    198            �
           2604    41300    clubs club_id    DEFAULT     n   ALTER TABLE ONLY public.clubs ALTER COLUMN club_id SET DEFAULT nextval('public.clubs_club_id_seq'::regclass);
 <   ALTER TABLE public.clubs ALTER COLUMN club_id DROP DEFAULT;
       public       postgres    false    196    197    197            �
           2604    41301    positions position_id    DEFAULT     ~   ALTER TABLE ONLY public.positions ALTER COLUMN position_id SET DEFAULT nextval('public.positions_position_id_seq'::regclass);
 D   ALTER TABLE public.positions ALTER COLUMN position_id DROP DEFAULT;
       public       postgres    false    198    199    199            	          0    41272    clubs 
   TABLE DATA               2   COPY public.clubs (club_id, clubname) FROM stdin;
    public       postgres    false    197   C                 0    41286    footballers 
   TABLE DATA               U   COPY public.footballers (playername, age, country, position_id, club_id) FROM stdin;
    public       postgres    false    200   `                 0    41280 	   positions 
   TABLE DATA               >   COPY public.positions (position_id, positionname) FROM stdin;
    public       postgres    false    199   }                  0    0    clubs_club_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.clubs_club_id_seq', 1, false);
            public       postgres    false    196                       0    0    positions_position_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.positions_position_id_seq', 4, true);
            public       postgres    false    198            �
           2606    41277    clubs clubs_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.clubs
    ADD CONSTRAINT clubs_pkey PRIMARY KEY (club_id);
 :   ALTER TABLE ONLY public.clubs DROP CONSTRAINT clubs_pkey;
       public         postgres    false    197            �
           2606    41285    positions positions_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.positions
    ADD CONSTRAINT positions_pkey PRIMARY KEY (position_id);
 B   ALTER TABLE ONLY public.positions DROP CONSTRAINT positions_pkey;
       public         postgres    false    199            �
           2606    41294 $   footballers footballers_club_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.footballers
    ADD CONSTRAINT footballers_club_id_fkey FOREIGN KEY (club_id) REFERENCES public.clubs(club_id);
 N   ALTER TABLE ONLY public.footballers DROP CONSTRAINT footballers_club_id_fkey;
       public       postgres    false    200    197    2698            �
           2606    41289 (   footballers footballers_position_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.footballers
    ADD CONSTRAINT footballers_position_id_fkey FOREIGN KEY (position_id) REFERENCES public.positions(position_id);
 R   ALTER TABLE ONLY public.footballers DROP CONSTRAINT footballers_position_id_fkey;
       public       postgres    false    200    199    2700            	      x������ � �            x������ � �         3   x�3�t�O��NM-H-�2�tJL��2��H�IK1M8����R�b���� C>     