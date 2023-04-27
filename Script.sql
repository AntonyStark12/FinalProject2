PGDMP     (                    {            Shop    15.1    15.1 5    5           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            6           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            7           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            8           1262    16704    Shop    DATABASE     z   CREATE DATABASE "Shop" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "Shop";
                postgres    false            �            1259    16706    category    TABLE     [   CREATE TABLE public.category (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    16705    category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          postgres    false    215            9           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          postgres    false    214            �            1259    16713    image    TABLE     ~   CREATE TABLE public.image (
    id integer NOT NULL,
    file_name character varying(255),
    product_id integer NOT NULL
);
    DROP TABLE public.image;
       public         heap    postgres    false            �            1259    16712    image_id_seq    SEQUENCE     �   CREATE SEQUENCE public.image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.image_id_seq;
       public          postgres    false    217            :           0    0    image_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.image_id_seq OWNED BY public.image.id;
          public          postgres    false    216            �            1259    16720    orders    TABLE       CREATE TABLE public.orders (
    id integer NOT NULL,
    count integer NOT NULL,
    date_time timestamp(6) without time zone,
    number character varying(255),
    price real NOT NULL,
    status smallint,
    person_id integer NOT NULL,
    product_id integer NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    16719    orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          postgres    false    219            ;           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          postgres    false    218            �            1259    16727    person    TABLE     �   CREATE TABLE public.person (
    id integer NOT NULL,
    login character varying(100),
    password character varying(255),
    role character varying(255)
);
    DROP TABLE public.person;
       public         heap    postgres    false            �            1259    16726    person_id_seq    SEQUENCE     �   CREATE SEQUENCE public.person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.person_id_seq;
       public          postgres    false    221            <           0    0    person_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.person_id_seq OWNED BY public.person.id;
          public          postgres    false    220            �            1259    16736    product    TABLE     �  CREATE TABLE public.product (
    id integer NOT NULL,
    date_time timestamp(6) without time zone,
    description text NOT NULL,
    price real NOT NULL,
    seller character varying(255) NOT NULL,
    title text NOT NULL,
    warehouse character varying(255) NOT NULL,
    category_id integer NOT NULL,
    CONSTRAINT product_price_check CHECK ((price >= (1)::double precision))
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    16746    product_cart    TABLE     m   CREATE TABLE public.product_cart (
    id integer NOT NULL,
    person_id integer,
    product_id integer
);
     DROP TABLE public.product_cart;
       public         heap    postgres    false            �            1259    16745    product_cart_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.product_cart_id_seq;
       public          postgres    false    225            =           0    0    product_cart_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.product_cart_id_seq OWNED BY public.product_cart.id;
          public          postgres    false    224            �            1259    16735    product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          postgres    false    223            >           0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public          postgres    false    222            ~           2604    16709    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215                       2604    16716    image id    DEFAULT     d   ALTER TABLE ONLY public.image ALTER COLUMN id SET DEFAULT nextval('public.image_id_seq'::regclass);
 7   ALTER TABLE public.image ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    16723 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    16730 	   person id    DEFAULT     f   ALTER TABLE ONLY public.person ALTER COLUMN id SET DEFAULT nextval('public.person_id_seq'::regclass);
 8   ALTER TABLE public.person ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    16739 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    16749    product_cart id    DEFAULT     r   ALTER TABLE ONLY public.product_cart ALTER COLUMN id SET DEFAULT nextval('public.product_cart_id_seq'::regclass);
 >   ALTER TABLE public.product_cart ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            (          0    16706    category 
   TABLE DATA                 public          postgres    false    215   n9       *          0    16713    image 
   TABLE DATA                 public          postgres    false    217   �9       ,          0    16720    orders 
   TABLE DATA                 public          postgres    false    219   S>       .          0    16727    person 
   TABLE DATA                 public          postgres    false    221   n?       0          0    16736    product 
   TABLE DATA                 public          postgres    false    223   �@       2          0    16746    product_cart 
   TABLE DATA                 public          postgres    false    225   KU       ?           0    0    category_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.category_id_seq', 3, true);
          public          postgres    false    214            @           0    0    image_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.image_id_seq', 40, true);
          public          postgres    false    216            A           0    0    orders_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.orders_id_seq', 3, true);
          public          postgres    false    218            B           0    0    person_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.person_id_seq', 3, true);
          public          postgres    false    220            C           0    0    product_cart_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.product_cart_id_seq', 3, true);
          public          postgres    false    224            D           0    0    product_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.product_id_seq', 8, true);
          public          postgres    false    222            �           2606    16711    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    215            �           2606    16718    image image_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.image DROP CONSTRAINT image_pkey;
       public            postgres    false    217            �           2606    16725    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    219            �           2606    16734    person person_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
       public            postgres    false    221            �           2606    16751    product_cart product_cart_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT product_cart_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT product_cart_pkey;
       public            postgres    false    225            �           2606    16744    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    223            �           2606    16753 $   product uk_qka6vxqdy1dprtqnx9trdd47c 
   CONSTRAINT     `   ALTER TABLE ONLY public.product
    ADD CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c UNIQUE (title);
 N   ALTER TABLE ONLY public.product DROP CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c;
       public            postgres    false    223            �           2606    16759 "   orders fk1b0m4muwx1t377w9if3w6wwqn    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn FOREIGN KEY (person_id) REFERENCES public.person(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn;
       public          postgres    false    219    221    3212            �           2606    16769 #   product fk1mtsbur82frn64de7balymq9s    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT fk1mtsbur82frn64de7balymq9s FOREIGN KEY (category_id) REFERENCES public.category(id);
 M   ALTER TABLE ONLY public.product DROP CONSTRAINT fk1mtsbur82frn64de7balymq9s;
       public          postgres    false    223    3206    215            �           2606    16764 "   orders fk787ibr3guwp6xobrpbofnv7le    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk787ibr3guwp6xobrpbofnv7le FOREIGN KEY (product_id) REFERENCES public.product(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk787ibr3guwp6xobrpbofnv7le;
       public          postgres    false    3214    219    223            �           2606    16754 !   image fkgpextbyee3uk9u6o2381m7ft1    FK CONSTRAINT     �   ALTER TABLE ONLY public.image
    ADD CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1 FOREIGN KEY (product_id) REFERENCES public.product(id);
 K   ALTER TABLE ONLY public.image DROP CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1;
       public          postgres    false    217    3214    223            �           2606    16779 (   product_cart fkhpnrxdy3jhujameyod08ilvvw    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw FOREIGN KEY (product_id) REFERENCES public.product(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw;
       public          postgres    false    225    223    3214            �           2606    16774 (   product_cart fksgnkc1ko2i1o9yr2p63ysq3rn    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn FOREIGN KEY (person_id) REFERENCES public.person(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn;
       public          postgres    false    221    225    3212            (      x���v
Q���W((M��L�KN,IM�/�T��L�Q�K�M�Ts�	uV�0�QP�0����x��uMk.OҌ01���ۀ�2�01�b�Ŧ�.l���b����b녽v\�1�� �6VG      *   F  x���͎�5E�y��%��Ze�]�ŊE�P�H`���J B����7�YLϮO۾>�����w�|������۷�������y{�8n�����O�:n���k|����8��~��_�}��ч���V�'Ӳ�(y��J�d]����"�p���������W�O���i�@�-��j&�dd.��ꝃ��K+����zp�R���Iv�íת<��RĶwU��%*��DiԀ�Y��1����{z)b` }���$ǀ�N-#�Kf(�����b� ��\M��jd�Nj1ec�c\ّcd2��J��"<��FI�d�T��[��s� �S�3fJf�Ŗi�����[�+=����<bt��lRҍ��iH��=!�v������US��\�ccG'_C�YSS�Ѥ_�9Gn��ႚ��tJM��~A
��#����3733�|��+�t�#��g�Mv�L5/����#��3qI�R�.P��@�������l�s��O/eFg�`��-P���]l�i����12n�4�3�Rh���q_�(��S����9�I?ROd�p�ե���AUt�����|����|�V�#>�}{}�j�on%_W|Α[?A � �uA���N>V����m�W|Α[?���'e�8ˈ
kua8��\��s����*�W�����n@թ�q��Z��9Gn���0�(�8���"�fԳ�M	��ܨ��a��4c�%���v{��B��_�_�(�+B��m ��Eł�\L)�(�ı�(�J��ʋ!��Z�rQN��ePMp�;�l���1R������-�j���\�d%b3� ��|E���BZi��Fْq��E��W�b��+�C��,��*>q;G��f�b�!��Ǵ]:Gn5]V]�x-Pb��؜fY�1�,_:Gn!����)Ott���b�3v�z��4-�b�H�d>Bf����m�a��:Gn-�!E��b�8�$�G	�CW�bV�����1r�Gb\�Qa�㈅EVL+Q�x�����9r���gF<r�޳�*��Kd��^�9Gn�D��yFk⭉q�jI�����+>���4M�ص�њ�r�����j]���|��_f��      ,     x���=k�@�=��$`I��N2J
M�5�W������υN�܂����9���˫�^��m�}j�1��.6}nD��Ԉ�r��Ki�u��26�6����)L�52\OK�6yNS=o������(6ԈZkF��
X�Nc'uk���e�)@��AYg���c�6&��7��Dį�j�����%PǺEm�H�H���
IB:eC�(�
��� U��P��$��묬��G@G����S uf���PYҐ�6�jX�>0�_      .     x���Ko�@ཿb&jb
�J���š��֍��tf2j����ƤKw7'9'_��|k�6ڻ��q[%O4c�`Z�sВ��s@���6�����X>��9��<�1�ƒ8N(�-fr�n���Ҿ.¾7�ܞ��6]'~�=��y�_����߹�u�d�:�rI�\���{����8IHUz�!6Bf��b)��Ł��Z�7��<��ϥ�[=������Q���\u��&���G45ثR�3kc�;�����o,MZݲ���c�����s      0      x��[[oWr~���<�6M��p��<	=�m��`���"	�2(��q8�Z��v�ŖV�Y yh�Ls�si���Q���:}�{Hlx�9=�ϥN�W_]�ֻ�|���ֻ�|��?�߽���ރ�?��\��8>������Ov�ϝ���v?��}�i|��{��=ܹg/�w���������>Hޣ����o������o������v��j��V�V'h4��6������Fg�m�6�ce�l���A�4���9�g_�?'׷�f����6�����׃��̓�e�����Y�<?���E�4;�o�c�͂�M�揲$�AY��YgSZ(�y�!���Gy/[d��1�J�(����)�����fI�������	<�a����Oi֔��!y�4 ���4?�i�d5Ⱦ͢���1͐]�xiA,���v7��+��G�_�y�����A��FY��������K��4�yvJ��Y#�g!�	��f㻈6��u�e	�{$Mp�B�2,�i`C�-r�]Ѱ���vD8%5`��4bL��g}�8/tJ���K��adk�4���x�#���s;'ɂ���<"���m��X����x���Wq�Vt��ok#��L� ���yw"�)�����J4��2�Ue�ޖ~Cݮ�<���) E���4$a�d#Z�G�@3��L���&�K�c��9K6�˨z���/ﴜ�s@i�	+��jYAa�y��]ȝ�y�SHp^�ع��b�Ь./��|ܩ��1N��Fs�h�1]�s��.���dWj�X@5����d���XEI	'���rٸy,𧧖B'Ne1����7Ech�_�qTg����K*Kzc�R$�SP�#�����-�'b���Clk!
����uX��N�&�If�	�v]��-t`U����IGz)�u�����&Fآ|�1�p����gZ	���옎����Yk4�jްu�F����`�i�<Y�����1Ԛ��K�;��{>���7�C!Vx��E6YJϚ����[?��n���ݾ��y%G��$Y�\�7:a+���Iw�W�Gӕ	d��������H�"q�%����jr	V3�/�ś}IƤʃB�/Y�y�f,P56�3�M�?Q\ j�+�Fl7�A����"Ká����9���u줋�����'i��=|�<��{�ռeȘ� '��@��.h�x>��gff��,w0��j����%� ^�w�[����0���g"�`C��x��
���c�#�2$,�b�]F��C+�E����q� ��ׄQ`�;-�+����������nc&��.��BP�d?aa; ��3,���`Ώ+'ʟ��b�V�P���"�Iۯ�d�}���
��PlXc�C�	�^*�B���<��Sxk��c���'pTɪ�c�B���1�¶��V�L&CSb;J��α�P�:��ǈ����PV9�h�ך펪���T�-��-!�c�n�0`L�8V%�;Y����P�4�g~�)ꡡ�C�$�`�SK�.;�i�T�`ԕO9T�
U<�}�����1�8�d�J+@qh�o<�c}�Rl�n�[�ͭN����R&Es�����<(Ͳ���6��kNm�T�_�g���ˬƓ�%^����\�D�d���!���ǺM��we6�����ԈSb2��b^�Ds��5Cp��D����R�����XƟoxZ����CV� @3)�c@Y��������'�b${!�X@"�Ȃ��S�D x��K��U#4?��C�ImK���ql7t�Y�*�oDD-��87�Ō~��ynA'	�$M	��gE���3���_�� ـbEa�P��ǨQ��LF�yM�^hvB�Đ4��֦E��'�1.�(���Sp�����` ��@�O�+]��	��*h����l�4[op/Cb�m�ߏ�����y! %�3���^�'�������Vs}���I��F�ou��-�$e�#V�3z0[B���
���t��9z��Ք�t�VN�� ��>�����#8�C�	=La騹�_�V3I��H����=�d��T��9�����_�A��5ˡb+��l��T7���.-%Z�j ��5�5�,����j� s#0���])@
���,X��u!n��̴/X��:����0s�Q�-�+��y�{��$ݺ���l4g�R��*����+A�-I��1h��L�e�%��C��ӂ+y�ZII�5g��UkhX�X-i�d�uXa�Y6�㉅���18/k�D�qS�4�D�$S�0� �'0� ���ȝ��C�`,���~�,eժrj�HǸù��\�+�u�}/Y��'|�~�#E>�o�cV�����#���ך�5[b������4Ǣ�K��ȥ�ʃ�
�,ԯr�sD�eTb���C�H	�nA b�`-C˗�`�[�Q0~�%E�,r��@��[�1џ)Vs֠!Yf˴�����p�V#�u[8&'|`���(��ȧi��&/�"?c�q��/SYoI���|������+�9C�:��K�(H�]\k� i�;

�a#ny�߫��?N��\�ӏr��Y��4\����H�%��i �
틂�p�o��e��b����%:�5�_�䕍v��	����J��Z��Z�Zo��8���~�T�#��2�K�N6�S'������Fg}���m~���Y�r3�ogb�<���Z+��������h0�$�-!"�qOa)���EIR�l��yEq*��@��Ȍ�W�� f;�����t�+r�J=��a�4�μ왋 �C���P��#��Da�>%�	1R�|U/M��r� ����x;P�:ŶN�����I`
��3�{d�����O�@����d\(���Y�l5H�-|�T�Ld-S��:�Gx�)2���rH���g���ȅK
���T��B][(},L�͛��|�,ly�A�N4�"i���MDُ����Ӵ�R������V��zX�ԥ<bQ�D	�4��|\W�=�#�L����#��&��KE7d�r�]6x5-������^�}��I�k���`�B�L�\�٬�@vX�1�V��7��V����x "RӾЊ�SfRȡ��ǶʢA�LQ�B�1�e:�ˋ��3�ޙ.��_����|�)�?;��NrX��k���R;�x���jod�oY��cC�#<�1�Ud/L]�zGR"�u�"h{hCd��̐$5��x]��K~7�zYYM�=�w⒆�&_[��'�z3\�,�I҆1���i�����R��1�b#x�t�3Q�^��w��Z���ǣ ��[�eY�_��-׹��Ź��Y�%�T�{P&	˭܋�!����-��޻������(�h�\J͓ ����P�I�e��O�%�T˥��L؝�S�
KE~�!��w��;��4֑�\SH��l��`�I�~#���lw.��7�n���
��5�Yc��$WS��{;��<*��r=��W^�R[?9K]��ԭ����fs��la��	�;�\��l,�!�QU�Ea-�-{X��H�GFI�u�=�:Ù!I�)5K7""B0)3����+��N�nY�J���k��4*�zL�=��5�J�T-7��hki����|b��B��evBa�Q�������F�W��wٷ:���f#�z�/I��i�$��-�T�����v�5�Tz7-�Q�����P1�z�,�Ӈ�4��Γ� >�0h����Vk�7�#X���>K�!��F2V�5�*�:mH�j��Y�9�"	]�t�D�9�t;b���I`tثT��.�L�af^$n�5��j0�~�1rҾ%-�6m!�*`X)!� �s`���!'�/�o��=њ�f�}��	h�岂ڋd4�-۳�y�YUĵDj��#���FSM{_�	I��D�ɧ��.������8�����#�;�GV��%����aA�^ ��.�s��N�uPփ�X�S4���AJ�rG��+9bN�鮒KU�T����JiK��[K�"XZ��٤ƫ o�H# �  ��eJI�%--8��`�)Q�6׃|�$�+%%�0�	Ǖ��pY�V�h2Q��S'�]��3cP�25�+���	a��G��^]��$�ƢgR�А8��m���iv�ljm5�޽$+9���<5����_q���&�����ރ�������$L�gÜ6j̩��n��6��-l�&����l�Z�:`"��Br�U[�ʃB)7Jڃ��T�9�0���$�P?��}��ݽ�wn���PR��^ ���8�]�)<�������V']b�u�@�"�2�>��<�FQ`���GN�b�.�U1_1�e���{�;���F�O��a��Ψ���Y-�uZo���oSJ^���Zu�RY�~UV�!ڧg��}�[�P��Z�XӁ�)��[sC"��<�A���5�HX��w�zs�6�	8�_�MJJ�g?S@����z^Au�dIi�������7Q��@c*��Q������]��뫽����2Q�R�6�&�����W���*���O�ܡf�.UĚ�m-��~���:llG���"n�%y�[���OKz��*��.R�tf�ABN4�>/~��~�Ŕ�F��ͭ(;`+�1K.j�v1���!�%l�xY�i)Ɋ�s�	.*���k�CX�$E3���ǫ��I���C�d5[[[�'d�;ʨ/����������wܿ���p�i����OD΁I-TJqw��^���w����>�~�K[��]�fݥ������VgS\ڷE�4 �{)X��7>�}�����B�I'
n���/�Kk�ԃ��R��T˗u�]oj�~dUm��$C"-����>&ðMx�����^@�j��.�ê��s(/��3~�f5s�㽼�0�!��U�/���w�Ks�\��dǒ{u�9��4���w�#̅�A�f���.}�D.��iHcf�E��j,Wn���r
��\��#U(1jk��T��ƥڼ�8��=�AJ�Lj�h�+�nĹ����c�tX���TՎ��H��}�*b:�"qdX�"و��S�e��p1���b}��I�"�"�8g�����Y����X+V�B�5�_K�}h�AU�'��/�#��z����H��DQ�B�g��<� �Q�5��:��8�g�]��z�s%�+VI��*P��;7V6���f��^i4� ���?�g�      2   
   x���         