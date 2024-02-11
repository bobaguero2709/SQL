
CREATE SCHEMA video_club;


CREATE TABLE video_club.cities (
    id uuid DEFAULT uuid_in((md5(((random())::text || (clock_timestamp())::text)))::cstring) NOT NULL,
    city_name character varying(100) NOT NULL,
    id_country uuid NOT NULL,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone DEFAULT now()
);


ALTER TABLE video_club.cities OWNER TO nehiinhx;

--
-- TOC entry 246 (class 1259 OID 18819003)
-- Name: countries; Type: TABLE; Schema: video_club; Owner: nehiinhx
--

CREATE TABLE video_club.countries (
    id uuid DEFAULT uuid_in((md5(((random())::text || (clock_timestamp())::text)))::cstring) NOT NULL,
    country_name character varying(100) NOT NULL,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone DEFAULT now()
);


ALTER TABLE video_club.countries OWNER TO nehiinhx;

--
-- TOC entry 252 (class 1259 OID 18819821)
-- Name: directors; Type: TABLE; Schema: video_club; Owner: nehiinhx
--

CREATE TABLE video_club.directors (
    id uuid DEFAULT uuid_in((md5(((random())::text || (clock_timestamp())::text)))::cstring) NOT NULL,
    director_name character varying(100) NOT NULL,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone DEFAULT now()
);


ALTER TABLE video_club.directors OWNER TO nehiinhx;

--
-- TOC entry 251 (class 1259 OID 18819815)
-- Name: genres; Type: TABLE; Schema: video_club; Owner: nehiinhx
--

CREATE TABLE video_club.genres (
    id uuid DEFAULT uuid_in((md5(((random())::text || (clock_timestamp())::text)))::cstring) NOT NULL,
    genre_name character varying(100) NOT NULL,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone DEFAULT now()
);


ALTER TABLE video_club.genres OWNER TO nehiinhx;

--
-- TOC entry 250 (class 1259 OID 18819804)
-- Name: movies; Type: TABLE; Schema: video_club; Owner: nehiinhx
--

CREATE TABLE video_club.movies (
    id uuid DEFAULT uuid_in((md5(((random())::text || (clock_timestamp())::text)))::cstring) NOT NULL,
    title character varying(100) NOT NULL,
    published_year numeric NOT NULL,
    id_genre uuid NOT NULL,
    id_director uuid NOT NULL,
    synopsis text,
    stock numeric NOT NULL,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone DEFAULT now()
);


ALTER TABLE video_club.movies OWNER TO nehiinhx;

--
-- TOC entry 249 (class 1259 OID 18819058)
-- Name: partners; Type: TABLE; Schema: video_club; Owner: nehiinhx
--

CREATE TABLE video_club.partners (
    id uuid DEFAULT uuid_in((md5(((random())::text || (clock_timestamp())::text)))::cstring) NOT NULL,
    dni character varying(20) NOT NULL,
    partner_name character varying(50) NOT NULL,
    partner_lastname character varying(50) NOT NULL,
    birthdate date NOT NULL,
    mobile character varying(20) NOT NULL,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone DEFAULT now()
);


ALTER TABLE video_club.partners OWNER TO nehiinhx;

--
-- TOC entry 248 (class 1259 OID 18819040)
-- Name: partners_addresses; Type: TABLE; Schema: video_club; Owner: nehiinhx
--

CREATE TABLE video_club.partners_addresses (
    id uuid DEFAULT uuid_in((md5(((random())::text || (clock_timestamp())::text)))::cstring) NOT NULL,
    zip_code character varying(10) NOT NULL,
    street character varying(20) NOT NULL,
    address_floor character varying(10) NOT NULL,
    address_number numeric NOT NULL,
    id_city uuid NOT NULL,
    id_partner uuid NOT NULL,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone DEFAULT now()
);


ALTER TABLE video_club.partners_addresses OWNER TO nehiinhx;

--
-- TOC entry 253 (class 1259 OID 18819882)
-- Name: rental_movies; Type: TABLE; Schema: video_club; Owner: nehiinhx
--

CREATE TABLE video_club.rental_movies (
    id uuid DEFAULT uuid_in((md5(((random())::text || (clock_timestamp())::text)))::cstring) NOT NULL,
    id_partner uuid NOT NULL,
    id_movie uuid NOT NULL,
    rental_date timestamp without time zone NOT NULL,
    return_date timestamp without time zone,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone DEFAULT now()
);


ALTER TABLE video_club.rental_movies OWNER TO nehiinhx;

--
-- TOC entry 4187 (class 0 OID 18819009)
-- Dependencies: 247
-- Data for Name: cities; Type: TABLE DATA; Schema: video_club; Owner: nehiinhx
--

INSERT INTO video_club.cities (id, city_name, id_country, created_at, updated_at) VALUES ('584270f2-0af2-c387-3b9d-1e8cf74857be', 'Madrid', 'fbae69d4-d133-d3e8-da4c-30fe5dbd6b96', '2024-02-11 21:39:48.559089+00', '2024-02-11 21:39:48.559089+00');


--
-- TOC entry 4186 (class 0 OID 18819003)
-- Dependencies: 246
-- Data for Name: countries; Type: TABLE DATA; Schema: video_club; Owner: nehiinhx
--

INSERT INTO video_club.countries (id, country_name, created_at, updated_at) VALUES ('fbae69d4-d133-d3e8-da4c-30fe5dbd6b96', 'España', '2024-02-11 21:39:16.737026+00', '2024-02-11 21:39:16.737026+00');


--
-- TOC entry 4192 (class 0 OID 18819821)
-- Dependencies: 252
-- Data for Name: directors; Type: TABLE DATA; Schema: video_club; Owner: nehiinhx
--

INSERT INTO video_club.directors (id, director_name, created_at, updated_at) VALUES ('296427c5-41c4-e603-16b1-c12031939aee', 'Quentin Jerome Tarantino', '2024-02-11 21:40:25.505026+00', '2024-02-11 21:40:25.505026+00');
INSERT INTO video_club.directors (id, director_name, created_at, updated_at) VALUES ('7bf450ae-0cdf-672c-fac6-b335e907673c', 'Martin Charles Scorsese', '2024-02-11 21:40:45.685232+00', '2024-02-11 21:40:45.685232+00');


--
-- TOC entry 4191 (class 0 OID 18819815)
-- Dependencies: 251
-- Data for Name: genres; Type: TABLE DATA; Schema: video_club; Owner: nehiinhx
--

INSERT INTO video_club.genres (id, genre_name, created_at, updated_at) VALUES ('c0f91b67-e7b7-6608-a491-5a6f5d51ed3e', 'Acción', '2024-02-11 21:42:30.413634+00', '2024-02-11 21:42:30.413634+00');
INSERT INTO video_club.genres (id, genre_name, created_at, updated_at) VALUES ('9694bcbb-f2ff-17c2-0875-009a6093b60e', 'Ciencia Ficción', '2024-02-11 21:42:39.478982+00', '2024-02-11 21:42:39.478982+00');
INSERT INTO video_club.genres (id, genre_name, created_at, updated_at) VALUES ('2610da91-4f2e-a421-31fb-55ad96f348d9', 'Drama', '2024-02-11 21:43:13.31114+00', '2024-02-11 21:43:13.31114+00');
INSERT INTO video_club.genres (id, genre_name, created_at, updated_at) VALUES ('b2498712-ae8d-2bea-52f3-e194a0389622', 'Suspenso', '2024-02-11 21:43:19.781265+00', '2024-02-11 21:43:19.781265+00');
INSERT INTO video_club.genres (id, genre_name, created_at, updated_at) VALUES ('d1088603-9da7-4a66-2de4-c54442a9b67e', 'Crimen', '2024-02-11 21:47:25.543147+00', '2024-02-11 21:47:25.543147+00');
INSERT INTO video_club.genres (id, genre_name, created_at, updated_at) VALUES ('4c472a57-330a-f798-6a3c-e5ded93a6c15', 'Comedia Negra', '2024-02-11 21:48:21.381485+00', '2024-02-11 21:48:21.381485+00');


--
-- TOC entry 4190 (class 0 OID 18819804)
-- Dependencies: 250
-- Data for Name: movies; Type: TABLE DATA; Schema: video_club; Owner: nehiinhx
--

INSERT INTO video_club.movies (id, title, published_year, id_genre, id_director, synopsis, stock, created_at, updated_at) VALUES ('86907976-3294-a631-e148-d410c5add75f', 'Reservoir Dogs', 1992, 'd1088603-9da7-4a66-2de4-c54442a9b67e', '296427c5-41c4-e603-16b1-c12031939aee', 'Reservoir Dogs (conocida como Perros de reserva en México y Perros de la calle en otros países de Hispanoamérica) es una película estadounidense del año 1992 dirigida y escrita por Quentin Tarantino, siendo esta su debut como director.

Está protagonizada por Harvey Keitel, Tim Roth, Chris Penn, Steve Buscemi, Lawrence Tierney y Michael Madsen. La actuación de Tarantino es de menor trascendencia, como también la del escritor exconvicto, Eddie Bunker. Reservoir Dogs incorpora muchos temas y estéticas que se transformarían y se darían a conocer como sellos propios de Tarantino, como director y guionista.

Tarantino, quien en sus inicios trabajó como empleado en una tienda de vídeos en Los Ángeles, originalmente iba a filmar la película junto a sus amigos con un presupuesto de 30 000 dólares, un formato de 16 mm y el productor Lawrence Bender sería quien realizaría el papel de "Eddie Cabot".3​ Sin embargo, el actor Harvey Keitel se involucró en el proyecto por vía de la esposa del profesor de actuación de Bender, la cual entregó una copia del guion a Keitel,4​ quien estuvo no solo de acuerdo en tener un papel en la película, sino también en coproducirlo. Con la ayuda de Keitel, los realizadores fueron capaces de aumentar el presupuesto a 1,2 millones de dólares para la realización del filme,2​ demasiado extenso para una película realizada de forma independiente, pero una pequeña fracción de lo que sería una típica producción de Hollywood. La película desde entonces es vista como un importante y muy influyente hito del cine independiente.[cita requerida]

La película española Distrito Quinto (1957) del director Julio Coll, anterior a esta, utilizaba el mismo clima claustrofóbico de unos atracadores reunidos en un local, tras el atraco realizado, que no sale en escena sino que se adivina por los diálogos y la utilización de retrospectivas (flashbacks) parciales, para montar la historia, con la sospecha añadida de que uno de ellos los traiciona.5​ Según Tarantino, con Reservoir Dogs buscaba conseguir un resultado similar al de Blood Simple (1984) de los hermanos Coen.', 5, '2024-02-11 21:50:30.687284+00', '2024-02-11 21:50:30.687284+00');
INSERT INTO video_club.movies (id, title, published_year, id_genre, id_director, synopsis, stock, created_at, updated_at) VALUES ('59606abc-ddb0-2bad-d5bb-a1d41aa018c7', 'Pulp Fiction', 1994, '4c472a57-330a-f798-6a3c-e5ded93a6c15', '296427c5-41c4-e603-16b1-c12031939aee', 'Pulp Fiction (conocida como Tiempos violentos en Hispanoamérica) es una película estadounidense de 19944​ escrita y dirigida por Quentin Tarantino. El guion está basado en historias que el mismo Tarantino desarrolló en colaboración con Roger Avary[aclaración requerida] durante los años 1992 y 1993, incluyendo escenas que originalmente habían sido escritas para True Romance. A partir de una narrativa no lineal, la película entrelaza varias historias cuyos protagonistas son miembros del crimen organizado de Los Ángeles. Los diálogos estilizados, la mezcla de humor y violencia y su tono irónico distinguen a la película. Su nombre deriva de las revistas de literatura pulp y las novelas gráficas hard boiled, muy populares a mediados del siglo xx, conocidas por su violencia gráfica y su prosa dura. Es protagonizada por John Travolta, Uma Thurman, Samuel L. Jackson, Harvey Keitel, Bruce Willis y Tim Roth, entre otros. Es considerada una de las cintas más representativas de la obra del director estadounidense, siendo una de las obras que le consagró como cineasta.5​6​

Se estrenó el 21 de mayo de 19947​ en el Festival de Cine de Cannes, donde consiguió la Palma de Oro.8​9​ Posteriormente, fue galardonada con el Globo de Oro al mejor guion10​ y obtuvo siete candidaturas en la 67.ª edición de los Premios Óscar (entre ellos mejor película y mejor director) y, aunque solo obtuvo el Óscar al mejor guion original,11​12​ recibió más de cuarenta premios internacionales y otras tantas nominaciones. En 2013, la película fue considerada «cultural, histórica y estéticamente significativa» por la Biblioteca del Congreso de Estados Unidos y seleccionada para su preservación en el National Film Registry.13​ y hoy es propiedad de Paramount Pictures

Pulp Fiction está considerada como uno de los principales representantes del cine posmoderno.14​ Además, su estructura y su estilo poco convencionales la han convertido en una película de culto cuya influencia se ha dejado sentir en otras películas, así como en otros campos culturales', 10, '2024-02-11 21:50:30.687284+00', '2024-02-11 21:50:30.687284+00');
INSERT INTO video_club.movies (id, title, published_year, id_genre, id_director, synopsis, stock, created_at, updated_at) VALUES ('9c948fae-e1a7-21e9-3c47-126a5825e467', 'Kill Bill Vol. 1', 2003, 'c0f91b67-e7b7-6608-a491-5a6f5d51ed3e', '296427c5-41c4-e603-16b1-c12031939aee', 'Kill Bill: Volumen 1 es una película de acción y suspense estadounidense escrita y dirigida por Quentin Tarantino. Es la primera de las dos películas que fueron lanzadas en cines aparte varios meses, la segunda titulada Kill Bill: Volumen 2. La película fue originalmente programada para un estreno único, pero con una duración de más de cuatro horas, finalmente siendo separada en dos volúmenes. Kill Bill: Volumen 1 fue estrenada a finales de 2003, y Kill Bill: Volumen 2 fue lanzada a inicios de 2004. Las dos películas son frecuentemente referidas como «Kill Bill». La película está protagonizada por Uma Thurman, David Carradine, Vivica A. Fox, Lucy Liu, Michael Madsen, Sonny Chiba y Daryl Hannah.

Las dos películas siguen a un personaje inicialmente identificada como «La Novia», un antiguo miembro de un equipo de asesinos que busca venganza de sus excolegas que masacraron a los miembros de su fiesta de boda e intentaron matarla. La película es a menudo notada por su estilo de dirección y su homenaje a los géneros cinematográficos como las películas de artes marciales hongkonesas, las películas de samuráis, spaghetti western, chicas pistoleras, y violación y venganza.

La película comenzó con una dedicatoria al director japonés Kinji Fukasaku, y estuvo inspirada en la película de animación japonesa Blood: The Last Vampire. Una edición diferente de la película fue lanzada específicamente para Japón, y fue estrenada varias semanas más tarde. Mientras que la versión estadounidense muestra la escena de la batalla contra el grupo "Los 88 maníacos" en blanco y negro, la versión japonesa y europea la muestra totalmente en color. El rodaje de la película duró 8 meses y muchas de sus escenas fueron filmadas en Japón. Miramax es la distribuidora en los Estados Unidos.', 5, '2024-02-11 21:50:30.687284+00', '2024-02-11 21:50:30.687284+00');
INSERT INTO video_club.movies (id, title, published_year, id_genre, id_director, synopsis, stock, created_at, updated_at) VALUES ('6c50606b-ffc1-671b-64ff-63fef62957ec', 'Kill Bill Vol. 2', 2004, 'c0f91b67-e7b7-6608-a491-5a6f5d51ed3e', '296427c5-41c4-e603-16b1-c12031939aee', 'Kill Bill: volumen 2 es una película de acción y suspense estadounidense escrita y dirigida por Quentin Tarantino. Es la segunda de las dos películas que fueron lanzadas en cines aparte varios meses, la primera titulada Kill Bill: volumen 1. La película fue originalmente programada para un estreno único, pero con una duración de más de cuatro horas, finalmente siendo separada en dos volúmenes. Kill Bill: volumen 1 fue estrenada a finales de 2003, y Kill Bill: volumen 2 fue lanzada a inicios de 2004. La película está protagonizada por Uma Thurman, David Carradine, Vivica A. Fox, Lucy Liu, Michael Madsen, Sonny Chiba y Daryl Hannah.

Las dos películas siguen a un personaje inicialmente identificado como «La Novia», antiguo miembro de un grupo de asesinos y que busca vengarse de los que habían sido sus colegas por haber masacrado a los asistentes a su boda e intentaron matarla. La película a menudo se destaca por su estilo de dirección y su homenaje a los géneros cinematográficos como las películas de artes marciales hongkonesa, las películas de samuráis, spaghetti western, chicas pistoleras, y cine de violación y venganza.', 5, '2024-02-11 21:50:30.687284+00', '2024-02-11 21:50:30.687284+00');
INSERT INTO video_club.movies (id, title, published_year, id_genre, id_director, synopsis, stock, created_at, updated_at) VALUES ('676fc4ad-2377-f620-c0aa-d118bbc2696c', 'Once Upon a Time in Hollywood', 2019, '4c472a57-330a-f798-6a3c-e5ded93a6c15', '296427c5-41c4-e603-16b1-c12031939aee', 'Once Upon a Time in Hollywood n. 1​ (titulada: Érase una vez en Hollywood, en España, y Había una vez en Hollywood en Hispanoamérica) es una película estadounidense de comedia dramática de 2019, escrita y dirigida por Quentin Tarantino. La cinta fue protagonizada por Leonardo DiCaprio, Brad Pitt, Margot Robbie y demás actores los cuales interpretan a grandes artistas de la época dorada de Hollywood.3​4​

La historia se centra en la vida del actor de Hollywood venido a menos, Rick Dalton (DiCaprio), y la de su amigo y doble de acción, Cliff Booth (Pitt). De manera paralela a la trama principal, se narran fragmentos de la vida de la actriz Sharon Tate (Robbie) y de los miembros de la secta la Familia Manson, liderada por Charles Manson.4​

La película homenajea también a la época dorada del western en Almería, el que fuera uno de los platós naturales predilectos de Sergio Leone.5​ En la película aparecen varios guiños a Almería, así como a su Desierto de Tabernas, el cual ha sido sede de cientos de rodajes de películas a lo largo de la historia. Cabe mencionar que, tras la finalización del rodaje de Once Upon a Time in Hollywood, su director, Quentin Tarantino declaró: «Quiero visitar Almería sea como sea y rodar allí mi propio western».6​

La película se estrenó en el Festival de Cine de Cannes el 21 de mayo de 2019, en los Estados Unidos el 26 de julio de 2019 y en el Reino Unido el 14 de agosto de ese mismo año. Recaudó 344 millones de dólares en todo el mundo, y The Hollywood Reporter escribió que los críticos tenían «una visión general positiva» de la película, al considerarla «la carta de amor de Tarantino a los años 60 en Los Ángeles» y se elogió las elecciones de reparto y la ambientación en general, si bien algunos estaban «divididos sobre su final».7​

La película tuvo 10 candidaturas a los Premios Óscar, y ganó en las categorías de Mejor Actor de Reparto para Brad Pitt y de Mejor Diseño de Producción.', 2, '2024-02-11 21:50:30.687284+00', '2024-02-11 21:50:30.687284+00');
INSERT INTO video_club.movies (id, title, published_year, id_genre, id_director, synopsis, stock, created_at, updated_at) VALUES ('778c79c6-7ae0-d592-c8fe-8c41343f4d6e', 'Goodfellas', 1990, 'd1088603-9da7-4a66-2de4-c54442a9b67e', '7bf450ae-0cdf-672c-fac6-b335e907673c', 'Goodfellas (titulada: Uno de los nuestros en España y Buenos muchachos en Hispanoamérica) es una película dramática criminal estadounidense de 1990 dirigida por Martin Scorsese. Está basada en el libro sobre hechos reales Wiseguy de Nicholas Pileggi, quien también coescribió el guion para la película con Scorsese. La película sigue el ascenso y caída de tres delincuentes durante tres décadas. Es protagonizada por Ray Liotta, Robert De Niro, Joe Pesci, Lorraine Bracco y Paul Sorvino en los papeles principales.

Scorsese tenía previsto dirigir Goodfellas antes que La última tentación de Cristo, pero cuando los fondos se materializaron para realizar La última tentación de Cristo, pospuso la película que por entonces era conocida como Wise Guy. El título del libro de Pileggi ya había sido utilizado para una serie de televisión y para una película, la comedia de 1986 dirigida por Brian De Palma, por lo que Pileggi y Scorsese cambiaron el nombre de su película a Goodfellas. Para preparar sus respectivos papeles en el filme, De Niro, Pesci y Liotta hablaron a menudo con Pileggi, quien compartió con los actores el material de investigación que había sido omitido en la creación del libro. Según Pesci, la improvisación provino de los ensayos donde Scorsese dio a los actores plena libertad para actuar como quisieran. El director realizó transcripciones de las sesiones, tomó nota de las acciones que más le gustaban de los actores y las incluyó en el guion definitivo, con el que se trabajó durante el rodaje principal.

Goodfellas obtuvo buenos resultados en la taquilla, obteniendo 46,8 millones de dólares en Estados Unidos, muy por encima de su presupuesto de 25 millones dólares. La película fue candidata a seis Premios Óscar, ganando solamente uno por Pesci en la categoría de mejor actor de reparto. Además, el filme recibió cinco premios por parte de la Academia Británica de las Artes Cinematográficas y de la Televisión y fue nombrada mejor película del año por el Círculo de Críticos de Cine de Nueva York, por la Asociación de Críticos de Cine de Los Ángeles y por la Asociación Nacional de Críticos de Cine. Uno de los nuestros fue declarada de "importancia cultural" y seleccionada para su preservación en el National Film Registry por la Biblioteca del Congreso de Estados Unidos.

La palabra malsonante "joder" (fuck) es usada en la película en 300 ocasiones (2,05/min),4​ siendo la undécima película que más veces utiliza la palabra.', 3, '2024-02-11 21:52:50.489523+00', '2024-02-11 21:52:50.489523+00');
INSERT INTO video_club.movies (id, title, published_year, id_genre, id_director, synopsis, stock, created_at, updated_at) VALUES ('0b80bbab-fae1-49ea-b9fa-434fdbed730c', 'El lobo de Wall Street', 2013, '4c472a57-330a-f798-6a3c-e5ded93a6c15', '7bf450ae-0cdf-672c-fac6-b335e907673c', 'El lobo de Wall Street —cuyo título original en inglés es The Wolf of Wall Street— es una película estadounidense de comedia negra criminal biográfica de 2013 dirigida por Martin Scorsese y escrita por Terence Winter, basada en las memorias de Jordan Belfort del mismo nombre de 2007. Cuenta la carrera de Belfort como agente de bolsa en la ciudad de Nueva York y cómo su firma, Stratton Oakmont, se involucró desenfrenadamente en la corrupción y el fraude en Wall Street, lo que lo llevó a su caída. Leonardo DiCaprio, quien también fue productor de la película, interpreta a Belfort, con Jonah Hill como su socio y amigo Donnie Azoff, Margot Robbie como su segunda esposa, Naomi Lapaglia, y Kyle Chandler como el agente del FBI Patrick Denham.

DiCaprio y Warner Bros. obtuvieron los derechos de las memorias de Belfort en 2007, con Scorsese confirmado para dirigir, pero las restricciones con respecto al contenido de la adaptación estancaron la producción. Posteriormente, el proyecto recibió luz verde de la productora independiente Red Granite Pictures. La filmación tuvo lugar a fines de 2012 en la ciudad de Nueva York y se filmó principalmente en material de película.

La película se estrenó en la ciudad de Nueva York el 17 de diciembre de 2013 y fue estrenada en los Estados Unidos el 25 de diciembre de 2013 por Paramount Pictures. Fue la primera película estadounidense importante que se lanzó exclusivamente a través de distribución digital.3​ Fue un gran éxito comercial, recaudando 392 millones de dólares en todo el mundo durante su presentación en cines, convirtiéndose en la película más taquillera de Scorsese.4​ La película fue controvertida por su ambigüedad moral y falta de simpatía por las víctimas, así como por su contenido sexual explícito, lenguaje soez extremo, retrato del uso de drogas duras y uso de animales durante la producción. Estableció un récord mundial Guinness por la mayor cantidad de casos de palabras malsonantes en una película. La financiación de la película quedó implicada en el escándalo de corrupción del 1Malaysia Development Berhad; el Departamento de Justicia de Estados Unidos y la Comisión Anticorrupción de Malasia investigaron Red Granite Pictures y el productor Riza Aziz fue arrestado en 2019.

La película recibió reseñas positivas por parte de la crítica cinematográfica y apareció en varias listas de las mejores cintas del año. Fue nominada a varios premios, incluidos cinco en la 86.ª edición de los Premios Óscar: mejor película, mejor director, mejor guion adaptado, mejor actor (para DiCaprio) y mejor actor de reparto (para Hill). DiCaprio ganó el premio al mejor actor en una comedia o musical en la 71.ª edición de los Premios Globo de Oro, donde el filme también fue nominado en la categoría de mejor película de comedia o musical.', 0, '2024-02-11 21:52:50.489523+00', '2024-02-11 21:52:50.489523+00');


--
-- TOC entry 4189 (class 0 OID 18819058)
-- Dependencies: 249
-- Data for Name: partners; Type: TABLE DATA; Schema: video_club; Owner: nehiinhx
--

INSERT INTO video_club.partners (id, dni, partner_name, partner_lastname, birthdate, mobile, created_at, updated_at) VALUES ('46cc8214-971f-78c4-716d-fa2eefb57230', 'XXXXXXXX', 'Robert', 'Aguero', '1984-09-02', '+584126307715', '2024-02-11 21:53:49.025499+00', '2024-02-11 21:53:49.025499+00');
INSERT INTO video_club.partners (id, dni, partner_name, partner_lastname, birthdate, mobile, created_at, updated_at) VALUES ('7eb2225f-b938-2d5f-e84e-9003a1ae4bae', 'ZZZZZZZZ', 'Marianny', 'Ortiz', '1985-11-13', '+584127001522', '2024-02-11 21:54:32.391834+00', '2024-02-11 21:54:32.391834+00');
INSERT INTO video_club.partners (id, dni, partner_name, partner_lastname, birthdate, mobile, created_at, updated_at) VALUES ('67586150-48ac-d204-b55c-7580ec526f48', 'YYYYYYYY', 'Roma', 'Aguero', '2003-09-27', '+584241234567', '2024-02-11 21:55:16.035692+00', '2024-02-11 21:55:16.035692+00');


--
-- TOC entry 4188 (class 0 OID 18819040)
-- Dependencies: 248
-- Data for Name: partners_addresses; Type: TABLE DATA; Schema: video_club; Owner: nehiinhx
--

INSERT INTO video_club.partners_addresses (id, zip_code, street, address_floor, address_number, id_city, id_partner, created_at, updated_at) VALUES ('523ea78b-246a-59b8-e6ca-1ccf122d363b', '1010', 'Av Brasil', '3', 4, '584270f2-0af2-c387-3b9d-1e8cf74857be', '67586150-48ac-d204-b55c-7580ec526f48', '2024-02-11 21:56:36.934721+00', '2024-02-11 21:56:36.934721+00');
INSERT INTO video_club.partners_addresses (id, zip_code, street, address_floor, address_number, id_city, id_partner, created_at, updated_at) VALUES ('b5a06689-eefa-c34a-25c3-84c6fd3d07ad', '1060', 'Av Colombia', '4', 1, '584270f2-0af2-c387-3b9d-1e8cf74857be', '46cc8214-971f-78c4-716d-fa2eefb57230', '2024-02-11 21:58:24.007588+00', '2024-02-11 21:58:24.007588+00');
INSERT INTO video_club.partners_addresses (id, zip_code, street, address_floor, address_number, id_city, id_partner, created_at, updated_at) VALUES ('71c93611-f20f-9a39-ee67-cfd005beeab2', '1030', 'Calle Costa Rica', '16', 3, '584270f2-0af2-c387-3b9d-1e8cf74857be', '7eb2225f-b938-2d5f-e84e-9003a1ae4bae', '2024-02-11 21:58:58.776156+00', '2024-02-11 21:58:58.776156+00');


--
-- TOC entry 4193 (class 0 OID 18819882)
-- Dependencies: 253
-- Data for Name: rental_movies; Type: TABLE DATA; Schema: video_club; Owner: nehiinhx
--

INSERT INTO video_club.rental_movies (id, id_partner, id_movie, rental_date, return_date, created_at, updated_at) VALUES ('5dfeb208-8e19-273d-4fc3-66d51840cdd1', '46cc8214-971f-78c4-716d-fa2eefb57230', '59606abc-ddb0-2bad-d5bb-a1d41aa018c7', '2024-02-11 22:04:15.912116', NULL, '2024-02-11 22:04:15.912116+00', '2024-02-11 22:04:15.912116+00');
INSERT INTO video_club.rental_movies (id, id_partner, id_movie, rental_date, return_date, created_at, updated_at) VALUES ('b860d4e8-056a-e6b0-5488-144f01a98f30', '46cc8214-971f-78c4-716d-fa2eefb57230', '59606abc-ddb0-2bad-d5bb-a1d41aa018c7', '2023-02-11 06:04:15.912116', '2023-03-11 06:04:15.912116', '2024-02-11 22:04:49.266571+00', '2024-02-11 22:04:49.266571+00');
INSERT INTO video_club.rental_movies (id, id_partner, id_movie, rental_date, return_date, created_at, updated_at) VALUES ('a5192a61-e216-3cc9-e7e9-56b37e59872f', '46cc8214-971f-78c4-716d-fa2eefb57230', '6c50606b-ffc1-671b-64ff-63fef62957ec', '2024-01-11 22:04:15.912116', '2024-01-15 22:04:15.912116', '2024-02-11 22:05:25.232589+00', '2024-02-11 22:05:25.232589+00');
INSERT INTO video_club.rental_movies (id, id_partner, id_movie, rental_date, return_date, created_at, updated_at) VALUES ('34ec8206-06f0-aa0f-83e0-9051d6ee4fc1', '67586150-48ac-d204-b55c-7580ec526f48', '0b80bbab-fae1-49ea-b9fa-434fdbed730c', '2024-02-11 22:05:56.344495', NULL, '2024-02-11 22:05:56.344495+00', '2024-02-11 22:05:56.344495+00');
INSERT INTO video_club.rental_movies (id, id_partner, id_movie, rental_date, return_date, created_at, updated_at) VALUES ('1c173e9f-0942-93ff-4633-b7db1b3cd18d', '67586150-48ac-d204-b55c-7580ec526f48', '676fc4ad-2377-f620-c0aa-d118bbc2696c', '2023-09-10 22:05:56.344495', '2023-09-12 22:05:56.344495', '2024-02-11 22:06:52.270728+00', '2024-02-11 22:06:52.270728+00');
INSERT INTO video_club.rental_movies (id, id_partner, id_movie, rental_date, return_date, created_at, updated_at) VALUES ('cf6a696b-3ac1-9283-5210-2832d843b36e', '7eb2225f-b938-2d5f-e84e-9003a1ae4bae', '9c948fae-e1a7-21e9-3c47-126a5825e467', '2024-02-11 22:07:19.784806', NULL, '2024-02-11 22:07:19.784806+00', '2024-02-11 22:07:19.784806+00');


--
-- TOC entry 4030 (class 2606 OID 18819031)
-- Name: cities cities_pkey; Type: CONSTRAINT; Schema: video_club; Owner: nehiinhx
--

ALTER TABLE ONLY video_club.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);


--
-- TOC entry 4028 (class 2606 OID 18819016)
-- Name: countries countries_pkey; Type: CONSTRAINT; Schema: video_club; Owner: nehiinhx
--

ALTER TABLE ONLY video_club.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);


--
-- TOC entry 4044 (class 2606 OID 18819840)
-- Name: directors directors_pkey; Type: CONSTRAINT; Schema: video_club; Owner: nehiinhx
--

ALTER TABLE ONLY video_club.directors
    ADD CONSTRAINT directors_pkey PRIMARY KEY (id);


--
-- TOC entry 4042 (class 2606 OID 18819831)
-- Name: genres genres_pkey; Type: CONSTRAINT; Schema: video_club; Owner: nehiinhx
--

ALTER TABLE ONLY video_club.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (id);


--
-- TOC entry 4040 (class 2606 OID 18819814)
-- Name: movies movies_pkey; Type: CONSTRAINT; Schema: video_club; Owner: nehiinhx
--

ALTER TABLE ONLY video_club.movies
    ADD CONSTRAINT movies_pkey PRIMARY KEY (id);


--
-- TOC entry 4035 (class 2606 OID 18819050)
-- Name: partners_addresses partners_addresses_pkey; Type: CONSTRAINT; Schema: video_club; Owner: nehiinhx
--

ALTER TABLE ONLY video_club.partners_addresses
    ADD CONSTRAINT partners_addresses_pkey PRIMARY KEY (id);


--
-- TOC entry 4037 (class 2606 OID 18819065)
-- Name: partners partners_pkey; Type: CONSTRAINT; Schema: video_club; Owner: nehiinhx
--

ALTER TABLE ONLY video_club.partners
    ADD CONSTRAINT partners_pkey PRIMARY KEY (id);


--
-- TOC entry 4047 (class 2606 OID 18819889)
-- Name: rental_movies rental_movies_pkey; Type: CONSTRAINT; Schema: video_club; Owner: nehiinhx
--

ALTER TABLE ONLY video_club.rental_movies
    ADD CONSTRAINT rental_movies_pkey PRIMARY KEY (id);


--
-- TOC entry 4031 (class 1259 OID 18819022)
-- Name: fki_fk_cities_id_country; Type: INDEX; Schema: video_club; Owner: nehiinhx
--

CREATE INDEX fki_fk_cities_id_country ON video_club.cities USING btree (id_country);


--
-- TOC entry 4032 (class 1259 OID 18819082)
-- Name: fki_fk_parnerts_addresses_id_partner; Type: INDEX; Schema: video_club; Owner: nehiinhx
--

CREATE INDEX fki_fk_parnerts_addresses_id_partner ON video_club.partners_addresses USING btree (id_partner);


--
-- TOC entry 4045 (class 1259 OID 18819895)
-- Name: fki_fk_rental_movies_id_movie; Type: INDEX; Schema: video_club; Owner: nehiinhx
--

CREATE INDEX fki_fk_rental_movies_id_movie ON video_club.rental_movies USING btree (id_movie);


--
-- TOC entry 4033 (class 1259 OID 18819056)
-- Name: fki_k; Type: INDEX; Schema: video_club; Owner: nehiinhx
--

CREATE INDEX fki_k ON video_club.partners_addresses USING btree (id_city);


--
-- TOC entry 4038 (class 1259 OID 18819880)
-- Name: fki_kdirector; Type: INDEX; Schema: video_club; Owner: nehiinhx
--

CREATE INDEX fki_kdirector ON video_club.movies USING btree (id_director);


--
-- TOC entry 4048 (class 2606 OID 18819017)
-- Name: cities fk_cities_id_country; Type: FK CONSTRAINT; Schema: video_club; Owner: nehiinhx
--

ALTER TABLE ONLY video_club.cities
    ADD CONSTRAINT fk_cities_id_country FOREIGN KEY (id_country) REFERENCES video_club.countries(id) NOT VALID;


--
-- TOC entry 4051 (class 2606 OID 18819874)
-- Name: movies fk_movies_id_director; Type: FK CONSTRAINT; Schema: video_club; Owner: nehiinhx
--

ALTER TABLE ONLY video_club.movies
    ADD CONSTRAINT fk_movies_id_director FOREIGN KEY (id_director) REFERENCES video_club.directors(id) NOT VALID;


--
-- TOC entry 4052 (class 2606 OID 18819841)
-- Name: movies fk_movies_id_genre; Type: FK CONSTRAINT; Schema: video_club; Owner: nehiinhx
--

ALTER TABLE ONLY video_club.movies
    ADD CONSTRAINT fk_movies_id_genre FOREIGN KEY (id_genre) REFERENCES video_club.genres(id);


--
-- TOC entry 4049 (class 2606 OID 18819051)
-- Name: partners_addresses fk_parnerts_addresses_id_city; Type: FK CONSTRAINT; Schema: video_club; Owner: nehiinhx
--

ALTER TABLE ONLY video_club.partners_addresses
    ADD CONSTRAINT fk_parnerts_addresses_id_city FOREIGN KEY (id_city) REFERENCES video_club.cities(id);


--
-- TOC entry 4050 (class 2606 OID 18819077)
-- Name: partners_addresses fk_parnerts_addresses_id_partner; Type: FK CONSTRAINT; Schema: video_club; Owner: nehiinhx
--

ALTER TABLE ONLY video_club.partners_addresses
    ADD CONSTRAINT fk_parnerts_addresses_id_partner FOREIGN KEY (id_partner) REFERENCES video_club.partners(id) NOT VALID;


--
-- TOC entry 4053 (class 2606 OID 18819890)
-- Name: rental_movies fk_rental_movies_id_movie; Type: FK CONSTRAINT; Schema: video_club; Owner: nehiinhx
--

ALTER TABLE ONLY video_club.rental_movies
    ADD CONSTRAINT fk_rental_movies_id_movie FOREIGN KEY (id_movie) REFERENCES video_club.movies(id);


--
-- TOC entry 4054 (class 2606 OID 18819896)
-- Name: rental_movies fk_rental_movies_id_partner; Type: FK CONSTRAINT; Schema: video_club; Owner: nehiinhx
--

ALTER TABLE ONLY video_club.rental_movies
    ADD CONSTRAINT fk_rental_movies_id_partner FOREIGN KEY (id_partner) REFERENCES video_club.partners(id) NOT VALID;


-- Completed on 2024-02-11 18:23:50

--
-- PostgreSQL database dump complete
--
-- SELECT STOCK
SELECT distinct(title), stock 
FROM
video_club.rental_movies rm
INNER JOIN video_club.movies mo
ON(rm.id_movie=mo.id)
WHERE mo.stock > 0;


-- SELECT FAVORITES GENRES
SELECT pa.dni, pa.partner_name, pa.partner_lastname,genre_name, COUNT(1) 
FROM video_club.rental_movies rm
INNER JOIN video_club.movies mo
ON(rm.id_movie=mo.id)
INNER JOIN video_club.partners pa
ON(rm.id_partner=pa.id)
INNER JOIN video_club.genres ge
ON(mo.id_genre=ge.id)
GROUP BY pa.dni, pa.partner_name, pa.partner_lastname,genre_name
ORDER BY COUNT(1) DESC, pa.dni ASC;
