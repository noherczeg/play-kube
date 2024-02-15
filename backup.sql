--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2 (Debian 16.2-1.pgdg120+2)
-- Dumped by pg_dump version 16.2 (Debian 16.2-1.pgdg120+2)

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
-- Name: knex_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.knex_migrations (
    id integer NOT NULL,
    name character varying(255),
    batch integer,
    migration_time timestamp with time zone
);


ALTER TABLE public.knex_migrations OWNER TO postgres;

--
-- Name: knex_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.knex_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.knex_migrations_id_seq OWNER TO postgres;

--
-- Name: knex_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.knex_migrations_id_seq OWNED BY public.knex_migrations.id;


--
-- Name: knex_migrations_lock; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.knex_migrations_lock (
    index integer NOT NULL,
    is_locked integer
);


ALTER TABLE public.knex_migrations_lock OWNER TO postgres;

--
-- Name: knex_migrations_lock_index_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.knex_migrations_lock_index_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.knex_migrations_lock_index_seq OWNER TO postgres;

--
-- Name: knex_migrations_lock_index_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.knex_migrations_lock_index_seq OWNED BY public.knex_migrations_lock.index;


--
-- Name: posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posts (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    content character varying(255) NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.posts OWNER TO postgres;

--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.posts_id_seq OWNER TO postgres;

--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: knex_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.knex_migrations ALTER COLUMN id SET DEFAULT nextval('public.knex_migrations_id_seq'::regclass);


--
-- Name: knex_migrations_lock index; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.knex_migrations_lock ALTER COLUMN index SET DEFAULT nextval('public.knex_migrations_lock_index_seq'::regclass);


--
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: knex_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.knex_migrations (id, name, batch, migration_time) FROM stdin;
1	20240214222902_create_users_table.js	1	2024-02-15 00:47:47.795+00
2	20240214223045_create_posts_table.js	1	2024-02-15 00:47:47.805+00
\.


--
-- Data for Name: knex_migrations_lock; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.knex_migrations_lock (index, is_locked) FROM stdin;
1	0
\.


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posts (id, title, content, user_id, created_at, updated_at) FROM stdin;
1	vindico agnitio adstringo	Tenus acsi synagoga claro vulticulus. Subiungo corrigo temperantia absum subiungo desolo curriculum. Vulariter at bardus tamdiu accusantium demulceo statim laudantium.	1	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
2	tabgo quisquam quo	Iusto ascit compello demergo patria facilis vesper circumvenio verbum suscipit. Pecus colligo uredo voro ademptio statua ager tertius. Catena vigor canonicus comedo apud claustrum aequitas inflammatio.	1	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
3	textor arcus deprimo	Crastinus illo viriliter sumptus. Vinum doloribus verbera causa voluptates spectaculum barba bellicus. Supra amoveo tremo surculus vester depereo.	1	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
4	agnosco claudeo volo	Crustulum velociter desolo sponte crastinus vinitor. Sumo cubicularis aggredior abutor convoco spero clibanus amoveo chirographum incidunt. Votum delego sulum.	1	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
5	suasoria usque aurum	Usus succurro solio ager. Cupiditate toties ascisco adnuo et cubicularis adsum cariosus aestivus tergo. Subvenio tardus civitas.	1	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
6	cilicium utroque minus	Tum cohibeo nesciunt auxilium conduco amo depraedor titulus cognomen. Thema valetudo conservo coniuratio peccatus. Carus verecundia valde despecto celebrer collum amor ambulo adfero sono.	2	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
7	demoror summisse doloribus	Tubineus vomito armarium clamo recusandae comburo spargo crastinus ultra et. Acsi reprehenderit corporis desipio vorago umquam urbs vindico. Bene confero attero adversus tolero confido.	2	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
8	succedo vicissitudo appositus	Verecundia carmen tempus dicta amplitudo apto. Spoliatio ventosus natus viduo balbus. Crinis temeritas apostolus argumentum deduco alius.	2	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
9	vergo crepusculum considero	Chirographum vitium ocer tener volaticus creber. Terebro depopulo cauda necessitatibus subito aiunt conatus termes. Terra utilis ipsum quis agnitio.	2	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
10	tandem super laboriosam	Delego comis viridis quibusdam adulatio. Consuasor amor tonsor utpote. Ex iste thymum utrimque cuius ea terra argentum.	2	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
11	molestias vereor temptatio	Canto vobis vito natus. Titulus tamdiu via voluptatem solutio. Dapifer cicuta canis pecco dolorem compono.	2	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
12	dedecor conatus depromo	Calcar verbera denique ulterius assentator infit demens cavus terra. Adicio cura aestivus delectatio itaque demulceo summisse aequitas thermae. Vicissitudo accusamus ventosus temptatio adeptio strenuus benigne a.	2	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
13	thalassinus defaeco admoveo	Cruentus cupressus ademptio perferendis vinco illo victoria claudeo quod. Ulciscor cervus advenio pectus aptus deleo civis addo truculenter. Stabilis tamquam cupressus.	2	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
14	aliquam alii volo	Admoneo fuga appositus super adhuc. Cauda soleo abduco ater ascit bestia alii hic deprimo aveho. Uter cultellus unde defaeco tracto unus aperiam.	2	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
15	eveniet canis timor	Spero placeat vulnero cupio ullus tyrannus verbera veniam depopulo. Vester canto ambitus advenio dedecor tum degero decerno ascit comes. Velut appello est vomer.	3	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
16	rerum cito stillicidium	Demo illo vindico. Acceptus torrens deprimo. Succedo iusto iste aliquam statua.	3	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
17	utique doloremque acidus	Bos cervus sponte pectus. Sunt sulum congregatio cupressus conscendo adeptio claudeo alioqui virtus. Demulceo admitto caveo.	3	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
18	ara copia qui	Venustas substantia sublime carpo. Tantillus accendo cauda. Ustulo benigne crapula vesper.	3	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
19	calculus vulnus ubi	Cultellus caste altus. Solitudo demo cibo. Neque aurum illum in enim adulatio.	4	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
20	harum reprehenderit bene	Caelum charisma terror thymbra tracto adstringo creo turpis temporibus nobis. Ea attonbitus inventore tracto sonitus officia artificiose venustas unde. Pel voluptatum curto caecus attollo volubilis veritas unus.	4	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
21	verto peior subito	Tempore cibo somniculosus audentia defero spargo tricesimus. Aegrus aeternus patior tametsi. Denique bene despecto arcesso theca vado audeo annus bibo abduco.	4	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
22	tum tum verumtamen	Appello cognomen tabgo amaritudo totus adopto modi exercitationem subseco amor. Vaco crudelis tum vis aro tracto commemoro. Cinis aedificium debitis allatus adaugeo aperte.	4	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
23	desolo cuius bos	Civis expedita sodalitas sub adamo sortitus arto somniculosus. Vomer cometes sulum eum terror sum terreo. Perspiciatis via curvo tero vita.	4	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
24	terga earum dolores	Alias caterva utpote solum capitulus spero bene. Admoveo cogo aliquam claro recusandae utroque. Cogo illo saepe surculus delectus.	4	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
25	congregatio cultura civitas	Id inflammatio considero universe. Conicio vacuus cornu cohors dicta cinis vitium condico tardus credo. Socius comprehendo animus.	4	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
26	pax blandior utor	Validus adhuc cumque sonitus soleo animadverto. Tandem cupressus nisi placeat aeternus claudeo clarus tum iste crastinus. Pectus appono praesentium atrox depereo decumbo.	4	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
27	agnitio clementia nostrum	Callide bibo ascit dedico. Vere laborum uxor terror somniculosus varietas. Maxime viriliter cervus audacia magni.	4	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
28	cupressus vobis tenuis	Autem appello velum charisma cruentus absens censura defungo thymum thalassinus. Curia iste utpote demoror virgo subiungo curvo non universe. Trucido copiose crebro cado attonbitus vitiosus rem arca demens varietas.	5	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
29	tumultus caelum aureus	Aurum atqui qui colo deludo demum laudantium ater. Ultra cito aptus occaecati. Sequi casso itaque fugit damno.	5	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
30	caput vomica vorago	Incidunt placeat soleo. Ulterius dedico vulnus sequi. Clarus tenetur desolo demitto libero valeo deripio testimonium quod.	5	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
31	iste infit reprehenderit	Vulgus tergiversatio vis facere. Quae averto cado decens ara earum. Adiuvo culpo adipisci.	5	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
32	quis turbo adamo	Tabesco cur audeo amita depopulo suus veritas. Itaque suspendo ustilo. Suadeo cena alii thymbra dolorem tredecim timor.	5	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
33	volubilis ara stabilis	Defessus absconditus bos agnosco adinventitias adiuvo delectus acidus vacuus. Advenio pectus vir ventito. Stipes denuncio substantia aranea.	5	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
34	ab quisquam summopere	Ago corrupti cursus molestiae totam bonus vilicus. Suasoria stella talus. Somniculosus vereor crur cuppedia.	6	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
35	ocer alias spero	Itaque totidem adiuvo comprehendo ceno cauda arceo aegre argumentum. Cauda supplanto tonsor defendo tum tui sublime alo tubineus. Depraedor venustas ceno.	6	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
36	tantillus deficio denuo	Celebrer verbera traho asper surgo cura tutis amoveo. Territo thema allatus bellicus advenio depromo claustrum triduana cursus incidunt. Delicate alveus synagoga acer adstringo.	6	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
37	claustrum certus articulus	Quo surculus cito aperte decretum conventus celebrer acceptus celebrer. Cerno depono tripudio capitulus amo solium pectus aveho. Absorbeo dolore cribro amita repellat.	6	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
38	demulceo varietas illum	Teres veritatis compono vigilo vapulus adnuo minus. Vilitas unde triduana quos certus. Articulus ullam cunctatio.	6	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
39	paens votum aestus	Cohors somnus velit curso armarium illo claustrum usus arto tergeo. Ventosus agnosco taceo audentia quaerat. Traho somniculosus curso deficio.	7	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
40	curis celebrer defetiscor	Vallum communis victus dicta conspergo aperio adversus laudantium atqui paens. Quisquam omnis vereor. Vespillo tricesimus ullus tubineus aperte uterque molestiae bestia atrocitas.	7	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
41	conforto cubicularis adficio	Acquiro cicuta altus attonbitus aqua. Laboriosam depromo nisi verus delinquo volva nulla crebro itaque itaque. Desipio verbum cui vomica audentia amitto vir vereor turba coniuratio.	7	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
42	tripudio damno bardus	Annus admiratio acquiro quos sublime una trans corona. Desparatus pauci amaritudo alveus capitulus. Aequus ventito varietas talio usque pauper cunabula pecto velit aufero.	7	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
43	ceno spoliatio tendo	Usus vergo deprimo curiositas avaritia cado coniuratio virga vulpes subiungo. Comburo absque amitto. Vos tamen considero laudantium comburo.	7	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
44	considero cedo arx	Uberrime statua vilitas conculco delectatio suasoria. Causa cruciamentum cunae maiores urbanus. Cattus varietas tui arx absens solvo.	7	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
45	usque audax corroboro	Attero delectatio accusantium spero. Enim coepi tam vulpes tamen cui audax deludo tollo uxor. Victoria sub terminatio tandem veniam temeritas aufero conturbo coepi clibanus.	7	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
46	sapiente blandior ulciscor	Adeo vulnus sed summa alveus. Valeo thymum capto curia solio sperno absque pel tamen. Cetera derideo vereor.	7	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
47	desino depromo quidem	Perferendis defaeco ager. Adsuesco adicio cubitum curvo quod pax casso sumptus templum. Crastinus sortitus excepturi aeger paulatim.	7	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
48	celebrer nemo alius	Vulnero vomer attollo sopor patria cuius taedium non coniecto arceo. Conservo thorax comitatus ipsum alveus. Adeptio somniculosus curis decens succedo ciminatio angustus bis.	7	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
49	demoror succedo vinum	Usque tepesco virtus exercitationem acceptus clam canto admoneo territo somniculosus. Vilicus adsum aspernatur desidero. Derelinquo complectus sapiente illo vehemens demonstro vulnus adduco terreo cado.	8	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
50	delectus carbo dedecor	Subvenio adimpleo damno. Contabesco condico ustilo baiulus studio. Alii quia desipio sumo.	8	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
51	campana avaritia cultura	Ars debilito coma sopor strenuus cohibeo corpus earum statim. Vilicus agnosco suffragium abstergo vulpes votum praesentium. Valeo quis tametsi ubi vilitas adversus cura.	8	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
52	titulus ancilla sophismata	Titulus una admoneo. Voluptate adfero accedo. Umquam bestia excepturi benevolentia crustulum nemo comedo.	8	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
53	tui curvo demulceo	Adstringo tibi sapiente itaque tam. Calamitas cogito creptio sumo tripudio centum crastinus apparatus. Necessitatibus adduco clamo.	8	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
54	tremo coaegresco conscendo	Absque sub curia deprimo similique. Capitulus vacuus ullam peior tergeo defaeco delego. Stultus suggero quis theologus adiuvo.	8	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
55	surgo facilis nisi	Adhaero vivo tertius decipio. Valetudo voluptatem cernuus cohaero. Virtus pax unus talis possimus demum succurro.	8	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
56	demoror porro doloremque	Ocer sperno at cimentarius adnuo beatus atque. Candidus autus cilicium culpa delibero ago vulgo cotidie ater. Vespillo a utilis angustus dolores cui cunae.	8	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
57	custodia considero circumvenio	Adfero commodi comitatus defendo tempore ducimus. Atque accusamus cenaculum volutabrum vox. Cervus natus assentator contra ars taceo ventus.	8	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
58	bos vinco vomito	Conicio vel deinde apostolus. Quod vigor tabernus conqueror vigor minima dapifer. Tamisium molestiae tego.	9	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
59	patrocinor capillus vergo	Defungo adopto vobis curtus adeo utroque thymbra vespillo concido. Odio colligo beneficium stipes utor subnecto sit inventore odit. Coma explicabo verbum defessus utpote aut verto vehemens.	9	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
60	explicabo somnus tumultus	Apto absque ceno utrimque cubo celer sursum spargo. Tabesco viridis cimentarius in delicate desipio. Comedo iusto expedita tener.	9	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
61	comburo conicio subito	Iure conturbo delego velum solutio vae considero defungo voluptatem. Teneo conculco adficio cariosus quis. Quia administratio cerno officiis iusto sophismata abstergo venustas vox complectus.	9	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
62	volo vetus casso	Cursus defero textor cohibeo tum cervus. Aeger sol cito sumptus accusator venio speciosus rem accusamus angelus. Bene tot cubicularis censura solitudo confero ventito argumentum.	9	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
63	argentum debeo ascisco	Carpo temperantia spoliatio cauda curatio. Advenio deripio sublime sufficio derideo conventus cognatus thesis acceptus defessus. Bonus atrocitas barba.	9	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
64	comburo defungo conventus	Sequi coadunatio spiritus ab derideo thorax. Iure rerum tabula vetus capto sophismata. Cena asper trucido cupressus ulterius vel coaegresco cubitum vapulus strenuus.	9	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
65	territo curo patria	Bos velit trans. Circumvenio aufero comparo peccatus carbo campana vestigium vinculum amor cervus. Coerceo uxor trado.	9	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
66	urbs degenero ulciscor	Ustulo adnuo cunae deputo eum vergo ultio. Id corroboro crinis distinctio tamisium. Cubo annus curtus adimpleo vulgaris concido dolorum amiculum dolores statim.	9	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
67	nihil varietas solum	Vomica voluptate cubo contego sustineo amet laudantium texo amet custodia. Odio cerno surculus molestiae. Sollicito calculus astrum tero ullam sordeo ancilla.	9	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
68	deinde delego quidem	Nulla thymbra quasi voluptates pauci consequatur abscido. Asperiores aedificium vere summisse vox sonitus theatrum libero suadeo inflammatio. Eius arcesso cunctatio explicabo laudantium argumentum solutio suadeo.	10	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
69	sulum summopere decor	Cognatus bos contabesco. Adfectus auditor stillicidium tui colo attero adimpleo deprecator compono iusto. Cedo deprecator vesper cupressus reiciendis attonbitus ratione.	10	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
70	volup defetiscor thorax	Ducimus aureus verbum artificiose adficio laborum animi conforto alveus nisi. Tabernus infit aspicio absum sperno caute praesentium vere. Alter vinculum suppono alveus adiuvo aedificium tres tersus subiungo.	10	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
71	agnitio denuo acies	Coerceo avarus vitium arbitro communis. Apostolus civitas volutabrum. Crux tandem suscipio timidus.	10	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
72	ex appello vis	Tendo crux arcus vigilo trucido consequuntur tabernus cito ipsa despecto. Desidero ea voco accendo reiciendis vesco contego libero damnatio. Ambitus comparo deinde amo conventus.	10	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
73	dolores vinco doloribus	Arcus decretum auctus vis aurum. Conitor caterva avaritia vulgo valetudo cilicium. Contabesco aggero cura magnam tolero dapifer temeritas dicta.	10	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
74	amitto corrupti dedico	Articulus sponte tergum stipes speculum ager dolores. Voro culpo defungo cena tui. Vicinus coepi deficio constans.	10	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
75	aqua vae vivo	Aperio vulnus voco damno sulum. Amplexus administratio tumultus. Videlicet vomer conor defetiscor apostolus voco concido id aequitas dolores.	10	2024-02-15 01:10:22.240545+00	2024-02-15 01:10:22.240545+00
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, email, password, first_name, last_name, created_at, updated_at) FROM stdin;
1	geovanni_wyman53@hotmail.com	test_password	Darlene	Crona	2024-02-15 01:10:22.178026+00	2024-02-15 01:10:22.178026+00
2	watson95@yahoo.com	test_password	Connor	Goodwin	2024-02-15 01:10:22.178026+00	2024-02-15 01:10:22.178026+00
3	lavon57@hotmail.com	test_password	Chesley	Haley	2024-02-15 01:10:22.178026+00	2024-02-15 01:10:22.178026+00
4	jerel66@gmail.com	test_password	Theodore	Orn	2024-02-15 01:10:22.178026+00	2024-02-15 01:10:22.178026+00
5	gerard87@hotmail.com	test_password	Mireille	Brakus	2024-02-15 01:10:22.178026+00	2024-02-15 01:10:22.178026+00
6	maiya7@gmail.com	test_password	Onie	Rempel	2024-02-15 01:10:22.178026+00	2024-02-15 01:10:22.178026+00
7	mozelle_hahn8@hotmail.com	test_password	Hayley	Kunze	2024-02-15 01:10:22.178026+00	2024-02-15 01:10:22.178026+00
8	edna_carroll16@gmail.com	test_password	Camryn	Tromp	2024-02-15 01:10:22.178026+00	2024-02-15 01:10:22.178026+00
9	abby.ledner@gmail.com	test_password	Dallin	Gusikowski	2024-02-15 01:10:22.178026+00	2024-02-15 01:10:22.178026+00
10	melyna_hahn@hotmail.com	test_password	Donny	Douglas	2024-02-15 01:10:22.178026+00	2024-02-15 01:10:22.178026+00
\.


--
-- Name: knex_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.knex_migrations_id_seq', 2, true);


--
-- Name: knex_migrations_lock_index_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.knex_migrations_lock_index_seq', 1, true);


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posts_id_seq', 75, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 10, true);


--
-- Name: knex_migrations_lock knex_migrations_lock_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.knex_migrations_lock
    ADD CONSTRAINT knex_migrations_lock_pkey PRIMARY KEY (index);


--
-- Name: knex_migrations knex_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.knex_migrations
    ADD CONSTRAINT knex_migrations_pkey PRIMARY KEY (id);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: posts posts_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

