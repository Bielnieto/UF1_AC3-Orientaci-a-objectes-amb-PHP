# UF1_AC3-Orientaci-a-objectes-amb-PHP

En aquesta activitat crearàs un lloc web utilitzant PHP orientat a objectes (OOP) i una base de dades MySQL on els usuaris podran pujar fotos i afegir comentaris a les fotos publicades.

El lloc web tindrà una home page que mostrarà totes les fotos penjades pels usuaris, i una pàgina de detall de la foto on es podrà veure la imatge en gran, consultar els comentaris existents i enviar nous comentaris.



Requisits tècnics:

1. Utilització de PHP orientat a objectes (OOP):

- El projecte ha d'estar estructurat seguint els principis de programació orientada a objectes. Això inclou la creació de classes per gestionar fotos, comentaris i la connexió amb la base de dades.



2. Base de dades MySQL:

- La base de dades constarà de, com a mínim, dues taules: una per a les fotos i una altra per als comentaris.



- La taula de fotos ha de tenir, com a mínim, els següents camps:

id: identificador únic de la foto
titol: títol de la foto
descripcio: descripció breu de la foto
nom_fitxer: nom del fitxer de la imatge pujada
data_pujada: data i hora de la pujada de la foto


- La taula de comentaris ha de tenir, com a mínim, els següents camps:

id: identificador únic del comentari
id_foto: identificador de la foto associada al comentari
comentari: text del comentari
autor: nom de l'autor del comentari
data_comentari: data i hora de la publicació del comentari


3. Funcionalitats requerides:

Home page:
- Mostra una llista de totes les fotos pujades pels usuaris, amb la seva miniatura, títol i descripció



- Cada miniatura tindrà un enllaç que portarà a la pàgina de detall de la foto



Pàgina de detall de la foto
- Mostra la foto a mida completa, el títol, la descripció, i els comentaris associats



- Ha de tenir un formulari per afegir nous comentaris. El formulari ha de permetre introduir el nom de l'usuari i el text del comentari



- Quan es publiqui un comentari, aquest s'ha de desar a la base de dades i mostrar-se immediatament a la llista de comentaris de la foto



Pujar fotos:
- L'usuari ha de poder pujar una nova foto des d'una pàgina específica



- El formulari de pujada de fotos ha de permetre introduir un títol, una descripció i seleccionar un fitxer d'imatge per pujar



- La foto ha de ser desada en un directori del servidor, i la informació de la foto (títol, descripció i nom del fitxer) ha de ser desada a la base de dades



- Només s'han de permetre imatges en formats comuns (per exemple, JPG, PNG, GIF)



4. Seguretat:

- Validació del fitxer d'imatge abans de pujar-lo per assegurar-se que només es poden pujar imatges vàlides (per exemple, comprovar l'extensió del fitxer)



- Validació del formulari per afegir comentaris (per exemple, assegurar-se que no es deixen camps buits)



Funcionalitats Addicionals (Opcional):

- Validacions i missatges d'error: mostra missatges d'error amigables si no es puja una imatge vàlida o si el comentari té algun problema



- Paginació: afegeix paginació a la llista de fotos per mostrar un nombre limitat de fotos per pàgina



- Gestió d'usuaris: registre i login d'usuaris, aconseguint que únicament els usuaris que iniciïn sessió puguin pujar imatges i/o afegir comentaris


Recomanacions per la definició de classes:

Classe Database:

- Aquesta classe gestionarà la connexió amb la base de dades

- Atributs: host (adreça del servidor MySQL), dbname (nom de la base de dades), username (nom d'usuari de la base de dades), password (contrasenya de la base de dades), connection (objecte per establir la connexió amb la base de dades), etc.

- Mètodes: query() (executa consultes a la base de dades), getConnection() (retorna l'objecte de connexió), etc.

Classe Foto:

- Aquesta classe representaria una foto, incloent la gestió de la seva pujada i la seva informació

- Atributs: id (identificador de la foto), titol (títol de la foto), descripcio (breu descripció de la foto), nom_fitxer (nom del fitxer de la imatge), data_pujada (data i hora en què es va pujar la foto)

- Mètodes: pujarFoto($fitxer) (gestiona la pujada de la imatge al servidor, valida el format del fitxer i desa la imatge), guardarFoto() (desa la informació de la foto a la base de dades), getTotesFotos() (recupera totes les fotos de la base de dades), getFotoPerId($id) (recupera una foto concreta a partir de l'id), mostrarMiniatures() (retorna les miniatures de totes les fotos per mostrar a la pàgina d'inici, mostrarDetall() (mostra el detall complet d'una foto), etc.

Classe Comentari

- Aquesta classe representaria un comentari associat a una foto

- Atributs: id (identificador del comentari), id_foto (identificador de la foto associada), autor (autor del comentari), comentari (contingut del comentari), data (data en què es va publicar el comentari), etc.

- Mètodes: guardarComentari() (desa un nou comentari a la base de dades), getComentarisPerFoto($id_foto) (recupera tots els comentaris associats a una foto concreta), etc.
