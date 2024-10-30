insert into entrenador(Nombre,Genero,Rol) values
("Chano","Masculino","Joven"),
("Jaime","Masculino","Cazabichos"),
("Rita","Femenino","Chica"),
("Celia","Femenino","Dominguera"),
("Gaspar","Masculino","Entrenador Guay"),
("Evaristo","Masculino","Montañero"),
("Ben","Masculino","Pokemaniaco"),
("Lola","Femenino","Playera"),
("Carla","Femenino","Modelo"),
("Anselmo","Masculino","Anciano");
-- -----------------------------------------------------------------------------------------------------------
insert into generacion(Numero,Region,Legendario1,Legendario2) values
(1,"Kanto","Mew","Mewtwo"),
(2,"Johto","Ho-oh","Lugia"),
(3,"Hoenn","Groudon","Kyogre"),
(4,"Sinnoh","Dialga","Palkia"),
(5,"Teselia","Zekrom","Reshiram"),
(6,"Kalos","Yveltal","Xerneas"),
(7,"Alola","Solgaleo","Lunala"),
(8,"Galar","Zacian","Zamazenta"),
(9,"Paldea","Miraidon","Koraidon");
-- -----------------------------------------------------------------------------------------------------------
insert into gimnasio(Nombre,Tipo,Ciudad,Generacion_Numero) values
("Gimnasio de Ciudad Plateada","Roca","Ciudad Plateada",1),
("Gimnasio de Ciudad Celeste","Agua","Ciudad Celeste",1),
("Gimnasio de Ciudad Trigal","Normal","Ciudad Trigal",2),
("Gimnasio de Ciudad Endrino","Dragón","Ciudad Endrino",2),
("Gimnasio de Pueblo Lavacalda","Fuego","Pueblo Lavacalda",3),
("Gimnasio de Ciudad Malvalona","Eléctrico","Ciudad Malvalona",3),
("Gimnasio de Ciudad Rocavelo","Lucha","Ciudad Rocavelo",4),
("Gimnasio de Ciudad Corazón","Fantasma","Ciudad Corazón",4),
("Gimnasio de Ciudad Fayenza","Tierra","Ciudad Fayenza",5),
("Gimnasio de Ciudad Loza","Volador","Ciudad Loza",5),
("Gimnasio de Ciudad Romantis","Hada","Ciudad Romantis",6),
("Gimnasio de Ciudad Fluxus","Psíquico","Ciudad Fluxus",6),
("Gimnasio de Pueblo Auriga","Hielo","Pueblo Auriga",8),
("Gimnasio de Pueblo Crampón","Siniestro","Pueblo Crampón",8),
("Gimnasio de Pueblo Pirotín","Bicho","Pueblo Pirotín",9),
("Gimnasio de Pueblo Altamía","Planta","Pueblo Altamía",9);
-- -----------------------------------------------------------------------------------------------------------
insert into lider(Nombre,Tipo,Ciudad,Gimnasio_Nombre) values
("Brock","Roca","Ciudad Plateada","Gimnasio de Ciudad Plateada"),
("Misty","Agua","Ciudad Celeste","Gimnasio de Ciudad Celeste"),
("Blanca","Normal","Ciudad Trigal","Gimnasio de Ciudad Trigal"),
("Débora","Dragón","Ciudad Endrino","Gimnasio de Ciudad Endrino"),
("Candela","Fuego","Pueblo Lavacalda","Gimnasio de Pueblo Lavacalda"),
("Erico","Eléctrico","Ciudad Malvalona","Gimnasio de Ciudad Malvalona"),
("Brega","Lucha","Ciudad Rocavelo","Gimnasio de Ciudad Rocavelo"),
("Fantina","Fantasma","Ciudad Corazón","Gimnasio de Ciudad Corazón"),
("Yakón","Tierra","Ciudad Fayenza","Gimnasio de Ciudad Fayenza"),
("Gerania","Volador","Ciudad Loza","Gimnasio de Ciudad Loza"),
("Valeria","Hada","Ciudad Romantis","Gimnasio de Ciudad Romantis"),
("Ástrid","Psíquico","Ciudad Fluxus","Gimnasio de Ciudad Fluxus"),
("Mel","Hielo","Pueblo Auriga","Gimnasio de Pueblo Auriga"),
("Nerio","Siniestro","Pueblo Crampón","Gimnasio de Pueblo Crampón"),
("Araceli","Bicho","Pueblo Pirotín","Gimnasio de Pueblo Pirotín"),
("Brais","Planta","Pueblo Altamía","Gimnasio de Pueblo Altamía");
-- -----------------------------------------------------------------------------------------------------------
insert into movimiento(Nombre,Tipo,Categoria,Descripcion,PP) values
("Placaje","Normal","Físico","Arremete contra el rival",35),
("Ascuas","Fuego","Especial","Escupe fuego al rival (Puede quemar)",25),
("Pistola agua","Agua","Especial","Escupe un chorro de agua al rival",25),
("Látigo cepa","Planta","Físico","Saca un látigo de su cuerpo y golpea al rival",25),
("Impactrueno","Eléctrico","Especial","Lanza una pequeña descarga al rival",30),
("Bofetón lodo","Tierra","Especial","Arroja un poco de tierra al rival (Baja la precisión)",10),
("Chupavidas","Bicho","Físico","Clava los colmillos en el rival chupandole un poco de vida (El usuario recupera PS)",10),
("Lanzarrocas","Roca","Físico","Arroja una pequeña roca al rival",15),
("Tornado","Volador","Especial","Mueve sus alas creando un pequeño tornado que afecta al rival",35),
("Brecha negra","Siniestro","Estado","Somete al rival a un agujero negro haciendo que se duerma",10),
("Tóxico","Veneno","Estado","Envenena gravemente al rival",10),
("Garra metal","Acero","Físico","Agrede al rival con su garra tan dura como el acero (Puede subir el ataque)",35),
("Bola sombra","Fantasma","Especial","Crea una bola compuesta de sombras y se la lanza al rival (Puede bajar la defensa especial)",15),
("Viento feérico","Hada","Especial","Crea una corriente fantástica que golpea al rival",30),
("Alud","Hielo","Físico","Arroja rocas de hielo (Si el usuario ha sido golpeado antes en ese turno, dobla la potencia)",10),
("Psíquico","Psíquico","Especial","Ataca al rival con energía mental (Puede bajar la defensa especial)",10),
("Demolición","Lucha","Físico","Ataca al rival con un golpe demoledor",15),
("Furia dragón","Dragón","Especial","Energía dragón que quita 40 PS al rival",10),
("Lanzallamas","Fuego","Especial","Aliento de fuego potentísimo hacia el rival",15),
("Mordisco","Siniestro","Físico","Pega un mordisco al rival",25),
("Surf","Agua","Especial","Surfea una gran ola que golpea al rival",15),
("Hoja aguja","Planta","Físico","Filo de hoja que mete una tajada al rival",15),
("Rayo","Eléctrico","Especial","Lanza un rayo al rival",15),
("Terremoto","Tierra","Físico","Provoca un terremoto que golpea al rival",10),
("Bomba lodo","Veneno","Especial","Lanza una bola de veneno al rival (Puede envenenar al rival)",10),
("Rayo hielo","Hielo","Especial","Lanza un rayo helado al rival (Puede congelar al rival)",10),
("Fuego fatuo","Fuego","Estado","Quema al rival",15),
("Onda trueno","Eléctrico","Estado","Paraliza al rival",20),
("Gruñido","Normal","Estado","Baja el ataque del rival",40),
("Tajo aéreo","Volador","Especial","Lanza tajos de aire al rival",15);
-- -----------------------------------------------------------------------------------------------------------
insert into objeto(Nombre,Descripcion) values
("Poke Ball","Dispositivo con diseño capsular que captura Pokémon salvajes. Se lanza como una bola contra el blanco."),
("Super Ball","Poké Ball de alto rendimiento. Tiene un índice de captura superior al de la Poké Ball."),
("Ultra Ball","Poké Ball de rendimiento superior. Tiene un índice de captura mayor al de la Super Ball."),
("Poción","Medicina en espray que cura heridas y restaura 20 PS de un Pokémon."),
("Superpoción","Medicina en espray que cura heridas y restaura 60 PS de un Pokémon."),
("Hiperpoción","Medicina en espray que cura heridas y restaura 120 PS de un Pokémon."),
("Baya Aranja","Los Pokémon pueden llevarla y usarla para restaurar 10 PS."),
("Baya Meloc","Los Pokémon pueden llevarla y usarla para curarse del envenenamiento."),
("Baya Zidra","Los Pokémon pueden llevarla y usarla para restaurar algunos PS."),
("Caramelo Raro","Caramelo energético que sube a un Pokémon de nivel.");
-- -----------------------------------------------------------------------------------------------------------
insert into profesor(Nombre,Ciudad,Inicial1,Inicial2,Inicial3,Generacion_Numero) values
("Oak","Pueblo Paleta","Bulbasaur","Charmander","Squirtle",1),
("Elm","Pueblo Primavera","Chikorita","Cyndaquil","Totodile",2),
("Abedul","Villa Raíz","Treecko","Torchic","Mudkip",3),
("Serbal","Pueblo Arena","Turtwig","Chimchar","Piplup",4),
("Encina","Pueblo Arcilla","Snivy","Tepig","Oshawott",5),
("Ciprés","Ciudad Luminalia","Chespin","Fennekin","Froakie",6),
("Kukui","Afueras Hauoli","Rowlet","Litten","Popplio",7),
("Magnolia","Pueblo Par","Grookey","Scorbunny","Sobble",8),
("Turo","Sendero Cahíz","Sprigatito","Fuecoco","Quaxly",9);
-- -----------------------------------------------------------------------------------------------------------
insert into pokemon(Nombre,Numero,Tipo1,Tipo2,Descripcion,Objeto_Nombre,Generacion_Numero) values
("Charmander",0004,"Fuego",null,"Prefiere los sitios calientes. Dicen que cuando llueve sale vapor de la punta de su cola.",null,1),
("Charmeleon",0005,"Fuego",null,"Cuando balancea su ardiente cola, eleva la temperatura a niveles muy altos.",null,1),
("Charizard",0006,"Fuego","Volador","Escupe fuego tan caliente que funde las rocas. Causa incendios forestales sin querer.",null,1),
("Bulbasaur",0001,"Planta","Veneno","Una rara semilla fue plantada en su espalda al nacer. La planta brota y crece con este Pokémon.",null,1),
("Ivysaur",0002,"Planta","Veneno","Cuando el bulbo de su espalda crece, parece no poder ponerse de pie sobre sus patas traseras.",null,1),
("Venusaur",0003,"Planta","Veneno","La planta florece cuando absorbe energía solar. Ésta le obliga a ponerse en busca de la luz solar.",null,1),
("Squirtle",0007,"Agua",null,"Tras nacer, su espalda se hincha y endurece como una concha. Echa potente espuma por la boca.",null,1),
("Wartortle",0008,"Agua",null,"Se oculta en el agua para cazar a sus presas. Al nadar rápidamente, mueve sus orejas para nivelarse.",null,1),
("Blastoise",0009,"Agua",null,"Un brutal Pokémon con reactores de agua en su caparazón. Éstos son usados para rápidos placajes.",null,1), 
("Cyndaquil",0155,"Fuego",null,"Suele estar acurrucado. Si se enfada o asusta, lanzará llamas por su lomo.",null,2),
("Quilava",0156,"Fuego",null,"El pelaje de este Pokémon es ignífugo. Puede soportar cualquier ataque de fuego.",null,2),
("Typhlosion",0157,"Fuego",null,"Si su furia crece, se calienta tanto que cualquier cosa que toque se prenderá al instante.",null,2),
("Chikorita",0152,"Planta",null,"Sus hojas aromáticas son capaces de medir la humedad y la temperatura.",null,2),
("Bayleef",0153,"Planta",null,"Emana un aroma picante de su cuello. El aroma actúa como estimulante para recuperar su salud.",null,2),
("Meganium",0154,"Planta",null,"El olor que desprenden sus pétalos contiene una sustancia que calma el instinto agresivo.",null,2),
("Totodile",0158,"Agua",null,"Es pequeño pero violento. No dudará en morder cualquier cosa que se mueva cerca.",null,2),
("Croconaw",0159,"Agua",null,"Si pierde un colmillo, le crecerá otro en su lugar. Siempre tiene 48 colmillos en su boca.",null,2),
("Feraligatr",0160,"Agua",null,"Al morder con sus feroces fauces, mueve su cabeza despedazando salvajemente a su víctima.",null,2),
("Torchic",0255,"Fuego",null,"En su interior, guarda una llama que arde sin cesar. Si se le abraza, se nota que tiene una temperatura muy alta.",null,3),
("Combusken",0256,"Fuego","Lucha","Propina hasta diez patadas por segundo. Tiene un instinto de lucha tan fuerte que no deja de pelear hasta que el rival se rinde.",null,3),
("Blaziken",0257,"Fuego","Lucha","Aprende artes marciales en las que se dan puñetazos y patadas. Al cabo de varios años, se le queman las plumas y le crecen otras nuevas, muy flexibles, en su lugar.",null,3),
("Treecko",0252,"Planta",null,"Hace su nido en un árbol gigante y defiende ferozmente su territorio de cualquier peligro. Dicen que es el protector de los árboles del bosque.",null,3),
("Grovyle",0253,"Planta",null,"Este Pokémon revolotea de rama en rama con maestría. Cuando Grovyle va volando por el bosque, no hay quien lo alcance por muy rápido que sea.",null,3),
("Sceptile",0254,"Planta",null,"A Sceptile le crecen en la espalda unas semillas llenas de nutrientes que sirven para revitalizar los árboles. De hecho, se dedica a cuidarlos con mimo para que crezcan bien.",null,3),
("Mudkip",0258,"Agua",null,"En tierra firme, puede levantar grandes cantos rodados haciendo palanca con sus cuatro patas. Duerme enterrado en el suelo, cerca del agua.",null,3),
("Marshtomp",0259,"Agua","Tierra","Tiene unas patas traseras fortísimas que le permiten mantenerse erguido. Como se debilita si se le seca la piel, juega en el lodo para mantenerse hidratado.",null,3),
("Swampert",0260,"Agua","Tierra","Tiene unos brazos duros como el acero. De una batida puede dejar molido al enemigo. Construye su nido en la playa.",null,3),
("Chimchar",0390,"Fuego",null,"El gas de su panza alimenta el fuego de su parte trasera, que ni la lluvia puede extinguir.",null,4),
("Monferno",0391,"Fuego","Lucha","Intimida a sus enemigos desplegando el fuego en su cola para parecer más grande.",null,4),
("Infernape",0392,"Fuego","Lucha","Su corona de fuego demuestra su naturaleza ígnea. Pocos le ganan en velocidad.",null,4),
("Turtwig",0387,"Planta",null,"La concha de su espalda es de tierra y se endurece cuando bebe agua. Vive cerca de los lagos.",null,4),
("Grotle",0388,"Planta",null,"Su concha es tierra dura. Algunos Pokémon picotean las bayas que crecen en su espalda.",null,4),
("Torterra",0389,"Planta","Tierra","Muchos confunden los grupos de Torterra que migran en busca de agua con bosques vivientes.",null,4),
("Piplup",0393,"Agua",null,"Vive en las costas de los países nórdicos. Es un gran nadador y puede bucear más de 10 minutos.",null,4),
("Prinplup",0394,"Agua",null,"Los golpes de sus alas pueden partir los árboles más gruesos. Busca sus presas en aguas heladas.",null,4),
("Empoleon",0395,"Agua","Acero","Los tres cuernos de su pico son muestra de su fuerza. El líder tiene los cuernos más grandes.",null,4),
("Tepig",0498,"Fuego",null,"Lanza llamas por su hocico. Cuando está resfriado, expulsa humo azabache en lugar de fuego.",null,5),
("Pignite",0499,"Fuego","Lucha","Cuando las llamas de su interior se avivan, aumenta su velocidad y agilidad. Emite humo si está en peligro.",null,5),
("Emboar",0500,"Fuego","Lucha","Posee una tupida barba fogosa. Es tanto rápido como poderoso, y su principal baza es la lucha cuerpo a cuerpo.",null,5),
("Snivy",0495,"Planta",null,"De gran inteligencia y sangre fría. Se mueve ágilmente si recibe rayos de sol de forma continua.",null,5),
("Servine",0496,"Planta",null,"Parece que se desliza al correr. Engaña a sus rivales con su velocidad y los fustiga con su látigo.",null,5),
("Serperior",0497,"Planta",null,"Detiene los movimientos del rival con una sola mirada. Expande la energía solar dentro de su cuerpo.",null,5),
("Oshawott",0501,"Agua",null,"La vieira de su ombligo está hecha del mismo material que sus garras. Puede sacarla y usarla de daga.",null,5),
("Dewott",0502,"Agua",null,"Gran espadachín. Utiliza sus dos vieiras con soltura al ejecutar las técnicas que aprende con una disciplina espartana.",null,5),
("Samurott",0503,"Agua",null,"Derriba a su rival con un solo tajo del sable que lleva en su coraza. Acalla al enemigo con una simple mirada.",null,5),
("Fennekin",0653,"Fuego",null,"Mordisquea una ramita mientras camina, como si de un aperitivo se tratase. Intimida a su enemigo expulsando aire caliente por las orejas.",null,6),
("Braixen",0654,"Fuego",null,"Tiene una rama enredada en la cola. Cuando la saca, la rama prende fuego al hacer fricción con su pelaje y se lanza al ataque con ella.",null,6),
("Delphox",0655,"Fuego","Psíquico","Sus poderes psíquicos le permiten controlar vórtices de fuego a 3000 ºC que envuelven y calcinan a sus enemigos.",null,6),
("Chespin",0650,"Planta",null,"Cuando acumula energía, las suaves púas de su cabeza se vuelven tan duras y afiladas que hasta pueden atravesar rocas.",null,6),
("Quilladin",0651,"Planta",null,"Desvía los ataques de los enemigos con la robusta coraza que cubre su cuerpo y contraataca con sus dos afilados cuernos.",null,6),
("Chesnaught",0652,"Planta","Lucha","Su fuerza es tal que, de un empellón, puede hacer volcar un tanque de 50 toneladas. Protege a sus aliados cuando hace de escudo.",null,6),
("Froakie",0656,"Agua",null,"Secreta burbujas tanto por la espalda como por el pecho. Gracias a la elasticidad de estas, puede parar ataques y reducir el daño recibido.",null,6),
("Frogadier",0657,"Agua",null,"Puede lanzar piedras envueltas en burbujas con tal puntería que acierta latas vacías a 30 metros de distancia.",null,6),
("Greninja",0658,"Agua","Siniestro","Comprime el agua y crea estrellas ninja con las que ataca al enemigo. Cuando las hace girar a gran velocidad cortan en dos hasta el metal.",null,6),
("Litten",0725,"Fuego",null,"Prende las bolas de pelo que se forman en su estómago tras acicalarse. Las llamas que escupe tienen formas variopintas.",null,7),
("Torracat",0726,"Fuego",null,"Luce al cuello un cascabel incandescente que tintinea con fuerza cuando desprende llamas.",null,7),
("Incineroar",0727,"Fuego","Siniestro","Posee un carácter rudo y egoísta. Si un Entrenador no le cae en gracia, ignora sus órdenes con total impasibilidad.",null,7),
("Rowlet",0722,"Planta","Volador","Es cauteloso, desconfiado y de naturaleza nocturna. Durante el día acumula energía mediante la fotosíntesis.",null,7),
("Dartrix",0723,"Planta","Volador","Ataca a sus presas y enemigos lanzándoles plumas sorprendentemente afiladas. Acierta prácticamente siempre.",null,7),
("Decidueye",0724,"Planta","Fantasma","Las plumas de sus alas le sirven de flechas con las que puede acertar a un guijarro a 100 m.",null,7),
("Popplio",0728,"Agua",null,"Maneja con soltura los globos de agua que crea, pero, para poder hacer uno bien grande, necesita practicar sin descanso.",null,7),
("Brionne",0729,"Agua",null,"Un bailarín consumado. Crea globos de agua con los que golpea a sus rivales una y otra vez sin dejar de bailar.",null,7),
("Primarina",0730,"Agua","Hada","Es capaz de controlar globos de agua mediante un canto cuya melodía se ha transmitido entre los suyos de generación en generación.",null,7),
("Scorbunny",0813,"Fuego",null,"Cuando se prepara para combatir, irradia calor por la punta de la nariz y el pelo que le recubre las patas.",null,8),
("Raboot",0814,"Fuego",null,"Su suave pelaje lo protege del frío y le permite incrementar todavía más la temperatura de sus movimientos de tipo Fuego.",null,8),
("Cinderace",0815,"Fuego",null,"Convierte piedras en balones de fuego dándoles toques y, luego, chuta con fuerza hacia el rival para chamuscarlo.",null,8),
("Grookey",0810,"Planta",null,"Al marcar el ritmo con su baqueta especial, produce unas ondas sonoras capaces de devolver la vitalidad a la flora.",null,8),
("Thwackey",0811,"Planta",null,"Se concentra tanto en marcar el ritmo que, cuando su rival se debilita en combate, no se da ni cuenta.",null,8),
("Rillaboom",0812,"Planta",null,"Controla los poderes y las raíces de su singular tocón en combate golpeándolo como si fuera un tambor.",null,8),
("Sobble",0816,"Agua",null,"Al mojarse, su piel cambia de color y pasa a ser invisible, como si se hubiese camuflado.",null,8),
("Drizzile",0817,"Agua",null,"Crea bolas de agua con el líquido que segrega por las palmas de las manos y las usa en combate de forma estratégica.",null,8),
("Inteleon",0818,"Agua",null,"Esconde algunos trucos bajo la manga: puede disparar agua por los dedos o planear con las membranas de su espalda.",null,8),
("Fuecoco",0909,"Fuego",null,"Yace sobre rocas calientes, cuyo calor transforma en energía ígnea tras absorberlo por sus escamas rectangulares.",null,9),
("Crocalor",0910,"Fuego",null,"Sus cuerdas vocales y la válvula de su saca de fuego están estrechamente relacionadas. Emite sonidos guturales al expeler llamas.",null,9),
("Skeledirge",0911,"Fuego","Fantasma","Su dulce canto calma el espíritu de quien lo oye. Achicharra a sus enemigos con llamas que llegan a alcanzar los 3000 ºC.",null,9),
("Sprigatito",0906,"Planta",null,"Su sedoso pelaje se asemeja en composición a las plantas. Se lava la cara con diligencia para que no se le seque.",null,9),
("Floragato",0907,"Planta",null,"Maneja diestramente la vid oculta bajo su largo pelaje y propina latigazos al enemigo con el capullo endurecido de la punta.",null,9),
("Meowscarada",0908,"Planta","Siniestro","Se sirve de la luz que reflejan los tricomas de su manto de hojas para camuflar la vid y crear la ilusión óptica de que la flor flota en el aire.",null,9),
("Quaxly",0912,"Agua",null,"La fuerza de sus patas le permite nadar incluso por las más fuertes corrientes fluviales. Adora la pulcritud y peca de inflexible en su actitud.",null,9),
("Quaxwell",0913,"Agua",null,"Un Pokémon diligente que ha creado su propio estilo de danza tras observar los movimientos de humanos y Pokémon de varias regiones.",null,9),
("Quaquaval",0914,"Agua","Lucha","Embelesa a quien lo ve con una danza que rebosa de exotismo y corta a sus rivales con sus plumas ornamentales hechas de agua.",null,9);
-- -----------------------------------------------------------------------------------------------------------
insert into movimiento_pokemon(Movimiento_Nombre,Pokemon_Nombre) values
("Ascuas","Charmander"),
("Ascuas","Charmeleon"),
("Lanzallamas","Charizard"),
("Pistola Agua","Squirtle"),
("Pistola Agua","Wartortle"),
("Surf","Blastoise"),
("Látigo cepa","Bulbasaur"),
("Bomba lodo","Ivysaur"),
("Tóxico","Venusaur"),
("Placaje","Cyndaquil"),
("Gruñido","Quilava"),
("Fuego fatuo","Typhlosion"),
("Mordisco","Totodile"),
("Pistola agua","Croconaw"),
("Surf","Feraligatr"),
("Látigo cepa","Chikorita"),
("Chupavidas","Bayleef"),
("Hoja aguja","Meganium"),
("Ascuas","Torchic"),
("Demolición","Combusken"),
("Demolición","Blaziken"),
("Pistola agua","Mudkip"),
("Bofetón lodo","Marshtomp"),
("Terremoto","Swampert"),
("Hoja aguja","Treecko"),
("Hoja aguja","Grovyle"),
("Hoja aguja","Sceptile"),
("Ascuas","Chimchar"),
("Ascuas","Monferno"),
("Demolición","Infernape"),
("Pistola agua","Piplup"),
("Pistola agua","Prinplup"),
("Garra metal","Empoleon"),
("Hoja aguja","Turtwig"),
("Hoja aguja","Grotle"),
("Terremoto","Torterra"),
("Ascuas","Tepig"),
("Ascuas","Pignite"),
("Demolición","Emboar"),
("Pistola agua","Oshawott"),
("Pistola agua","Dewott"),
("Surf","Samurott"),
("Hoja aguja","Snivy"),
("Hoja aguja","Servine"),
("Hoja aguja","Serperior"),
("Ascuas","Fennekin"),
("Ascuas","Braixen"),
("Psíquico","Delphox"),
("Pistola agua","Froakie"),
("Pistola agua","Frogadier"),
("Rayo hielo","Greninja"),
("Hoja aguja","Chespin"),
("Hoja aguja","Quilladin"),
("Demolición","Chesnaught"),
("Ascuas","Litten"),
("Ascuas","Torracat"),
("Brecha negra","Incineroar"),
("Pistola agua","Popplio"),
("Pistola agua","Brionne"),
("Viento feérico","Primarina"),
("Tornado","Rowlet"),
("Tornado","Dartrix"),
("Bola sombra","Decidueye"),
("Ascuas","Scorbunny"),
("Ascuas","Raboot"),
("Lanzallamas","Cinderace"),
("Pistola agua","Sobble"),
("Pistola agua","Drizzile"),
("Surf","Inteleon"),
("Hoja aguja","Grookey"),
("Hoja aguja","Thwackey"),
("Hoja aguja","Rillaboom"),
("Ascuas","Fuecoco"),
("Ascuas","Crocalor"),
("Bola sombra","Skeledirge"),
("Pistola agua","Quaxly"),
("Pistola agua","Quaxwell"),
("Surf","Quaquaval"),
("Hoja aguja","Sprigatito"),
("Hoja aguja","Floragato"),
("Brecha negra","Meowscarada");
-- -----------------------------------------------------------------------------------------------------------
insert into pokemon_entrenador(Pokemon_Nombre,Entrenador_Nombre) values
("Charmeleon","Anselmo"),
("Croconaw","Ben"),
("Grovyle","Carla"),
("Prinplup","Celia"),
("Servine","Chano"),
("Frogadier","Evaristo"),
("Torracat","Gaspar"),
("Raboot","Jaime"),
("Floragato","Lola"),
("Wartortle","Rita");
-- -----------------------------------------------------------------------------------------------------------
insert into pokemon_lider(Pokemon_Nombre,Lider_Nombre) values
("Torterra","Brock"),
("Blastoise","Misty"),
("Sceptile","Araceli"),
("Delphox","Ástrid"),
("Samurott","Blanca"),
("Meganium","Brais"),
("Infernape","Brega"),
("Cinderace","Candela"),
("Charizard","Débora"),
("Greninja","Erico"),
("Decidueye","Fantina"),
("Inteleon","Gerania"),
("Empoleon","Mel"),
("Meowscarada","Nerio"),
("Incineroar","Valeria"),
("Swampert","Yakón");