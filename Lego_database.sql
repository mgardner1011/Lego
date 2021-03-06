PGDMP                         y         	   Lego_data    13.2    13.1     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16395 	   Lego_data    DATABASE     o   CREATE DATABASE "Lego_data" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE "Lego_data";
                postgres    false            ?            1259    16396    colors    TABLE     ?   CREATE TABLE public.colors (
    id integer NOT NULL,
    name character varying(50),
    rgb character varying(50),
    is_trans character varying(1)
);
    DROP TABLE public.colors;
       public         heap    postgres    false            ?            1259    16399    inventories    TABLE     u   CREATE TABLE public.inventories (
    id integer NOT NULL,
    version integer,
    set_num character varying(50)
);
    DROP TABLE public.inventories;
       public         heap    postgres    false            ?            1259    16402    inventory_parts    TABLE     ?   CREATE TABLE public.inventory_parts (
    inventory_id integer,
    part_num character varying(50),
    color_id integer,
    quantity integer,
    is_spare character varying(1)
);
 #   DROP TABLE public.inventory_parts;
       public         heap    postgres    false            ?            1259    16408    inventory_sets    TABLE     z   CREATE TABLE public.inventory_sets (
    inventory_id integer,
    set_num character varying(50),
    quantity integer
);
 "   DROP TABLE public.inventory_sets;
       public         heap    postgres    false            ?            1259    16411    part_categories    TABLE     a   CREATE TABLE public.part_categories (
    id integer NOT NULL,
    name character varying(50)
);
 #   DROP TABLE public.part_categories;
       public         heap    postgres    false            ?            1259    16427    parts    TABLE     ?   CREATE TABLE public.parts (
    part_num character varying(50) NOT NULL,
    name character varying(500),
    part_cat_id integer
);
    DROP TABLE public.parts;
       public         heap    postgres    false            ?            1259    16417    sets    TABLE     ?   CREATE TABLE public.sets (
    set_num character varying(50) NOT NULL,
    name character varying(100),
    year integer,
    theme_id integer,
    num_parts integer
);
    DROP TABLE public.sets;
       public         heap    postgres    false            ?            1259    16420    themes    TABLE     o   CREATE TABLE public.themes (
    id integer NOT NULL,
    name character varying(50),
    parent_id integer
);
    DROP TABLE public.themes;
       public         heap    postgres    false            >           2606    16440    colors colors_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.colors
    ADD CONSTRAINT colors_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.colors DROP CONSTRAINT colors_pkey;
       public            postgres    false    200            @           2606    16442    inventories inventories_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.inventories
    ADD CONSTRAINT inventories_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.inventories DROP CONSTRAINT inventories_pkey;
       public            postgres    false    201            B           2606    16444 $   part_categories part_categories_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.part_categories
    ADD CONSTRAINT part_categories_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.part_categories DROP CONSTRAINT part_categories_pkey;
       public            postgres    false    204            H           2606    16446    parts parts_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.parts
    ADD CONSTRAINT parts_pkey PRIMARY KEY (part_num);
 :   ALTER TABLE ONLY public.parts DROP CONSTRAINT parts_pkey;
       public            postgres    false    207            D           2606    16448    sets sets_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.sets
    ADD CONSTRAINT sets_pkey PRIMARY KEY (set_num);
 8   ALTER TABLE ONLY public.sets DROP CONSTRAINT sets_pkey;
       public            postgres    false    205            F           2606    16450    themes themes_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.themes
    ADD CONSTRAINT themes_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.themes DROP CONSTRAINT themes_pkey;
       public            postgres    false    206            L           2606    16466    inventory_parts colors_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.inventory_parts
    ADD CONSTRAINT colors_fkey FOREIGN KEY (color_id) REFERENCES public.colors(id) NOT VALID;
 E   ALTER TABLE ONLY public.inventory_parts DROP CONSTRAINT colors_fkey;
       public          postgres    false    202    2878    200            J           2606    16456     inventory_parts inventories_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.inventory_parts
    ADD CONSTRAINT inventories_fkey FOREIGN KEY (inventory_id) REFERENCES public.inventories(id) NOT VALID;
 J   ALTER TABLE ONLY public.inventory_parts DROP CONSTRAINT inventories_fkey;
       public          postgres    false    202    2880    201            M           2606    16471    inventory_sets inventories_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.inventory_sets
    ADD CONSTRAINT inventories_fkey FOREIGN KEY (inventory_id) REFERENCES public.inventories(id) NOT VALID;
 I   ALTER TABLE ONLY public.inventory_sets DROP CONSTRAINT inventories_fkey;
       public          postgres    false    2880    203    201            P           2606    16481    parts part_categories_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.parts
    ADD CONSTRAINT part_categories_fkey FOREIGN KEY (part_cat_id) REFERENCES public.part_categories(id) NOT VALID;
 D   ALTER TABLE ONLY public.parts DROP CONSTRAINT part_categories_fkey;
       public          postgres    false    207    204    2882            K           2606    16461    inventory_parts parts_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.inventory_parts
    ADD CONSTRAINT parts_fkey FOREIGN KEY (part_num) REFERENCES public.parts(part_num) NOT VALID;
 D   ALTER TABLE ONLY public.inventory_parts DROP CONSTRAINT parts_fkey;
       public          postgres    false    207    202    2888            I           2606    16451    inventories sets_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.inventories
    ADD CONSTRAINT sets_fkey FOREIGN KEY (set_num) REFERENCES public.sets(set_num) NOT VALID;
 ?   ALTER TABLE ONLY public.inventories DROP CONSTRAINT sets_fkey;
       public          postgres    false    201    2884    205            N           2606    16476    inventory_sets sets_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.inventory_sets
    ADD CONSTRAINT sets_fkey FOREIGN KEY (set_num) REFERENCES public.sets(set_num) NOT VALID;
 B   ALTER TABLE ONLY public.inventory_sets DROP CONSTRAINT sets_fkey;
       public          postgres    false    203    205    2884            O           2606    16486    sets themes_fkey    FK CONSTRAINT     {   ALTER TABLE ONLY public.sets
    ADD CONSTRAINT themes_fkey FOREIGN KEY (theme_id) REFERENCES public.themes(id) NOT VALID;
 :   ALTER TABLE ONLY public.sets DROP CONSTRAINT themes_fkey;
       public          postgres    false    206    2886    205           