PGDMP                 
        y            Mex_1    13.1    13.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16442    Mex_1    DATABASE     d   CREATE DATABASE "Mex_1" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "Mex_1";
                postgres    false                        2615    16443    coat    SCHEMA        CREATE SCHEMA coat;
    DROP SCHEMA coat;
                postgres    false            �           0    0    SCHEMA coat    COMMENT     &   COMMENT ON SCHEMA coat IS 'шуба';
                   postgres    false    4            �            1259    16444    coat    TABLE     �   CREATE TABLE coat.coat (
    id_coat bigint NOT NULL,
    name_zakazchik text NOT NULL,
    size "char" NOT NULL,
    material text NOT NULL,
    id_proect bigint NOT NULL
);
    DROP TABLE coat.coat;
       coat         heap    postgres    false    4            �            1259    16468    material    TABLE     �   CREATE TABLE coat.material (
    id_material bigint NOT NULL,
    name_material text NOT NULL,
    prise_material money NOT NULL,
    col_vo_materiala bigint NOT NULL
);
    DROP TABLE coat.material;
       coat         heap    postgres    false    4            �            1259    16473    proect    TABLE     �   CREATE TABLE coat.proect (
    id_proect bigint NOT NULL,
    id_zakaz bigint NOT NULL,
    material "char" NOT NULL,
    prise_proect money NOT NULL,
    auvthor_proect text NOT NULL
);
    DROP TABLE coat.proect;
       coat         heap    postgres    false    4            �            1259    16452    zakaz    TABLE     �   CREATE TABLE coat.zakaz (
    id_zakaz bigint NOT NULL,
    name_zakazchik text NOT NULL,
    stoimost money NOT NULL,
    "Info_zakaz" text NOT NULL
);
    DROP TABLE coat.zakaz;
       coat         heap    postgres    false    4            �            1259    16460 	   zakazchik    TABLE     �   CREATE TABLE coat.zakazchik (
    id_zakazchik bigint NOT NULL,
    name_zakazchik text NOT NULL,
    info_zakazchik text NOT NULL
);
    DROP TABLE coat.zakazchik;
       coat         heap    postgres    false    4            �          0    16444    coat 
   TABLE DATA           P   COPY coat.coat (id_coat, name_zakazchik, size, material, id_proect) FROM stdin;
    coat          postgres    false    201          �          0    16468    material 
   TABLE DATA           ^   COPY coat.material (id_material, name_material, prise_material, col_vo_materiala) FROM stdin;
    coat          postgres    false    204   K       �          0    16473    proect 
   TABLE DATA           [   COPY coat.proect (id_proect, id_zakaz, material, prise_proect, auvthor_proect) FROM stdin;
    coat          postgres    false    205   �       �          0    16452    zakaz 
   TABLE DATA           O   COPY coat.zakaz (id_zakaz, name_zakazchik, stoimost, "Info_zakaz") FROM stdin;
    coat          postgres    false    202   �       �          0    16460 	   zakazchik 
   TABLE DATA           O   COPY coat.zakazchik (id_zakazchik, name_zakazchik, info_zakazchik) FROM stdin;
    coat          postgres    false    203   �       7           2606    16451    coat coat_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY coat.coat
    ADD CONSTRAINT coat_pkey PRIMARY KEY (id_coat, name_zakazchik);
 6   ALTER TABLE ONLY coat.coat DROP CONSTRAINT coat_pkey;
       coat            postgres    false    201    201            =           2606    16472    material material_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY coat.material
    ADD CONSTRAINT material_pkey PRIMARY KEY (id_material);
 >   ALTER TABLE ONLY coat.material DROP CONSTRAINT material_pkey;
       coat            postgres    false    204            ?           2606    16480    proect proect_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY coat.proect
    ADD CONSTRAINT proect_pkey PRIMARY KEY (id_proect, id_zakaz);
 :   ALTER TABLE ONLY coat.proect DROP CONSTRAINT proect_pkey;
       coat            postgres    false    205    205            9           2606    16459    zakaz zakaz_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY coat.zakaz
    ADD CONSTRAINT zakaz_pkey PRIMARY KEY (id_zakaz, name_zakazchik);
 8   ALTER TABLE ONLY coat.zakaz DROP CONSTRAINT zakaz_pkey;
       coat            postgres    false    202    202            ;           2606    16467    zakazchik zakazchik_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY coat.zakazchik
    ADD CONSTRAINT zakazchik_pkey PRIMARY KEY (id_zakazchik);
 @   ALTER TABLE ONLY coat.zakazchik DROP CONSTRAINT zakazchik_pkey;
       coat            postgres    false    203            �      x�3��M,�L���,.-���4����� K��      �   )   x�3�,(��460�10P��45�2�,.-��2b1z\\\ �t�      �       x�3�4BK{NϢ̼D�=... >)�      �   .   x�3��M,�L�40�10P��,.-���S(άJU��S������ �V	e      �   ?   x�3��M,�L��+�MJ-�R��42615372��KL)J-.�RH/JM�S(.R%
��\1z\\\ ���     