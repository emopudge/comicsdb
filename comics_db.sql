PGDMP  5    ;                }         	   comics_db    17.2    17.2 -    6           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
       public         heap r       postgres    false            �            1259    17371    Content-maker    TABLE     �   CREATE TABLE public."Content-maker" (
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
    public               postgres    false    219   =>       -          0    17361    Comics 
   TABLE DATA           a   COPY public."Comics" ("Name", "Comics ID", "Release date", "Team ID", "Description") FROM stdin;
    public               postgres    false    220   �A       .          0    17366    Comment 
   TABLE DATA           [   COPY public."Comment" ("Date", "Text", "Reader ID", "Comment ID", "Comics ID") FROM stdin;
    public               postgres    false    221   7K       /          0    17371    Content-maker 
   TABLE DATA           ^   COPY public."Content-maker" ("Nickname", "Login", "Password", "Content-maker ID") FROM stdin;
    public               postgres    false    222   �O       0          0    17376    Reader 
   TABLE DATA           P   COPY public."Reader" ("Nickname", "Login", "Password", "Reader ID") FROM stdin;
    public               postgres    false    223   �R       1          0    17381    Subscription 
   TABLE DATA           t   COPY public."Subscription" ("Price (rub)", "Payment date", "Reader ID", "Comics ID", "Subscription ID") FROM stdin;
    public               postgres    false    224   �U       2          0    17384    Team 
   TABLE DATA           3   COPY public."Team" ("Team ID", "Name") FROM stdin;
    public               postgres    false    225   IW       3          0    17389 
   Team roles 
   TABLE DATA           R   COPY public."Team roles" ("Team ID", "Content-maker ID", "Role name") FROM stdin;
    public               postgres    false    226   Y       {           2606    17395    Chapter Chapter_pkey 
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
       public                 postgres    false    223            �           2606    17414    Chapter Chapter_Comics ID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Chapter"
    ADD CONSTRAINT "Chapter_Comics ID_fkey" FOREIGN KEY ("Comics ID") REFERENCES public."Comics"("Comics ID") ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public."Chapter" DROP CONSTRAINT "Chapter_Comics ID_fkey";
       public               postgres    false    217    220    4737            �           2606    17419 <   Collection Positions Collection Positions_Collection ID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Collection Positions"
    ADD CONSTRAINT "Collection Positions_Collection ID_fkey" FOREIGN KEY ("Collection ID") REFERENCES public."Collection"("Collection ID") ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 j   ALTER TABLE ONLY public."Collection Positions" DROP CONSTRAINT "Collection Positions_Collection ID_fkey";
       public               postgres    false    4733    219    218            �           2606    17424 8   Collection Positions Collection Positions_Comics ID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Collection Positions"
    ADD CONSTRAINT "Collection Positions_Comics ID_fkey" FOREIGN KEY ("Comics ID") REFERENCES public."Comics"("Comics ID") ON UPDATE RESTRICT ON DELETE CASCADE;
 f   ALTER TABLE ONLY public."Collection Positions" DROP CONSTRAINT "Collection Positions_Comics ID_fkey";
       public               postgres    false    219    4737    220            �           2606    17429 "   Collection Collection_User ID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Collection"
    ADD CONSTRAINT "Collection_User ID_fkey" FOREIGN KEY ("Reader ID") REFERENCES public."Reader"("Reader ID") ON UPDATE RESTRICT ON DELETE CASCADE NOT VALID;
 P   ALTER TABLE ONLY public."Collection" DROP CONSTRAINT "Collection_User ID_fkey";
       public               postgres    false    223    218    4743            �           2606    17434    Comics Comics_Team ID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Comics"
    ADD CONSTRAINT "Comics_Team ID_fkey" FOREIGN KEY ("Team ID") REFERENCES public."Team"("Team ID") ON UPDATE RESTRICT ON DELETE RESTRICT NOT VALID;
 H   ALTER TABLE ONLY public."Comics" DROP CONSTRAINT "Comics_Team ID_fkey";
       public               postgres    false    225    220    4747            �           2606    17439    Comment Comment_Comics ID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Comment"
    ADD CONSTRAINT "Comment_Comics ID_fkey" FOREIGN KEY ("Comics ID") REFERENCES public."Comics"("Comics ID") ON UPDATE RESTRICT ON DELETE CASCADE NOT VALID;
 L   ALTER TABLE ONLY public."Comment" DROP CONSTRAINT "Comment_Comics ID_fkey";
       public               postgres    false    221    220    4737            �           2606    17444    Comment Comment_User ID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Comment"
    ADD CONSTRAINT "Comment_User ID_fkey" FOREIGN KEY ("Reader ID") REFERENCES public."Reader"("Reader ID") ON UPDATE RESTRICT ON DELETE CASCADE NOT VALID;
 J   ALTER TABLE ONLY public."Comment" DROP CONSTRAINT "Comment_User ID_fkey";
       public               postgres    false    223    221    4743            �           2606    17449 (   Subscription Subscription_Comics ID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Subscription"
    ADD CONSTRAINT "Subscription_Comics ID_fkey" FOREIGN KEY ("Comics ID") REFERENCES public."Comics"("Comics ID") ON UPDATE RESTRICT ON DELETE RESTRICT NOT VALID;
 V   ALTER TABLE ONLY public."Subscription" DROP CONSTRAINT "Subscription_Comics ID_fkey";
       public               postgres    false    224    220    4737            �           2606    17454 &   Subscription Subscription_User ID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Subscription"
    ADD CONSTRAINT "Subscription_User ID_fkey" FOREIGN KEY ("Reader ID") REFERENCES public."Reader"("Reader ID") ON UPDATE RESTRICT ON DELETE CASCADE NOT VALID;
 T   ALTER TABLE ONLY public."Subscription" DROP CONSTRAINT "Subscription_User ID_fkey";
       public               postgres    false    224    4743    223            �           2606    17459 +   Team roles Team roles_Content-maker ID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Team roles"
    ADD CONSTRAINT "Team roles_Content-maker ID_fkey" FOREIGN KEY ("Content-maker ID") REFERENCES public."Content-maker"("Content-maker ID") ON UPDATE RESTRICT ON DELETE CASCADE NOT VALID;
 Y   ALTER TABLE ONLY public."Team roles" DROP CONSTRAINT "Team roles_Content-maker ID_fkey";
       public               postgres    false    222    226    4741            �           2606    17464 "   Team roles Team roles_Team ID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Team roles"
    ADD CONSTRAINT "Team roles_Team ID_fkey" FOREIGN KEY ("Team ID") REFERENCES public."Team"("Team ID") ON UPDATE RESTRICT ON DELETE CASCADE;
 P   ALTER TABLE ONLY public."Team roles" DROP CONSTRAINT "Team roles_Team ID_fkey";
       public               postgres    false    226    225    4747            *   d  x�=PA��@<ۏAm��m?�pɒ,D�$�̠en�J�'��#� �o��/+MK}p�\�2��x�K{�>l�c��~�K��~���u�o����1_��Q_���a���r(��C�/ۧ`����щ^�������W+Z+�\�R&�J���Gu��P�n>-�db�B�p�,} ��$����բYa��$f f�_�RJ���v�Cbg��,$��i\f䔔�J��u�����P	�u�� ��a���)�
��Yx�=1،�'�~x���V2����i@�\��j��q�ŋB6ʚ���8���>-���J,�w�}�T��Y�8�a���9J�"@�>+�z��� ��r      +   �  x�UQKn1]W�"'@����]�Dô4�=t�`ɂ��	+�A)R`��53ɂ�خ���%x���m���^,���r���	D9��tw��Q���O��=�!>C�{�oڡ��h��]����?^���d�T��m���4y��wc6�"�TH�6��
b�a)j����@d"2V�y|*Z��p)a��+��qR�m��n�!��j̅EX�����[A+I��n=��s�(nN���fHQ#	�,���k�+1q@���t�\{�n\�)�n7L�ܽ�@JF	������uE�1ǒR���P!Y�@�Bt�i��:ϭ,j2�����̑K����V�:M@؋KLћ��
~-B����\��f��|���9i�pU_�~�Xf|�����;      ,   E  x�uSˎ�4];_a����8K�V�BB3�d�vݮ�N��v�T��ٰ	+�!�Hiz~��GW3�7X�J�:��sN�C���ߞ������_���Ӌ�K����<�����o���u~szy��j]n�ô���-~��o�o<��ɯx���w��{�7P���_��]���c��M���~z������[�,D�Q)�ɂ�z9�t������~��¦��(��R�(zA)Q��F��#?��M�[�Mk���hw��X�]�T�ة�c�X�b`Om, ��ݎ/~O��c���������[����c�,Ɔ}(�sw��Q �E�ty��ݒ3���f��)�}0��`�Y�/[�<y��D�b01����B��V��:�����o���a�3������QH�3�4$?.��Hf=�嶐ckAl�ޡ�e;�d���3��q�g��ҌJ{�)x��y�E���3~F����N�^6�����Q�L��s���&>���ohk�0��F�>��L�QD�����Z��Tg *��wR�Im�I��E��XJ��qyiE+�������q=�����6įi�&>_m(��A)�F�)5�K͊ؐ��/֠����=O��4;����5c-:ŞM�-��P?�KZ�		A.{��u`vo��>�A;�����E���P���$���5���m��P8' NXp�r���M�l��d�5�	���X�D+[�Q11rt�x��B�z�7�A�'��KQ��H�"h���thҚ"����Aj��%ܱ��L: �>,� f6�E�>�T��i�a���k�·4���y�.6[o��M�馪� �~�U      -   �	  x��X]o�}^��=% I�.���7�I�4uZ�F� }am�&BSE;�EY�)R�m�&q�"�)h�+���_��G�s�\��Erw��̙3g�n�m6��{�0[9�+�<�K���z5��;�n�<[�_e�Z��F�2;�F&�F���oj���?��
�UM����Lf���X���?���V&;��������=���V��<��Y�]�R��=��2t\<��7�5Oj�Md+)��`ֆK&�7���Y6�W���{�q�]p�˫���^Ts��}����y~�'Y����|k�=���5�Ե1L0��p����#z��1aL+egⴏ��l���{��sċ�|�n�v�5�3F6���>P���[cay*��f�p$��ѩlY��az1��������p=��9��e�c1�\�U��\ECeuE��5W���p��� �2���Iem�l\
��t�_��)Wf�pY^�YZ���5�}�~���0�c���k��4�0�C�1�%�0��
�n��d�+��dI<�����~���hɖ<ݳ���s�0nd��	�	��
`��U�_�{�|y~�Y�oE�Y�I�:� ��ȇ�Q�e)���#���b��M�z���Q����E*� ����� �4ݗ[���Z���1�2iӪ�cD� S��c�D��60|��f��#�9/��%���1M�ab�W1�P��B<&)շ�vƥps�mN��Oꦠ�yo+��|�CB5�z��}A�k �Z�4�
�fb�1�b=d��ʥ�>O,O���Av�ɷ���a|cn�2�3S֮x%�����g�B��n~r��z����~����y�m>�t���]���/�Ny� %ݚ�<߉�%�#�6G���!��W9�i_-l�[�a6�4�b
dH \oT.S%�uQݗ��If��v��/�a/� i����/��,7�(��r��-HV��i��m��@��ߙȘ�^��H '��d>0eU �E�hD�1z��"���?cJ.A ���2cd�X�Ͳe�[�О��τq3V�Yv^��)��r��L�P^�z�L��(i������YO,pۨ�Ltʸe[���� ��DE�PeE��*�ı^�i�����&n��Ҩ45�:����6�H����UC�N	Ʉ�]Z��B��(-j2t��_���p��v���ZT��#Î&�:�m�
I
	��S[ 8�<������ ��Sjƛ`�	�}Ί�0�מ)��d}�j�̟j�2My]�&b�cU45t��tD�4�Ndȑ�k#*N"p�*7٬�â2!�&hV�2�+[����� (>G��Y�Ks�v]�v�^"�B��ڑ�~�No��i���w:۽J�{���.�#�:�
G��� u͚֤��r�N��uzZv<��4� Q��"�� ��+|��!u���0jDh���&N⻡���=����qv<��H��;�<��Ʋ����v�}� [$�׈�m҅�>��@��P�O� �����B'�W��o��A��Ѹ����:Ѝ�Z�עQ��Bsd�N!ĸ��ӎ)[P\��C�r
���4)�FŽ`��5��
�~�T������c����0p��G�����no:c��Ql�n�.4�m'd��3)����+��5����N{����"M�?Zq镸U��YG���P�}*W��K%�N��߉��@坿��1��>����{pNO}s��B�)Ф�)����V'�ub��D��VI<�����=�� rl�z��v���C�.��"�)P?�t�-�LϣTԔ��Ɇ�&��To����}��c�-����+7���������`�� ��f�L \>�T�4�F$��+C%�[\��Ѳw�fw'X�� �G1wγ6��᠆I�K��C��~����8��bV��}�m�>J�9�3�F�m�A�h"lZ!�<���TK{���z�ޣN�vG����z@�󡖍��v_R�kݮ�1h�͍��}�c3�����&�����Ǘg���m��˞l)$�{�8�{���D���剟k�����\�^���}���ž߸2�W�V�-���I�yn�1�=8�5�(��Fp�T�ĻbK.�E�W����^�ľUӉ�0�'�;�fK��/T$�Xb��v��Yh�����9~{��.;f�Svtښ�MYQ����RO�*�8qk�K����t���ۂ�R�4���F�lذ�J��+��*��)��<�h�g��<�=)=~�XK��Zc[�s=Q�,�W|�U���9�W<�5>�vۃGr:b�b9D%x��A�]a&��Q�����׹{o`~�<��v$��g����liI� �{W��o�n�k�����f�'&$a�]� ���u�N3��r�O��qy�g�?�l=j`��m�;f��g�k�����N܌�	;���8q�+��O����^�+	6�6I3���y3����J�1:�      .   ?  x�UTM��D=����;3�n����H�6���3n�v[v�.�[RҢe!�H\��
��z��=�Hx�q{�U��W%�(W�X1I�u�.=M/�y��S<��~N����-�����8^���D0\�(v���v$�(V\ #I7�/ҟ���K��^�?��ts���(�튕+�	�}�nV����R<I��E�K�O��h�1�}����ȓ������w����!}�qɌK �W��tIq{��h�M_�����W���k�|���r���Z1C�37���n��m<�ч�ֻ.�&G���nM��eQ���TD�Ri`}���I��]ps�|�&��2DX�PH+n�Di��Ҝ���t��~@[�y�����P�s#�.LIJ�J��q	�Y�;m5Ԏnv]G�j����vwA�)Dt@?�f:��G���)e!-�DZ%4'�Jn�C��T��[ڻ��ȷ�BO�!�UM�&�Ym,/$����"����:7l^��
G:�����ХFc�A2u��^ݽ�͙�S�y蹶C'㮫&:�ޝ�&���Q�X)g���<8KR�O� j+�A�v�NUsAO�4 �D�%�`Z+Q�f�+!�]����-�i��S\UJX�H���,JH.��!��j�	��n�����z�3?��_2�]li�~7�x��x,�1"$���)�$�ت܏�䃁:�m#u�U�ؽ�dMJcC'�!N"~�LLsI�US��B_�"����\�W�����EYR�����x���g��>�4�͙���1��X2���X%�ѷ\�U������y�uB�}l!��5n��04�˪@\6�������v� �&�V[:���q�hbu
.��p����
]Mi`3�aP�N�xݐ��wy^ᧈ��i�P~@���l��È�(���(�k�b���7/''�f�k���Zm!4�5L ����P����2��~�m[:v<���U��]Ui�����"��yRD�\C�Uu�6��O�B�.�K溭<�eU`ui��γ��]F{�g�K�U�vr9C���WXs�KO~�>::����      /   �  x�eS�n�8}~E$F��HQ�����mS7�S���%�%�tH*������n�ՋDh�sns.��p)L%��B�f�l�r�NK�B��ii�.E˵�,,Ek����R���n6Zk��Z�������|Ls�c�fGPp�d����6F�TJ�6%P�V�4;/��(��H�������di�!/[��U��'�J_��I����#q�䌡%��4J	�aͥNXY��e����4k]�H ����Wò��	=ѥ��WۏHJh�Q�i�
%���!g�������9d��B�FX���5���<�/��I�O$d8Is�L�y%,4�K�e��?��7jn0J1K���*8�s�İ����Zx8���۞<2`)���s^�T��J�e�����߭�GaR���FX[�!�Q!ZK�r�+я�_%��ӹs 	�R�J+�0����י��m�-���Z�~ӌRdM�]�wp��[^_�h��㛹t��B�yh�����!|�a��z�G��h�|�i�?8�3B��z\��{x�)������pLI�%م�yaId�s6�4���7�N0E��U�� kM!�w��_�����=�b�A�`S#�V,�Z8.g�0�h~�U���򝭦J��6ܮ��q#�n����/�����oD`�:�����ϓ��"�2��V�*�A�>x�������%e@�<y�⚗M�ڄ��Yp2��5�K�S�`��>E�D"��      0   �  x�eT]o�&}���Q>�ٕ"���o�*�l;�ݤͷ�D�&c�\`�;���MwU�< l��=��{�-�q_tB�S����VIB1�$.�:�A�������vP�*l}���`�z��c^`��$�4�FjU�>H�����F� ki�Z�Zt�Mt����lV+Fݵ8�E�q���q��7ұZi��Th&��G>����3NY��R8'���VG���(�'��QZ>?j" �e�i��{h��*�+��5?@F8���l~���Ɯ&�b�|�"/�['I`F�����K�B������ ���J��1��Q">I�\%�_g�6 /�Q�ML�(����rb���yu2?�	�,� '�$�e�[��R:������87��ni��"g;�lc��C4���3ה�|��)&�@�s��I>)�Y^ݗ���Q�S48y���T�M.�]�ʧ��t�,#	�G.�\x��=��/gF;5n�r5�/��@��^�FU��������ox��L1�jv�����턟 ^�Bζ�Ф����.Z)]	���=������zw�)��".��S�ub3��O����I�߀�	g52�.O��S3&�����M�k>}�М0B�5ƨW���J�����nqU>�`��(��z�	�Oʹ��9`oOO�a,cE�Q,WzQ:Q���J��AM5>i���^o�P�3>�б�����k�]�W�y~�Ϟ^����<'�S��_.�      1   �  x�US��@{K�x���e��c)'�H``�C���&d"��=��UD)�p��`�ØF�����  �/��`�5_L<�x~0��(�֠��pI6����M�����a:�B>��֥+A�j Y�^�z��N�0WR�V֭��uL�-���~Ѕ�����	����3�PK�u_��/f0t6ڑv�M���h����{*H�4�bG]9���s*ԁ����,U��0�\:��UF�����T�r{��Q/ꐟ8��u��r2�1���� `�h4Җ�읊?R0H(�;�&��,-�]�%�k��>��h����-
���+M���7F0�w��2����P�� L��ᮏ�F� 1;U�QX	c۴s�]����Wzm�D_��	��r޻�	���M��ك"ұ�P;{M�.y˿�� f��4�֜���?���a��ĝ�      2   �  x�MR]��0|v~� T���	��	R���l������N��\B,�e=;;3k��C��+h�xq���2�)�w��{��kݣ����M�e����>0�>:p�}Iθ��W��hc��_F�`9��}�6,��V��n��ى���������r�3J�Hѯ������������N��5��ÜO���U5�.h�#۶��_േ��L���%�����F��{���8�DLo�B;fJ����`�P~�qM4:�@DN%ځ�|��*���0�bZ��ھ-O`���D$�Ge�̠���Z�����o7'E�1t�����y,K�9-б�m�\y�O��1"�a��o�z�į�\�}N�	E."Ъ0�}�֙��ӂK�J�BD�̰��Wȓ6���"ˊ,~j��Nb%cy�F�e�R���]���%I��g-�      3   J  x�U�MN1���aP��'����b$T��HlK����}�ZTU�gHn��j�m6Q����N�v�t������+��X�������1OH��Y_�-����O ��W})[��1h�s�ê�eSu]�u��"Cd�"0tͲ�o���	%�H���c�.�E�RF��H�������Q�C���S׎0R$H��j&�����^H$��ѐ�)D���)𥽘�G#�^��w��
)�Mņ!�1�12dsjkXܵ�*>�H��Tb�6�'���m�fϦINb��8ɤ�3k AM��c�����2T��5�B�I����E��07��q���p��     