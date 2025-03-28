PGDMP                      }         	   comics_db    17.2    17.2 -    6           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            7           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            8           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            9           1262    17345 	   comics_db    DATABASE     }   CREATE DATABASE comics_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE comics_db;
                     postgres    false            �            1259    17346    Chapter    TABLE     y   CREATE TABLE public."Chapter" (
    "Chapter ID" smallint NOT NULL,
    "Comics ID" integer NOT NULL,
    "Name" text
);
    DROP TABLE public."Chapter";
       public         heap r       postgres    false            �            1259    17351 
   Collection    TABLE     �   CREATE TABLE public."Collection" (
    "Collection ID" integer NOT NULL,
    "Name" text NOT NULL,
    "Reader ID" integer NOT NULL
);
     DROP TABLE public."Collection";
       public         heap r       postgres    false            �            1259    17356    Collection Positions    TABLE     �   CREATE TABLE public."Collection Positions" (
    "Collection ID" integer NOT NULL,
    "Comics ID" integer NOT NULL,
    "Note" text
);
 *   DROP TABLE public."Collection Positions";
       public         heap r       postgres    false            �            1259    17361    Comics    TABLE     �   CREATE TABLE public."Comics" (
    "Name" text NOT NULL,
    "Comics ID" integer NOT NULL,
    "Release date" date NOT NULL,
    "Team ID" integer NOT NULL,
    "Description" text
);
    DROP TABLE public."Comics";
       public         heap r       postgres    false            �            1259    17366    Comment    TABLE     �   CREATE TABLE public."Comment" (
    "Date" date NOT NULL,
    "Text" text NOT NULL,
    "Reader ID" integer NOT NULL,
    "Comment ID" integer NOT NULL,
    "Comics ID" integer NOT NULL
);
    DROP TABLE public."Comment";
       public         heap r       postgres    false            �            1259    17371 
   Content-maker    TABLE     �   CREATE TABLE public."Content-maker" (
    "Nickname" text NOT NULL,
    "Login" text NOT NULL,
    "Password" text NOT NULL,
    "Content-maker ID" integer NOT NULL
);
 #   DROP TABLE public."Content-maker";
       public         heap r       postgres    false            �            1259    17376    Reader    TABLE     �   CREATE TABLE public."Reader" (
    "Nickname" text NOT NULL,
    "Login" text NOT NULL,
    "Password" text NOT NULL,
    "Reader ID" integer NOT NULL
);
    DROP TABLE public."Reader";
       public         heap r       postgres    false            �            1259    17381    Subscription    TABLE     �   CREATE TABLE public."Subscription" (
    "Price (rub)" smallint,
    "Payment date" date NOT NULL,
    "Reader ID" integer NOT NULL,
    "Comics ID" integer NOT NULL,
    "Subscription ID" integer NOT NULL
);
 "   DROP TABLE public."Subscription";
       public         heap r       postgres    false            �            1259    17384    Team    TABLE     Y   CREATE TABLE public."Team" (
    "Team ID" integer NOT NULL,
    "Name" text NOT NULL
);
    DROP TABLE public."Team";
       public         heap r       postgres    false            �            1259    17389 
   Team roles    TABLE     �   CREATE TABLE public."Team roles" (
    "Team ID" integer NOT NULL,
    "Content-maker ID" integer NOT NULL,
    "Role name" text NOT NULL
);
     DROP TABLE public."Team roles";
       public         heap r       postgres    false            *          0    17346    Chapter 
   TABLE DATA           F   COPY public."Chapter" ("Chapter ID", "Comics ID", "Name") FROM stdin;
    public               postgres    false    217   *;       +          0    17351 
   Collection 
   TABLE DATA           L   COPY public."Collection" ("Collection ID", "Name", "Reader ID") FROM stdin;
    public               postgres    false    218   �<       ,          0    17356    Collection Positions 
   TABLE DATA           V   COPY public."Collection Positions" ("Collection ID", "Comics ID", "Note") FROM stdin;
    public               postgres    false    219   l>       -          0    17361    Comics 
   TABLE DATA           a   COPY public."Comics" ("Name", "Comics ID", "Release date", "Team ID", "Description") FROM stdin;
    public               postgres    false    220   
B       .          0    17366    Comment 
   TABLE DATA           [   COPY public."Comment" ("Date", "Text", "Reader ID", "Comment ID", "Comics ID") FROM stdin;
    public               postgres    false    221   �K       /          0    17371 
   Content-maker 
   TABLE DATA           ^   COPY public."Content-maker" ("Nickname", "Login", "Password", "Content-maker ID") FROM stdin;
    public               postgres    false    222   �P       0          0    17376    Reader 
   TABLE DATA           P   COPY public."Reader" ("Nickname", "Login", "Password", "Reader ID") FROM stdin;
    public               postgres    false    223   �S       1          0    17381    Subscription 
   TABLE DATA           t   COPY public."Subscription" ("Price (rub)", "Payment date", "Reader ID", "Comics ID", "Subscription ID") FROM stdin;
    public               postgres    false    224   �V       2          0    17384    Team 
   TABLE DATA           3   COPY public."Team" ("Team ID", "Name") FROM stdin;
    public               postgres    false    225   �X       3          0    17389 
   Team roles 
   TABLE DATA           R   COPY public."Team roles" ("Team ID", "Content-maker ID", "Role name") FROM stdin;
    public               postgres    false    226   �Z       {           2606    17395    Chapter Chapter_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public."Chapter"
    ADD CONSTRAINT "Chapter_pkey" PRIMARY KEY ("Chapter ID", "Comics ID");
 B   ALTER TABLE ONLY public."Chapter" DROP CONSTRAINT "Chapter_pkey";
       public                 postgres    false    217    217                       2606    17397 .   Collection Positions Collection Positions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Collection Positions"
    ADD CONSTRAINT "Collection Positions_pkey" PRIMARY KEY ("Collection ID", "Comics ID");
 \   ALTER TABLE ONLY public."Collection Positions" DROP CONSTRAINT "Collection Positions_pkey";
       public                 postgres    false    219    219            }           2606    17399    Collection Collection_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public."Collection"
    ADD CONSTRAINT "Collection_pkey" PRIMARY KEY ("Collection ID");
 H   ALTER TABLE ONLY public."Collection" DROP CONSTRAINT "Collection_pkey";
       public                 postgres    false    218            �           2606    17401    Comics Comics_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Comics"
    ADD CONSTRAINT "Comics_pkey" PRIMARY KEY ("Comics ID");
 @   ALTER TABLE ONLY public."Comics" DROP CONSTRAINT "Comics_pkey";
       public                 postgres    false    220            �           2606    17403    Comment Comment_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Comment"
    ADD CONSTRAINT "Comment_pkey" PRIMARY KEY ("Comment ID");
 B   ALTER TABLE ONLY public."Comment" DROP CONSTRAINT "Comment_pkey";
       public                 postgres    false    221            �           2606    17405     Content-maker Content-maker_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public."Content-maker"
    ADD CONSTRAINT "Content-maker_pkey" PRIMARY KEY ("Content-maker ID");
 N   ALTER TABLE ONLY public."Content-maker" DROP CONSTRAINT "Content-maker_pkey";
       public                 postgres    false    222            �           2606    17407    Subscription Subscription_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public."Subscription"
    ADD CONSTRAINT "Subscription_pkey" PRIMARY KEY ("Subscription ID");
 L   ALTER TABLE ONLY public."Subscription" DROP CONSTRAINT "Subscription_pkey";
       public                 postgres    false    224            �           2606    17409    Team roles Team roles_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public."Team roles"
    ADD CONSTRAINT "Team roles_pkey" PRIMARY KEY ("Team ID", "Content-maker ID");
 H   ALTER TABLE ONLY public."Team roles" DROP CONSTRAINT "Team roles_pkey";
       public                 postgres    false    226    226            �           2606    17411    Team Team_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public."Team"
    ADD CONSTRAINT "Team_pkey" PRIMARY KEY ("Team ID");
 <   ALTER TABLE ONLY public."Team" DROP CONSTRAINT "Team_pkey";
       public                 postgres    false    225            �           2606    17413    Reader reader_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public."Reader"
    ADD CONSTRAINT reader_pkey PRIMARY KEY ("Reader ID");
 >   ALTER TABLE ONLY public."Reader" DROP CONSTRAINT reader_pkey;
       public                 postgres    false    223            �           2606    17414    Chapter Chapter_Comics ID_fkey 
   FK CONSTRAINT     �   ALTER TABLE ONLY public."Chapter"
    ADD CONSTRAINT "Chapter_Comics ID_fkey" FOREIGN KEY ("Comics ID") REFERENCES public."Comics"("Comics ID") ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public."Chapter" DROP CONSTRAINT "Chapter_Comics ID_fkey";
       public               postgres    false    217    220    4737            �           2606    17419 <   Collection Positions Collection Positions_Collection ID_fkey 
   FK CONSTRAINT     �   ALTER TABLE ONLY public."Collection Positions"
    ADD CONSTRAINT "Collection Positions_Collection ID_fkey" FOREIGN KEY ("Collection ID") REFERENCES public."Collection"("Collection ID") ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 j   ALTER TABLE ONLY public."Collection Positions" DROP CONSTRAINT "Collection Positions_Collection ID_fkey";
       public               postgres    false    4733    219    218            �           2606    17424 8   Collection Positions Collection Positions_Comics ID_fkey 
   FK CONSTRAINT     �   ALTER TABLE ONLY public."Collection Positions"
    ADD CONSTRAINT "Collection Positions_Comics ID_fkey" FOREIGN KEY ("Comics ID") REFERENCES public."Comics"("Comics ID") ON UPDATE RESTRICT ON DELETE CASCADE;
 f   ALTER TABLE ONLY public."Collection Positions" DROP CONSTRAINT "Collection Positions_Comics ID_fkey";
       public               postgres    false    219    4737    220            �           2606    17429 "   Collection Collection_User ID_fkey 
   FK CONSTRAINT     �   ALTER TABLE ONLY public."Collection"
    ADD CONSTRAINT "Collection_User ID_fkey" FOREIGN KEY ("Reader ID") REFERENCES public."Reader"("Reader ID") ON UPDATE RESTRICT ON DELETE CASCADE NOT VALID;
 P   ALTER TABLE ONLY public."Collection" DROP CONSTRAINT "Collection_User ID_fkey";
       public               postgres    false    223    218    4743            �           2606    17434    Comics Comics_Team ID_fkey 
   FK CONSTRAINT     �   ALTER TABLE ONLY public."Comics"
    ADD CONSTRAINT "Comics_Team ID_fkey" FOREIGN KEY ("Team ID") REFERENCES public."Team"("Team ID") ON UPDATE RESTRICT ON DELETE RESTRICT NOT VALID;
 H   ALTER TABLE ONLY public."Comics" DROP CONSTRAINT "Comics_Team ID_fkey";
       public               postgres    false    225    220    4747            �           2606    17439    Comment Comment_Comics ID_fkey 
   FK CONSTRAINT     �   ALTER TABLE ONLY public."Comment"
    ADD CONSTRAINT "Comment_Comics ID_fkey" FOREIGN KEY ("Comics ID") REFERENCES public."Comics"("Comics ID") ON UPDATE RESTRICT ON DELETE CASCADE NOT VALID;
 L   ALTER TABLE ONLY public."Comment" DROP CONSTRAINT "Comment_Comics ID_fkey";
       public               postgres    false    221    220    4737            �           2606    17444    Comment Comment_User ID_fkey 
   FK CONSTRAINT     �   ALTER TABLE ONLY public."Comment"
    ADD CONSTRAINT "Comment_User ID_fkey" FOREIGN KEY ("Reader ID") REFERENCES public."Reader"("Reader ID") ON UPDATE RESTRICT ON DELETE CASCADE NOT VALID;
 J   ALTER TABLE ONLY public."Comment" DROP CONSTRAINT "Comment_User ID_fkey";
       public               postgres    false    223    221    4743            �           2606    17449 (   Subscription Subscription_Comics ID_fkey 
   FK CONSTRAINT     �   ALTER TABLE ONLY public."Subscription"
    ADD CONSTRAINT "Subscription_Comics ID_fkey" FOREIGN KEY ("Comics ID") REFERENCES public."Comics"("Comics ID") ON UPDATE RESTRICT ON DELETE RESTRICT NOT VALID;
 V   ALTER TABLE ONLY public."Subscription" DROP CONSTRAINT "Subscription_Comics ID_fkey";
       public               postgres    false    224    220    4737            �           2606    17454 &   Subscription Subscription_User ID_fkey 
   FK CONSTRAINT     �   ALTER TABLE ONLY public."Subscription"
    ADD CONSTRAINT "Subscription_User ID_fkey" FOREIGN KEY ("Reader ID") REFERENCES public."Reader"("Reader ID") ON UPDATE RESTRICT ON DELETE CASCADE NOT VALID;
 T   ALTER TABLE ONLY public."Subscription" DROP CONSTRAINT "Subscription_User ID_fkey";
       public               postgres    false    224    4743    223            �           2606    17459 +   Team roles Team roles_Content-maker ID_fkey 
   FK CONSTRAINT     �   ALTER TABLE ONLY public."Team roles"
    ADD CONSTRAINT "Team roles_Content-maker ID_fkey" FOREIGN KEY ("Content-maker ID") REFERENCES public."Content-maker"("Content-maker ID") ON UPDATE RESTRICT ON DELETE CASCADE NOT VALID;
 Y   ALTER TABLE ONLY public."Team roles" DROP CONSTRAINT "Team roles_Content-maker ID_fkey";
       public               postgres    false    222    226    4741            �           2606    17464 "   Team roles Team roles_Team ID_fkey 
   FK CONSTRAINT     �   ALTER TABLE ONLY public."Team roles"
    ADD CONSTRAINT "Team roles_Team ID_fkey" FOREIGN KEY ("Team ID") REFERENCES public."Team"("Team ID") ON UPDATE RESTRICT ON DELETE CASCADE;
 P   ALTER TABLE ONLY public."Team roles" DROP CONSTRAINT "Team roles_Team ID_fkey";
       public               postgres    false    226    225    4747            *   x  x�=PAn�@]{����>7`�6)D�O��T%�R��� p�/�G,�g���J�Y����g#p�P������X����������]���}=�?�����y����_Qr'�yp�yr5]�o��s�����LV�5K)�v	B�Ȱ.���Ō�q��.��2�1��4���0�!�@���nX�$���9!���`TQ��]@2B�B��~�i� hv�`^��[�-X2�@.D8��4�h�!y��͛�f0aU�|xQ�*F ��
mwݴ�F)� ѣ+4WCHRVH�"n��
Ė�b�W����/�$k-�>���foF.�Ӣ~�c�}#f�|�[<�ig
����
2��As��woB� ���      +   �  x�UQKn�@]W�"'@�OwW݅M2�0�<�`{��d�E��� �)0gh߈��dAm��W��{��x!ԯ�m���^,���rS��	|�0�O���3 G��zX>Շ�x������������>.w����~��KP��$��׿��<\�$>�7�v,@*�9J��rU�c�`&��пD�&D`߃�Z`2�Ӱ����(������C���!&���x�8g���n3�� ���.��]N3�(9�̍��k����	���k���]�q�_y��0�s�� 
*���U��v.#HcBr��L�I�+��kN����\J�I*�`;��I���P��ժL�6��9��&�}W���Q��;�lۃ�/��9'������V��~<�ӯ�aX�)"�@���p�o�5�Dn)�|B���x      ,   �  x�uSM��4=����V�8Nrd
'$4;G.wM�Lb7�ӭ����J��8�!�gB���v�/���=,���Tի�^5���+�=}�N_�N/����<��x�����8}����������yܰ�e�_����}��ɿ��k�%����~���W����y�R��T���~
0������Oϱ�P�y~��6V���d�[�u�t������~���z%� d�:%���(�`#qm����n�ĭ�ɦ%Y�x�[g��.�W� �F�v�Zѱg6���ݖ�~O3��c���������ZT���b��'�b��~G ����vC��z���P��`�������m�!�����땐
&�V5�]h4�������`���u�8�v����s�ݣR7%Z&�Z �ǅ6�,g���tl,�-H��(��P��U?��p��M`iB�=�8\�<Ь��ۉ?�^��F
֪Z
ɮ&�zf������#��6���|]S�5�[D��C���A�	�i_�-n5PI����ʌ:hSD��=��RB�w�F4�-F8�/k��sR��<�!~K4��bC�Et}/ؠd�w��F��6d��5�x:r=Eϓ�-�v�b�P	ٳ�����'~I�7A�!�e�����]A[ �Ot�Χ���o΂v[T��/i�^��]Y�6~�)�G�\P�rE��M���d�%���ڪ�XӋF5�"b4��<<`n&�
�j���`�`�q.��i�S찷�MZSh�r<��]?Hv	ul">��sȟ�M�Ed:[���Y�a���K�·4���i��6o��
gl�neǮ0��&U,��0��p���k�aY�|�	S�Ϥ�(��MR�Qv��&�]��I�"H��L|F�z��z�Z�=�H      -   �	  x��X�n�}~Ł��$f�s͛Ӥh�:	j�u���6k�)����͒,˅�v��p��A��4őh��3Խ�>3�%�c�:�%�̹��Zk�s�o�a��)�����xi�6\��?�M�U<��W�����a�ȏ�ɿ��[�71��|�?����M����Tf���H��?��#�/M~"�Oe��)�;2q�/ea�"�-�,?�����8���Q�Ufȿ��y���|,[�H�v
�ιd�r�͞�f-�N~/0N~�g�����}��]/j�~��`Y�8���<+����|
k����%�ԵL0��p��ϊ�_�1aD+eg�i���a��N��!��ݦ��m8cd�C8e����9�ĭ��|���f��Pl?0֣cٲ�[����H��4�5[����j�Pv�	��SqW,�~�U$�b���n!­�+���#,��Х)m�dq�PֶQ��A��.v��6��,�l�8,/�<k�~�ܼs��s�$��X�Gz���:I�~� 3F�F�W�B7+���+
�Y�4�x�?����K�xBK���]��?�H���Tc0�z��#ne`O%V1	�-����j�%�R��'p�$6s���3.�욁ab�9o32B�u:*��۷�2 ��-�$2�鮼"�e��Ɖ��I��C��0e<b��tm\o����z����4��U�樎��z5�#�R}[hb�\
/���|�4%L�;k��#���PM��5
C_@wM�k�V����T�?)VCF���<��3�d���o `���xs_�7�L�K>Ij�����������]��Y{�=���g��阏�����m��/:Ny���nÍ��D`I䈰͐�7xH��YD�$�륭3+2d�L#3� S�z�r�)h���]�}R:Iv)j�$}�v{�8B�`��J
�|�8�r��-'}lA��������c�d�ND�L��?e��O#d�| eU �K�hF�}�܍J��K���R������`����e�[ZIО��g��|�1����1�i9=�M��������(h������g,�ڨ��uʨe[�f�ͫ$��XE�PgE��*��c����o�;�N���K����[/t���S�6�L����uC���1-;ch��ޡ�����ٿX��i���\w���G��Hi褷1P)$!x �zJmA��,~O�t�H�)_�GX�)+��/��T�]�����x�,�e��jMČ��hj��鐁S�ɐ�=ֹL�8��i
���|%�.+4F˰d���Y�:0��` �3�i�t�47W�j�i��*�qȪ9��G���6̭���~�ޠ�ѫ�?�<B��q�P��}��x�.i�aCʾ/�~���Y�'U��w1KӉ �4�$�(��p�>aᐺ�xq�"���uS'��P��/օ_k�n�8;��{��
�y�������?�^c� �ߖ���M����'���#�����v�Z�}�*���too�ː�ցn,V"��J��ʑ-v8��5h�S>����C�r�4�F�=c���5�e��~*�S��3�SU�,$�4�e�Q��C�����=x�ۮ�3��l�a&|߹ď��A������İW޳J�(i���ђK/ŭ�8~O�:�T��y�\*�v���N��C����q�<#�f��N������7c�9-�M8��j���d�NLV�"���V*�/�۴����D�MXo��NU�x�Ӆ�Ud1E�.�8mK8��(5c!zt�TF���Ro����J�G�-���6k������Π�qoc�; ��$JR��29�׊��si�d|��>Z�������A�Q̝�
��sP���iد�!�j��tuT�s1+���>�6f��ی)�E#f6� �4�6��y�M3Q��=�qd��Q�A�w�+��	Eq� A�󡖭��v_P�+���ڠ�7�������I(s}��	�yQ��g������iO���^#p��r�HZ� �8�s������a�kyaP݇��^���K�>[o�:b��T���I��9��Dq䶂K��9�[b�O�_=�:~�zA�}#�ĉ�0�S'�+�fK��*�h,�Ee�x�,5f�CQ�?�=�jW3��;:mMЦ,�Mz/��ӶJ&N���o��a/ݵ�{`[�Y�F�zn���Z6,�RD�R��
Sv�[�;Ol4�3e0O�eOJD�^?�R�G�����TO�
��%/���AU>�͚��������#����XQ)�B7�K��>h��0�����/;���ަ0 A?#�ldKK�����~�}�N�� $��=1!
c��٬s���$� �<��?m�����t~?�����r��l��ߙ�5�4�7?l:q');���
�8��R'��~�n��^��	h�&�e^(���R`��$�� 74��p���;�����м���?��	�aq��@8a�mI�|{C������7�Z��o3�^      .   �  x�UTM��D=����;3�n���	�8 "ąK��c�b�-۳��p��@

�D qA�C((�_��G��l�����;��W�*�D�aņI���o��9���g�����O���8}C����O���S">�(v|��q"�(6\ #IW������sz��^>��e�:��@q�v��
��>HW��E�?�
)��ߠ�ο��ӯ4�3�u��ϵ��Ã���÷�����1}�qɌK ח������4=��4�}=�-~�2�8}�~I�����x�W	���Mm�!7⹟��+?,�%��K���ݲ�<����-F�EAJ^�RiJ�5�1�-r�w�~��쫈�w�����a
C!��e��^Ks��9j�y��]چ�^�~�}���87�������� ���Ѻ��t��:Z�1,������S\�}o��簄s��*�����i�МX+�]��n]�&�04��u��o7Ş�!.-(ru�%�Ym,/$n\ruL�[ZQu���{����"҄a5@�R�1��	����Co�����L˙��\ۣ�q߹�α�g���jm�$V
��Bp)�Β�0�Z1 hl�p����Kz�8$b,1�ZΌ26�Ȧ�An���j��U�6N˖�R�DJ-4dQBry�����&l4W�y�>Z��S?��)��)V���CX.�B��E2F���1%n����M��M�P�����5%[R�:1�p
�kgb�Kr�MK�V�:� m=��F�k�"Je!H�^���~>�aK�7�l�7gR^
�Vc1�  ZCb�4F_s�6#wF�D�3�ڈz��|�'
CS��
D��f����\o$��m�й����1�Y�����q�K�iW�jJ�
����t���ܚ���
?-���>$[��b��8�;-J!1=ʂ����q%�����\3�լrǋ��B�\�B��ܱ�
���.3N>�����c����̞���x�J[p��f`�h%Wi�Γ"��갮�3�˔T���
q�Ү���˪���RI�gӻ�
��0��,#��f�9C~l�
WX
s�K�zR�5n�.�y����,�`�u���^�P�<�bh�1V��,�Ry �(��Oc�M�$�%s^��n��ƻ��$�!�Bap��)�='oONN��*)x      /   )  x�eT]o�8|^��H�8�C���|���
zuripp@˴E�"��#�����.��E�˙��х0�ӕ05�?]�N�Ѳ�R���Y�N��8\(�
׾�0�ѣ��x=����h�)�o�8z*[����np���f�0���:��[-�6R)ɛC���l$^y�RbOb�d�+�d	�R�E^6Ɨ�+�^\#}�k �|���GH��Es���0J	�aɥNXY��e��{7�xƐ�hm�Gü��	݃h�qʺ���b���l�o���q�a g�����������P�Vlaa��;&O���dP�	JҜEf�z%,��K�e��?f�o��``�"�F�l��)p�k%���������	�_�m��!��,ЩZ�^J�+��S��z��'��~1<
H�V����vGh-]ý/Ŧ7��Q2��\87 ��8�Qae 㺶a��:������f#�<��/7�@	�(�������N{�g4����v"��>���$M{��]4���: )��7_O�������a�D+ު7!�m��Ho� E���c;8�"g�]0��B"���L�����v���8�8Z+
��̄��W�K�^�x|�C4h�T��#P	���oON��hXQ�[���RԲ	�������v�n������BF��g��.:s�z��������u��D��Q#�����&������)'3� by��u�ʄX���r<��5�
 )N8!�v�T����M���?·��X�o!�r��ǰ��:�'���t:����u�z �	�q��YE�b�{      0   %  x�eT�n�8}����D�F�9ݤi�q�ts5	(ibѦH/I[u�~�M[�v�@P�Ιsf(JS
�>i�T'v�1+�,����(i�kc~&�b+�B%*�qY�ރYc��㼠4�YΓT�2k����a1���h�E-�	~�Z�I���,M�88�"�4�H�X�Y7h�V��k�o��'�?����30��qLJa-Z�H8W-Q
@���|~�WL@�i�q�hP;�;hD���UFy��4z��rq:>PnƁR�D)��V��^�
�=�az��_�{S|a��IA�6Z�I�$�P!X�A">H�\E��ѣ�����WnR��J�
� �b���yv4>��i0 "V�X��R��J�%Z�����8���~q��,!ִhMc��AԵȒf�~���wG�'���,�m��M]�|P�p;�~(�#
Y��4&�5��w��u�vp������k!/ҌEd�s	��;.���9�۩h���n1I!�Ed����e.����-_|��O+�	�4#Ͷ�сk)|cZ���~e��%�IT$���6X�6��
��n��q��p�t~�}Xc�xQ���:�z�V�⳻�f.����㈧�4���#�qj��C�>|�m�ͧ�*�$g)K�5Z�W�:�Zp6�,��O���t�G,H�49�.����{��|~�G�fiS�E'J+�~td)T�ɡ�G+>�}P���3<�P����Y�f���Z�|���_���<gD��DxU��*��}�n�K}|��� �����yܢ'���p�돯�F�����ɟ'���,R��      1   �  x�US�
�@{K�x���e��c)'�H�NġHJ�&d"��=��*��p���*�1=��F?�� T_��$k��xD�����Z���#�%�D�SLV7�ngp�և�T�h�X��y�d�{=�뵦:�\ImZY�bo�]0��K�C�6���$@<.4�άB-��}�ʿ�y���hG�Y^4b��r��G�R�� 5��u�,�̩P�K*S�T��pr	�\�T	�;{������tϼ�zQ���èZL-'��9[��F#mY�ީ�#�����Co"p����ݥ[��v!�P<��p�=1��ߢ O�`��1�T=�}cS~�;.��
e�
�t����nt
�S��0�M;wإ~L1,1`�0�y��FqJ��{��8+��+஑�:��T��=(b!{	�����	`f�M#i�9ZY� ��7��@0��X�),m����~b��>)Ǝ�1���@�S�����w3��      2   �  x�MRю�0|6_�H*ll�
�����t����B��=�S%_�%9������,��0���/�]tĆ2'�>@0to�и�=�	Y��o$X�f	)\{�+��D�
�p��B�	�rI^�׷�k��?� %2�9B�aڰ�h�Z�d�9�N|9�"o���+ƺ�\���B�t����}��\0�Y�?3���=�6�,'�9�%�m�R�]{�x���m����)��wW�Ȳ���~����t�c�4ɹ�	�h��ˍkp���2��x�[�W�ǿ�^{���0����B��'�r�HR��e�4�R��n��w��A5\跶˩����И�^���L��X�����o�/&܉�LUc���L�<Slu�����g�q.SF
��VvH}؊y4v�:ϓ$OpAl��ƻ�<�M��b2
���$R�\�d��i��bL��{���CU�.v�+2��8�
��!�������DQ��p��      3   X  x�U�KJA����H�]���]�(3
n}�C]�E=C���8t�֦��ϗ?),y�p���6^���ھ�n�o��}���4ޥ૽��c�o���m�e�{��z�ӏY�k/�s�i��UWE�X5�`����Y?�o:��	6��j=�n�Da@N��v���z�Ȭ@-���r�ڋI�H��z�L���)5ɬ/�xf���"[�L��K{�{#J��o�J�RE榖È��'G'b�H���ӓ�/í� �P-S�E�r�"4���-
��F����c?��,��`�u�O
�`Pr�X,�]$[SB'��&W��a873D��E$��ʅK R�i�=>�����     