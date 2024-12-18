PGDMP     5                
    |            issues %   14.13 (Ubuntu 14.13-0ubuntu0.22.04.1) %   14.13 (Ubuntu 14.13-0ubuntu0.22.04.1) ?    1           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            2           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            3           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            4           1262    221249    issues    DATABASE     W   CREATE DATABASE issues WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C.UTF-8';
    DROP DATABASE issues;
                postgres    false            �            1259    414639    Backups    TABLE     �  CREATE TABLE public."Backups" (
    id uuid NOT NULL,
    "backupName" character varying(255) NOT NULL,
    "backupDate" timestamp with time zone NOT NULL,
    "backupPath" character varying(255) NOT NULL,
    "backupSize" character varying(255) NOT NULL,
    "backupType" character varying(255) NOT NULL,
    "backupStatus" character varying(255) NOT NULL,
    "backupNote" text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Backups";
       public         heap    postgres    false            5           0    0    COLUMN "Backups"."backupName"    COMMENT     J   COMMENT ON COLUMN public."Backups"."backupName" IS 'اسم النسخة';
          public          postgres    false    209            6           0    0    COLUMN "Backups"."backupDate"    COMMENT     N   COMMENT ON COLUMN public."Backups"."backupDate" IS 'تاريخ النسخة';
          public          postgres    false    209            7           0    0    COLUMN "Backups"."backupPath"    COMMENT     L   COMMENT ON COLUMN public."Backups"."backupPath" IS 'مسار النسخة';
          public          postgres    false    209            8           0    0    COLUMN "Backups"."backupSize"    COMMENT     J   COMMENT ON COLUMN public."Backups"."backupSize" IS 'حجم النسخة';
          public          postgres    false    209            9           0    0    COLUMN "Backups"."backupType"    COMMENT     J   COMMENT ON COLUMN public."Backups"."backupType" IS 'نوع النسخة';
          public          postgres    false    209            :           0    0    COLUMN "Backups"."backupStatus"    COMMENT     N   COMMENT ON COLUMN public."Backups"."backupStatus" IS 'حالة النسخة';
          public          postgres    false    209            ;           0    0    COLUMN "Backups"."backupNote"    COMMENT     E   COMMENT ON COLUMN public."Backups"."backupNote" IS 'ملاحظات';
          public          postgres    false    209            �            1259    414644    Cases    TABLE     �  CREATE TABLE public."Cases" (
    id integer NOT NULL,
    "caseNumber" character varying(255) NOT NULL,
    "defendantName" character varying(255) NOT NULL,
    "imprisonmentDuration" integer NOT NULL,
    "startDate" timestamp with time zone NOT NULL,
    member_location character varying(255) NOT NULL,
    member_number character varying(255) NOT NULL,
    type_case character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Cases";
       public         heap    postgres    false            �            1259    414649    Cases_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Cases_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Cases_id_seq";
       public          postgres    false    210            <           0    0    Cases_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Cases_id_seq" OWNED BY public."Cases".id;
          public          postgres    false    211            �            1259    414776    case_private    TABLE       CREATE TABLE public.case_private (
    id integer NOT NULL,
    "caseNumber" character varying(255) NOT NULL,
    "memberNumber" character varying(255) NOT NULL,
    accusation text NOT NULL,
    "defendantQuestion" text,
    "officerQuestion" text,
    "victimQuestion" text,
    "witnessQuestion" text,
    "technicalReports" text,
    "caseReferral" text,
    "userId" uuid,
    "actionOther" text NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
     DROP TABLE public.case_private;
       public         heap    postgres    false            =           0    0     COLUMN case_private."caseNumber"    COMMENT     M   COMMENT ON COLUMN public.case_private."caseNumber" IS 'رقم القضية';
          public          postgres    false    220            >           0    0 "   COLUMN case_private."memberNumber"    COMMENT     M   COMMENT ON COLUMN public.case_private."memberNumber" IS 'رقم العضو';
          public          postgres    false    220            ?           0    0    COLUMN case_private.accusation    COMMENT     D   COMMENT ON COLUMN public.case_private.accusation IS 'التهمة';
          public          postgres    false    220            @           0    0 '   COLUMN case_private."defendantQuestion"    COMMENT     V   COMMENT ON COLUMN public.case_private."defendantQuestion" IS 'سؤال المتهم';
          public          postgres    false    220            A           0    0 %   COLUMN case_private."officerQuestion"    COMMENT     T   COMMENT ON COLUMN public.case_private."officerQuestion" IS 'سؤال الظابط';
          public          postgres    false    220            B           0    0 $   COLUMN case_private."victimQuestion"    COMMENT     \   COMMENT ON COLUMN public.case_private."victimQuestion" IS 'سؤال المجني عليه';
          public          postgres    false    220            C           0    0 %   COLUMN case_private."witnessQuestion"    COMMENT     T   COMMENT ON COLUMN public.case_private."witnessQuestion" IS 'سؤال الشهود';
          public          postgres    false    220            D           0    0 &   COLUMN case_private."technicalReports"    COMMENT     U   COMMENT ON COLUMN public.case_private."technicalReports" IS 'تقارير فنية';
          public          postgres    false    220            E           0    0 "   COLUMN case_private."caseReferral"    COMMENT     S   COMMENT ON COLUMN public.case_private."caseReferral" IS 'احالة القضية';
          public          postgres    false    220            F           0    0    COLUMN case_private."userId"    COMMENT     n   COMMENT ON COLUMN public.case_private."userId" IS 'معرف المستخدم الذي أنشأ القضية';
          public          postgres    false    220            G           0    0 !   COLUMN case_private."actionOther"    COMMENT     C   COMMENT ON COLUMN public.case_private."actionOther" IS 'أخرى';
          public          postgres    false    220            �            1259    414775    case_private_id_seq    SEQUENCE     �   CREATE SEQUENCE public.case_private_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.case_private_id_seq;
       public          postgres    false    220            H           0    0    case_private_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.case_private_id_seq OWNED BY public.case_private.id;
          public          postgres    false    219            �            1259    414767    case_public    TABLE       CREATE TABLE public.case_public (
    id integer NOT NULL,
    "caseNumber" character varying(255) NOT NULL,
    "defendantName" character varying(255) NOT NULL,
    "imprisonmentDuration" integer NOT NULL,
    "startDate" timestamp with time zone NOT NULL,
    member_location character varying(255) NOT NULL,
    member_number character varying(255) NOT NULL,
    type_case character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.case_public;
       public         heap    postgres    false            �            1259    414766    case_public_id_seq    SEQUENCE     �   CREATE SEQUENCE public.case_public_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.case_public_id_seq;
       public          postgres    false    218            I           0    0    case_public_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.case_public_id_seq OWNED BY public.case_public.id;
          public          postgres    false    217            �            1259    414667    session    TABLE     �   CREATE TABLE public.session (
    sid character varying NOT NULL,
    sess json NOT NULL,
    expire timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.session;
       public         heap    postgres    false            �            1259    414672    sessions    TABLE     �   CREATE TABLE public.sessions (
    "sessionId" character varying(255) NOT NULL,
    "sessionData" jsonb NOT NULL,
    "expiresAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.sessions;
       public         heap    postgres    false            �            1259    414753    users    TABLE     �   CREATE TABLE public.users (
    id uuid NOT NULL,
    member_id integer NOT NULL,
    username character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    role character varying(255) DEFAULT 'editor'::character varying
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    414752    users_member_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_member_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.users_member_id_seq;
       public          postgres    false    216            J           0    0    users_member_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.users_member_id_seq OWNED BY public.users.member_id;
          public          postgres    false    215            �           2604    414684    Cases id    DEFAULT     h   ALTER TABLE ONLY public."Cases" ALTER COLUMN id SET DEFAULT nextval('public."Cases_id_seq"'::regclass);
 9   ALTER TABLE public."Cases" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210            �           2604    414779    case_private id    DEFAULT     r   ALTER TABLE ONLY public.case_private ALTER COLUMN id SET DEFAULT nextval('public.case_private_id_seq'::regclass);
 >   ALTER TABLE public.case_private ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            �           2604    414770    case_public id    DEFAULT     p   ALTER TABLE ONLY public.case_public ALTER COLUMN id SET DEFAULT nextval('public.case_public_id_seq'::regclass);
 =   ALTER TABLE public.case_public ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            �           2604    414756    users member_id    DEFAULT     r   ALTER TABLE ONLY public.users ALTER COLUMN member_id SET DEFAULT nextval('public.users_member_id_seq'::regclass);
 >   ALTER TABLE public.users ALTER COLUMN member_id DROP DEFAULT;
       public          postgres    false    215    216    216            $          0    414639    Backups 
   TABLE DATA           �   COPY public."Backups" (id, "backupName", "backupDate", "backupPath", "backupSize", "backupType", "backupStatus", "backupNote", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    209   �H       %          0    414644    Cases 
   TABLE DATA           �   COPY public."Cases" (id, "caseNumber", "defendantName", "imprisonmentDuration", "startDate", member_location, member_number, type_case, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    210   I       .          0    414776    case_private 
   TABLE DATA           �   COPY public.case_private (id, "caseNumber", "memberNumber", accusation, "defendantQuestion", "officerQuestion", "victimQuestion", "witnessQuestion", "technicalReports", "caseReferral", "userId", "actionOther", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    220   3I       ,          0    414767    case_public 
   TABLE DATA           �   COPY public.case_public (id, "caseNumber", "defendantName", "imprisonmentDuration", "startDate", member_location, member_number, type_case, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    218   PI       '          0    414667    session 
   TABLE DATA           4   COPY public.session (sid, sess, expire) FROM stdin;
    public          postgres    false    213   mI       (          0    414672    sessions 
   TABLE DATA           K   COPY public.sessions ("sessionId", "sessionData", "expiresAt") FROM stdin;
    public          postgres    false    214   -K       *          0    414753    users 
   TABLE DATA           H   COPY public.users (id, member_id, username, password, role) FROM stdin;
    public          postgres    false    216   JK       K           0    0    Cases_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Cases_id_seq"', 1, false);
          public          postgres    false    211            L           0    0    case_private_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.case_private_id_seq', 1, false);
          public          postgres    false    219            M           0    0    case_public_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.case_public_id_seq', 1, false);
          public          postgres    false    217            N           0    0    users_member_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.users_member_id_seq', 1, false);
          public          postgres    false    215            �           2606    414689    Backups Backups_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Backups"
    ADD CONSTRAINT "Backups_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Backups" DROP CONSTRAINT "Backups_pkey";
       public            postgres    false    209            �           2606    414691    Cases Cases_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Cases"
    ADD CONSTRAINT "Cases_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Cases" DROP CONSTRAINT "Cases_pkey";
       public            postgres    false    210            �           2606    414783    case_private case_private_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.case_private
    ADD CONSTRAINT case_private_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.case_private DROP CONSTRAINT case_private_pkey;
       public            postgres    false    220            �           2606    414774    case_public case_public_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.case_public
    ADD CONSTRAINT case_public_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.case_public DROP CONSTRAINT case_public_pkey;
       public            postgres    false    218            �           2606    414699    session session_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.session
    ADD CONSTRAINT session_pkey PRIMARY KEY (sid);
 >   ALTER TABLE ONLY public.session DROP CONSTRAINT session_pkey;
       public            postgres    false    213            �           2606    414701    sessions sessions_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY ("sessionId");
 @   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_pkey;
       public            postgres    false    214            �           2606    414763    users users_member_id_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_member_id_key UNIQUE (member_id);
 C   ALTER TABLE ONLY public.users DROP CONSTRAINT users_member_id_key;
       public            postgres    false    216            �           2606    414761    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    216            �           2606    414765    users users_username_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_username_key;
       public            postgres    false    216            �           1259    414708    IDX_session_expire    INDEX     J   CREATE INDEX "IDX_session_expire" ON public.session USING btree (expire);
 (   DROP INDEX public."IDX_session_expire";
       public            postgres    false    213            �           2606    414784 %   case_private case_private_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.case_private
    ADD CONSTRAINT "case_private_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public.case_private DROP CONSTRAINT "case_private_userId_fkey";
       public          postgres    false    3217    216    220            $      x������ � �      %      x������ � �      .      x������ � �      ,      x������ � �      '   �  x���]k�0���_1tme��,�۠�M���ҙA�-9qcǉ�Q�%�}2��6w[Gp^��r�#�t���˭E��͑f6!�ӡ:���xY]o�+�m�.v����r�"�̰/�i�1��ĄJHM	���d�u�\�����m��]y������ݸ��㤪̪h�,(� N>�c�
�4�y�2��2�)�dP�Y$Fb���\�s�Ѯ�h�r��<�DT�J����Hz:]���~Ad� @�U��f����J��Ou�������_���^����
I�$
�b�C�5b��(0�a91\�:@A�ǤM���袭��3D��ػ�.�U��q~w3�9m�<;��<Y��a��wD4F\�P26a8�TD�ሤ�FY�sHpF4
#Ƙz�h�Q�8Y�f�J�؝��HEG2�ޯ��y���%      (      x������ � �      *      x������ � �     