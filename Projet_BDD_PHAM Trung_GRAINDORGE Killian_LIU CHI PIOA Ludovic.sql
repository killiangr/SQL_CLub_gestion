DROP DATABASE IF EXISTS club_efrei;
CREATE DATABASE club_efrei ;
USE club_efrei;		#création et utilisation de la database "club_efrei"


DROP TABLE IF EXISTS Etudiant;		#Supprime les tables des bases de données précédentes pour éviter de les générer en double
DROP TABLE IF EXISTS Evenement;
DROP TABLE IF EXISTS Rapport;
DROP TABLE IF EXISTS Comite;
DROP TABLE IF EXISTS Budget;
DROP TABLE IF EXISTS Tache;
DROP TABLE IF EXISTS Sponsor;
DROP TABLE IF EXISTS Administration;
DROP TABLE IF EXISTS Récompense;
DROP TABLE IF EXISTS Membre;
DROP TABLE IF EXISTS Président;
DROP TABLE IF EXISTS Club;
DROP TABLE IF EXISTS Responsable;
DROP TABLE IF EXISTS Rejoindre;
DROP TABLE IF EXISTS Rédiger;
DROP TABLE IF EXISTS Signer;
DROP TABLE IF EXISTS Lire; 
DROP TABLE IF EXISTS Générer;
DROP TABLE IF EXISTS Sanctionner;
DROP TABLE IF EXISTS Allouer;

CREATE TABLE Etudiant(	#création de la table Etudiant avec ses digroupe_férentes variables
   num_étudiant INT,
   genre VARCHAR(50),
   date_de_naissance DATE,
   classe VARCHAR(50),
   niveau VARCHAR(50),
   nom VARCHAR(50),
   PRIMARY KEY(num_étudiant)     #désigne les Clés primaires
);

#insére les données dans le tableau Etudiant
INSERT INTO Etudiant(num_étudiant,genre,date_de_naissance,classe,niveau,nom) VALUES('1','Homme','2001-04-06','A','L3','GRAINDORGE');
INSERT INTO Etudiant(num_étudiant,genre,date_de_naissance,classe,niveau,nom) VALUES('2','Homme','2001-05-07','B','L3','LIU CHI PIOA');
INSERT INTO Etudiant(num_étudiant,genre,date_de_naissance,classe,niveau,nom) VALUES('3','Homme','2001-06-08','C','L3','PHAM');
INSERT INTO Etudiant(num_étudiant,genre,date_de_naissance,classe,niveau,nom) VALUES('4','Homme','2001-07-09','D','L3','JOREAU');
INSERT INTO Etudiant(num_étudiant,genre,date_de_naissance,classe,niveau,nom) VALUES('5','Homme','2001-08-10','A','L3','MOUNSAMY');
INSERT INTO Etudiant(num_étudiant,genre,date_de_naissance,classe,niveau,nom) VALUES('6','Femme','2001-09-11','B','L3','BISBAU');
INSERT INTO Etudiant(num_étudiant,genre,date_de_naissance,classe,niveau,nom) VALUES('7','Femme','2001-10-12','B','L3','ISSENMANN');
INSERT INTO Etudiant(num_étudiant,genre,date_de_naissance,classe,niveau,nom) VALUES('8','Femme','2001-11-13','B','L3','FORTE');
INSERT INTO Etudiant(num_étudiant,genre,date_de_naissance,classe,niveau,nom) VALUES('9','Femme','2001-12-14','D','L3','KPAKPO');
INSERT INTO Etudiant(num_étudiant,genre,date_de_naissance,classe,niveau,nom) VALUES('10','Femme','2001-01-15','D','L3','NADARAJAH');
INSERT INTO Etudiant(num_étudiant,genre,date_de_naissance,classe,niveau,nom) VALUES('11','Femme','2001-01-16','D','L3','FENG');
INSERT INTO Etudiant(num_étudiant,genre,date_de_naissance,classe,niveau,nom) VALUES('12','Femme','2001-01-17','A','L3','BENIER');
INSERT INTO Etudiant(num_étudiant,genre,date_de_naissance,classe,niveau,nom) VALUES('13','Femme','2001-01-18','A','L3','WATT');
INSERT INTO Etudiant(num_étudiant,genre,date_de_naissance,classe,niveau,nom) VALUES('14','Femme','2001-01-19','A','L3','SENAUX');
INSERT INTO Etudiant(num_étudiant,genre,date_de_naissance,classe,niveau,nom) VALUES('15','Femme','2001-01-20','C','L3','CASIMIR');
INSERT INTO Etudiant(num_étudiant,genre,date_de_naissance,classe,niveau,nom) VALUES('16','Homme','2001-01-21','C','L3','MARTINENQ');
INSERT INTO Etudiant(num_étudiant,genre,date_de_naissance,classe,niveau,nom) VALUES('17','Homme','2001-01-22','A','L3','LAMPIN');
INSERT INTO Etudiant(num_étudiant,genre,date_de_naissance,classe,niveau,nom) VALUES('18','Homme','2001-01-23','A','L3','KEUNEBROEK');
INSERT INTO Etudiant(num_étudiant,genre,date_de_naissance,classe,niveau,nom) VALUES('19','Homme','2001-01-24','B','L3','LEMÉNAGER');
INSERT INTO Etudiant(num_étudiant,genre,date_de_naissance,classe,niveau,nom) VALUES('20','Homme','2001-01-25','B','L3','KASBAOUI');
INSERT INTO Etudiant(num_étudiant,genre,date_de_naissance,classe,niveau,nom) VALUES('21','Homme','2001-01-25','C','L3','FOFANA');
INSERT INTO Etudiant(num_étudiant,genre,date_de_naissance,classe,niveau,nom) VALUES('22','Homme','2001-01-25','A','L3','MABECQUE');
INSERT INTO Etudiant(num_étudiant,genre,date_de_naissance,classe,niveau,nom) VALUES('23','Homme','2001-01-25','C','L3','FOSTER');
INSERT INTO Etudiant(num_étudiant,genre,date_de_naissance,classe,niveau,nom) VALUES('24','Homme','2001-01-25','B','L3','VINCENT');
INSERT INTO Etudiant(num_étudiant,genre,date_de_naissance,classe,niveau,nom) VALUES('25','Homme','2001-01-25','D','L3','TOSCANELLI');
INSERT INTO Etudiant(num_étudiant,genre,date_de_naissance,classe,niveau,nom) VALUES('26','Homme','2001-01-25','D','L3','JANNÈS');
INSERT INTO Etudiant(num_étudiant,genre,date_de_naissance,classe,niveau,nom) VALUES('27','Homme','2001-01-25','A','L3','TEILLET');
INSERT INTO Etudiant(num_étudiant,genre,date_de_naissance,classe,niveau,nom) VALUES('28','Homme','2001-01-25','C','L3','PELTIER');
INSERT INTO Etudiant(num_étudiant,genre,date_de_naissance,classe,niveau,nom) VALUES('29','Homme','2001-01-25','D','L3','WANG');
INSERT INTO Etudiant(num_étudiant,genre,date_de_naissance,classe,niveau,nom) VALUES('30','Homme','2001-01-25','A','L3','LEGROS');

CREATE TABLE Evenement(
   Nom_e VARCHAR(50),
   date_debut DATE,
   date_fin DATE,
   heure_début TIME,
   heure_fin TIME,
   type_e VARCHAR(50),
   PRIMARY KEY(Nom_e, date_debut, date_fin)
);
INSERT INTO Evenement(Nom_e,date_debut,date_fin,heure_début,heure_fin,type_e) VALUES('POD intégration','2021-01-01','2021-01-01','18:00:00','22:00:00','soirée');
INSERT INTO Evenement(Nom_e,date_debut,date_fin,heure_début,heure_fin,type_e) VALUES('POD la fête de l eau qui pique','2021-02-02','2021-02-02','18:00:00','22:00:00','soirée');
INSERT INTO Evenement(Nom_e,date_debut,date_fin,heure_début,heure_fin,type_e) VALUES('POD agroupe_cueil international','2021-03-03','2021-03-03','18:00:00','22:00:00','soirée');
INSERT INTO Evenement(Nom_e,date_debut,date_fin,heure_début,heure_fin,type_e) VALUES('POD parrain','2021-04-04','2021-04-04','18:00:00','22:00:00','soirée');
INSERT INTO Evenement(Nom_e,date_debut,date_fin,heure_début,heure_fin,type_e) VALUES('rally culturel','2021-05-05','2021-05-05','18:00:00','22:00:00','soirée');
INSERT INTO Evenement(Nom_e,date_debut,date_fin,heure_début,heure_fin,type_e) VALUES('POD Live','2021-06-06','2021-06-06','18:00:00','22:00:00','soirée');
INSERT INTO Evenement(Nom_e,date_debut,date_fin,heure_début,heure_fin,type_e) VALUES('POD continental','2021-07-07','2021-07-07','18:00:00','22:00:00','soirée');
INSERT INTO Evenement(Nom_e,date_debut,date_fin,heure_début,heure_fin,type_e) VALUES('WEI','2021-08-08','2021-08-15','08:00:00','23:00:00','wgroupe_ek-end d intégration');
INSERT INTO Evenement(Nom_e,date_debut,date_fin,heure_début,heure_fin,type_e) VALUES('Concert','2021-09-09','2021-09-09','20:00:00','21:00:00','soirée');
INSERT INTO Evenement(Nom_e,date_debut,date_fin,heure_début,heure_fin,type_e) VALUES('Concert','2021-10-10','2021-10-10','20:00:00','21:00:00','soirée');
INSERT INTO Evenement(Nom_e,date_debut,date_fin,heure_début,heure_fin,type_e) VALUES('Concert','2022-04-18','2022-04-18','20:00:00','21:00:00','soirée');

CREATE TABLE Rapport(
   id_rapport VARCHAR(50),
   année INT, 
   état VARCHAR(50),
   nb_signature INT,
   PRIMARY KEY(id_rapport, année)
);

INSERT INTO Rapport(id_rapport, année, état, nb_signature) VALUES('1','2022','absent','0');
INSERT INTO Rapport(id_rapport, année, état, nb_signature) VALUES('2','2020','en attente','3');
INSERT INTO Rapport(id_rapport, année, état, nb_signature) VALUES('3','2021','en attente','1');
INSERT INTO Rapport(id_rapport, année, état, nb_signature) VALUES('4','2020','en attente','2');
INSERT INTO Rapport(id_rapport, année, état, nb_signature) VALUES('5','2022','en attente','2');
INSERT INTO Rapport(id_rapport, année, état, nb_signature) VALUES('6','2022','en attente','2');
INSERT INTO Rapport(id_rapport, année, état, nb_signature) VALUES('7','2022','signé','6');
INSERT INTO Rapport(id_rapport, année, état, nb_signature) VALUES('8','2021','signé','8');
INSERT INTO Rapport(id_rapport, année, état, nb_signature) VALUES('9','2022','signé','10');
INSERT INTO Rapport(id_rapport, année, état, nb_signature) VALUES('10','2022','soumis','7');
INSERT INTO Rapport(id_rapport, année, état, nb_signature) VALUES('11','2022','en attente','1');

CREATE TABLE Comite(
   id_comité INT,
   date_creation DATE,
   date_dissolution DATE,
   nb_personne INT,
   Nom_e VARCHAR(50) NOT NULL,
   date_debut DATE NOT NULL,
   date_fin DATE NOT NULL,
   PRIMARY KEY(id_comité, date_creation, date_dissolution), 
   UNIQUE(Nom_e, date_debut, date_fin),
   FOREIGN KEY(Nom_e, date_debut, date_fin) REFERENCES Evenement(Nom_e, date_debut, date_fin) #clés provenant d'autre tableau
);

INSERT INTO Comite(date_creation,date_dissolution, nb_personne, Nom_e, date_debut, date_fin,id_comité) VALUES('2021-01-01', '2021-01-01','7','POD intégration', '2021-01-01','2021-01-01','1');
INSERT INTO Comite(date_creation,date_dissolution,nb_personne, Nom_e, date_debut, date_fin,id_comité) VALUES('2021-02-02', '2021-02-07','6','POD la fête de l eau qui pique', '2021-02-02','2021-02-02','2');
INSERT INTO Comite(date_creation,date_dissolution,nb_personne, Nom_e, date_debut, date_fin,id_comité) VALUES('2021-01-01', '2021-01-07','5','POD agroupe_cueil international', '2021-03-03','2021-03-03','3');
INSERT INTO Comite(date_creation,date_dissolution,nb_personne, Nom_e, date_debut, date_fin,id_comité) VALUES('2021-02-01', '2021-02-07','8','POD parrain', '2021-04-04','2021-04-04','4');
INSERT INTO Comite(date_creation,date_dissolution,nb_personne, Nom_e, date_debut, date_fin,id_comité) VALUES('2021-03-01', '2021-03-07','9','rally culturel', '2021-05-05','2021-05-05','5');
INSERT INTO Comite(date_creation,date_dissolution,nb_personne, Nom_e, date_debut, date_fin,id_comité) VALUES('2021-01-01', '2021-03-03','10','POD Live', '2021-06-06','2021-06-06','6');
INSERT INTO Comite(date_creation,date_dissolution,nb_personne, Nom_e, date_debut, date_fin,id_comité) VALUES('2021-04-01', '2021-04-07','3','POD continental', '2021-07-07','2021-07-07','7');
INSERT INTO Comite(date_creation,date_dissolution,nb_personne, Nom_e, date_debut, date_fin,id_comité) VALUES('2021-05-01', '2021-05-07','7','WEI', '2021-08-08','2021-08-15','8');
INSERT INTO Comite(date_creation,date_dissolution,nb_personne, Nom_e, date_debut, date_fin,id_comité) VALUES('2021-06-01', '2021-06-07','5','Concert', '2021-09-09','2021-09-09','9');
INSERT INTO Comite(date_creation,date_dissolution,nb_personne, Nom_e, date_debut, date_fin,id_comité) VALUES('2021-04-01', '2022-05-07','7','Concert','2021-10-10','2021-10-10','10');
INSERT INTO Comite(date_creation,date_dissolution,nb_personne, Nom_e, date_debut, date_fin,id_comité) VALUES('2022-04-18', '2022-04-18','7','Concert','2022-04-18','2022-04-18','11');

CREATE TABLE Budget(
   id_Budget VARCHAR(50),
   montant_alloue INT NOT NULL,
   montant_dépense INT,
   id_comité INT NOT NULL,
   date_creation DATE NOT NULL,
   date_dissolution DATE NOT NULL,
   PRIMARY KEY(id_Budget),
   UNIQUE(id_comité, date_creation, date_dissolution),
   FOREIGN KEY(id_comité, date_creation, date_dissolution) REFERENCES Comite(id_comité, date_creation, date_dissolution)
);

INSERT INTO Budget(id_Budget,montant_alloue, montant_dépense, date_creation, date_dissolution,id_comité) VALUES('1','150','250', '2021-01-01', '2021-01-01','1');
INSERT INTO Budget(id_Budget,montant_alloue, montant_dépense, date_creation, date_dissolution,id_comité) VALUES('2','250','250', '2021-02-02', '2021-02-07','2');
INSERT INTO Budget(id_Budget,montant_alloue, montant_dépense, date_creation, date_dissolution,id_comité) VALUES('3','300','500', '2021-01-01', '2021-01-07','3');
INSERT INTO Budget(id_Budget,montant_alloue, montant_dépense, date_creation, date_dissolution,id_comité) VALUES('4','500','500', '2021-02-01','2021-02-07','4');
INSERT INTO Budget(id_Budget,montant_alloue, montant_dépense, date_creation, date_dissolution,id_comité) VALUES('5','750','750', '2021-03-01','2021-03-07','5');
INSERT INTO Budget(id_Budget,montant_alloue, montant_dépense, date_creation, date_dissolution,id_comité) VALUES('6','750','750', '2021-01-01','2021-03-03','6');
INSERT INTO Budget(id_Budget,montant_alloue, montant_dépense, date_creation, date_dissolution,id_comité) VALUES('7','1000','1000','2021-04-01','2021-04-07','7');
INSERT INTO Budget(id_Budget,montant_alloue, montant_dépense, date_creation, date_dissolution,id_comité) VALUES('8','100','100','2021-05-01','2021-05-07','8');
INSERT INTO Budget(id_Budget,montant_alloue, montant_dépense, date_creation, date_dissolution,id_comité) VALUES('9','400','400','2021-06-01','2021-06-07','9');
INSERT INTO Budget(id_Budget,montant_alloue, montant_dépense, date_creation, date_dissolution,id_comité) VALUES('10','300','300','2021-04-01', '2022-05-07','10');
INSERT INTO Budget(id_Budget,montant_alloue, montant_dépense, date_creation, date_dissolution,id_comité) VALUES('11','300','300','2022-04-18', '2022-04-18','11');



CREATE TABLE Tache(
   date_debut DATE,
   date_fin DATE,
   id_tache VARCHAR(50),
   nom_tache VARCHAR(50),
   PRIMARY KEY(date_debut, date_fin, id_tache)
);

INSERT INTO Tache(date_debut, date_fin, id_tache,nom_tache) VALUES('2022-01-01', '2022-06-01','1','location de la sono');
INSERT INTO Tache(date_debut, date_fin, id_tache,nom_tache) VALUES('2022-01-01', '2022-01-07','2','nourriture');
INSERT INTO Tache(date_debut, date_fin, id_tache,nom_tache) VALUES('2022-01-01', '2022-06-01','3','nourriture');
INSERT INTO Tache(date_debut, date_fin, id_tache,nom_tache) VALUES('2022-02-01', '2022-02-07','4','nourriture');
INSERT INTO Tache(date_debut, date_fin, id_tache,nom_tache) VALUES('2022-03-01', '2022-03-07','5','Boisson');
INSERT INTO Tache(date_debut, date_fin, id_tache,nom_tache) VALUES('2022-01-01', '2022-03-03','6','Boisson');
INSERT INTO Tache(date_debut, date_fin, id_tache,nom_tache) VALUES('2022-04-01', '2022-04-07','7','Boisson');
INSERT INTO Tache(date_debut, date_fin, id_tache,nom_tache) VALUES('2022-05-01', '2022-05-07','8','location de Bus');
INSERT INTO Tache(date_debut, date_fin, id_tache,nom_tache) VALUES('2022-06-01', '2022-06-07','9','location box');
INSERT INTO Tache(date_debut, date_fin, id_tache,nom_tache) VALUES('2022-07-01', '2022-07-07','10','achat instrument');

CREATE TABLE Sponsor(
   nom VARCHAR(50),
   description_s VARCHAR(50),
   PRIMARY KEY(nom)
);

INSERT INTO Sponsor(nom,description_s) VALUES('la confrérie de l eau qui pique','boisson ogroupe_ferte');
INSERT INTO Sponsor(nom,description_s) VALUES('Steam','promotion produit');
INSERT INTO Sponsor(nom,description_s) VALUES('o terminus','nourriture gratuite');
INSERT INTO Sponsor(nom,description_s) VALUES('asus','jeu concour');
INSERT INTO Sponsor(nom,description_s) VALUES('Fnac','livre ogroupe_fert');
INSERT INTO Sponsor(nom,description_s) VALUES('Live','guitar à gagner');
INSERT INTO Sponsor(nom,description_s) VALUES('Miami Bar','promotion produit');
INSERT INTO Sponsor(nom,description_s) VALUES('l Olympia','place ogroupe_ferte');
INSERT INTO Sponsor(nom,description_s) VALUES('OGC Nice','place ogroupe_ferte');
INSERT INTO Sponsor(nom,description_s) VALUES('McKinsy','conseil gratuit');

CREATE TABLE Administration(
   id_admin INT,
   respo_admin VARCHAR(50),
   PRIMARY KEY(id_admin, respo_admin)
);

INSERT INTO Administration(id_admin,respo_admin) VALUES('1','ABDALLAH Wejden');

CREATE TABLE Récompense(
   id_récompense VARCHAR(50),
   description_r VARCHAR(50),
   provenance VARCHAR(50),
   PRIMARY KEY(id_récompense)
);

INSERT INTO Récompense(id_récompense,description_r, provenance) VALUES('1','argent', 'club');
INSERT INTO Récompense(id_récompense,description_r, provenance) VALUES('2','argent', 'club');
INSERT INTO Récompense(id_récompense,description_r, provenance) VALUES('3','argent', 'sponsor');
INSERT INTO Récompense(id_récompense,description_r, provenance) VALUES('4','argent', 'sponsor');
INSERT INTO Récompense(id_récompense,description_r, provenance) VALUES('5','argent', 'sponsor');
INSERT INTO Récompense(id_récompense,description_r, provenance) VALUES('6','objet', 'sponsor');
INSERT INTO Récompense(id_récompense,description_r, provenance) VALUES('7','objet', 'sponsor');
INSERT INTO Récompense(id_récompense,description_r, provenance) VALUES('8','objet', 'sponsor');
INSERT INTO Récompense(id_récompense,description_r, provenance) VALUES('9','objet', 'sponsor');
INSERT INTO Récompense(id_récompense,description_r, provenance) VALUES('10','objet', 'sponsor');

CREATE TABLE Membre(
   id_membre VARCHAR(50),
   num_étudiant INT NOT NULL,
   PRIMARY KEY(id_membre),
   FOREIGN KEY(num_étudiant) REFERENCES Etudiant(num_étudiant)
);

INSERT INTO Membre(id_membre,num_étudiant) VALUES('1','1');
INSERT INTO Membre(id_membre,num_étudiant) VALUES('2','2');
INSERT INTO Membre(id_membre,num_étudiant) VALUES('3','3');
INSERT INTO Membre(id_membre,num_étudiant) VALUES('4','4');
INSERT INTO Membre(id_membre,num_étudiant) VALUES('5','5');
INSERT INTO Membre(id_membre,num_étudiant) VALUES('6','6');
INSERT INTO Membre(id_membre,num_étudiant) VALUES('7','7');
INSERT INTO Membre(id_membre,num_étudiant) VALUES('8','8');
INSERT INTO Membre(id_membre,num_étudiant) VALUES('9','9');
INSERT INTO Membre(id_membre,num_étudiant) VALUES('10','10');
INSERT INTO Membre(id_membre,num_étudiant) VALUES('11','11');
INSERT INTO Membre(id_membre,num_étudiant) VALUES('12','12');
INSERT INTO Membre(id_membre,num_étudiant) VALUES('13','13');
INSERT INTO Membre(id_membre,num_étudiant) VALUES('14','14');
INSERT INTO Membre(id_membre,num_étudiant) VALUES('15','15');
INSERT INTO Membre(id_membre,num_étudiant) VALUES('16','16');
INSERT INTO Membre(id_membre,num_étudiant) VALUES('17','17');
INSERT INTO Membre(id_membre,num_étudiant) VALUES('18','18');
INSERT INTO Membre(id_membre,num_étudiant) VALUES('19','19');
INSERT INTO Membre(id_membre,num_étudiant) VALUES('20','20');
INSERT INTO Membre(id_membre,num_étudiant) VALUES('21','21');
INSERT INTO Membre(id_membre,num_étudiant) VALUES('22','2');
INSERT INTO Membre(id_membre,num_étudiant) VALUES('23','23');
INSERT INTO Membre(id_membre,num_étudiant) VALUES('24','24');
INSERT INTO Membre(id_membre,num_étudiant) VALUES('25','25');
INSERT INTO Membre(id_membre,num_étudiant) VALUES('26','26');
INSERT INTO Membre(id_membre,num_étudiant) VALUES('27','27');
INSERT INTO Membre(id_membre,num_étudiant) VALUES('28','28');
INSERT INTO Membre(id_membre,num_étudiant) VALUES('29','29');
INSERT INTO Membre(id_membre,num_étudiant) VALUES('30','30');

CREATE TABLE Président(
   id_président INT,
   date_debut DATE,
   date_fin DATE,
   id_membre VARCHAR(50) NOT NULL,
   PRIMARY KEY(id_président, date_debut, date_fin),
   FOREIGN KEY(id_membre) REFERENCES Membre(id_membre)
);

INSERT INTO Président(id_président, date_debut,date_fin,id_membre) VALUES('1','2022-01-01','2023-01-01','1');
INSERT INTO Président(id_président, date_debut,date_fin,id_membre) VALUES('2','2022-01-01','2023-01-01','2');
INSERT INTO Président(id_président, date_debut,date_fin,id_membre) VALUES('3','2022-01-01','2023-01-01','3');
INSERT INTO Président(id_président, date_debut,date_fin,id_membre) VALUES('4','2022-01-01','2023-01-01','4');
INSERT INTO Président(id_président, date_debut,date_fin,id_membre) VALUES('5','2022-01-01','2023-01-01','5');
INSERT INTO Président(id_président, date_debut,date_fin,id_membre) VALUES('6','2022-01-01','2023-01-01','6');
INSERT INTO Président(id_président, date_debut,date_fin,id_membre) VALUES('7','2022-01-01','2023-01-01','7');
INSERT INTO Président(id_président, date_debut,date_fin,id_membre) VALUES('8','2022-01-01','2023-01-01','8');
INSERT INTO Président(id_président, date_debut,date_fin,id_membre) VALUES('9','2022-01-01','2023-01-01','9');
INSERT INTO Président(id_président, date_debut,date_fin,id_membre) VALUES('10','2022-01-01','2023-01-01','10');


CREATE TABLE Club(
   Nom_C VARCHAR(50),
   date_creation DATE,
   type_C VARCHAR(50),
   description_C VARCHAR(50),
   nb_membres INT,
   nb_responsable INT,
   id_président INT NOT NULL,
   date_debut DATE NOT NULL,
   date_fin DATE NOT NULL,
   PRIMARY KEY(Nom_C),
   UNIQUE(id_président, date_debut, date_fin),
   FOREIGN KEY(id_président, date_debut, date_fin) REFERENCES Président(id_président, date_debut, date_fin)
);

INSERT INTO Club(Nom_C, date_creation, type_C, nb_membres, nb_responsable, id_président, date_debut, date_fin,description_C) VALUES('Le Direct','2022-01-01', 'BDE', '20', '2', '1', '2022-01-01','2023-01-01','Bureau des élèves');
INSERT INTO Club(Nom_C, date_creation, type_C, nb_membres, nb_responsable, id_président, date_debut, date_fin,description_C) VALUES('Le Live','2011-01-01', 'musical', '13', '2', '2', '2022-01-01','2023-01-01','organisation de concert et de groupe musical');
INSERT INTO Club(Nom_C, date_creation, type_C, nb_membres, nb_responsable, id_président, date_debut, date_fin,description_C) VALUES('Mist','2016-01-01', 'magie', '8', '2', '3', '2022-01-01','2023-01-01','apprentissage de la magie');
INSERT INTO Club(Nom_C, date_creation, type_C, nb_membres, nb_responsable, id_président, date_debut, date_fin,description_C) VALUES('Aeroefrei','2018-01-01', 'aéronautique', '15', '2', '4', '2022-01-01','2023-01-01','organisation d activité aéronautique');
INSERT INTO Club(Nom_C, date_creation, type_C, nb_membres, nb_responsable, id_président, date_debut, date_fin,description_C) VALUES('le continental','2006-02-01', 'fête', '20', '2', '5', '2022-01-01','2023-01-01','organisation de soirée');
INSERT INTO Club(Nom_C, date_creation, type_C, nb_membres, nb_responsable, id_président, date_debut, date_fin,description_C) VALUES('namastefrei','2012-02-01', 'communautaire', '5', '2', '6', '2022-01-01','2023-01-01','regroupement de la culture d asie du sud ');
INSERT INTO Club(Nom_C, date_creation, type_C, nb_membres, nb_responsable, id_président, date_debut, date_fin,description_C) VALUES('toodoum','2022-02-01', 'vidéo', '8', '2', '7', '2022-01-01','2023-01-01', 'développement de vidéo associative');
INSERT INTO Club(Nom_C, date_creation, type_C, nb_membres, nb_responsable, id_président, date_debut, date_fin,description_C) VALUES('Breizh Efrei','2022-02-01', 'communautaire', '12', '3', '8', '2022-01-01','2023-01-01', 'regroupement de la culture bretonne');
INSERT INTO Club(Nom_C, date_creation, type_C, nb_membres, nb_responsable, id_président, date_debut, date_fin,description_C) VALUES('WEI','2001-03-01', 'fête', '13', '2', '9', '2022-01-01','2023-01-01', 'organisation pour le wgroupe_ek-end d intégration');
INSERT INTO Club(Nom_C, date_creation, type_C, nb_membres, nb_responsable, id_président, date_debut, date_fin,description_C) VALUES('Millésime','2008-03-01', 'dégustation vin', '16', '2', '10', '2022-01-01','2023-01-01', 'sensibilisation à la dégustation du vin');



CREATE TABLE Responsable(
   id_responsable VARCHAR(50),
   nom_role VARCHAR(50) NOT NULL,
   date_debut DATE,
   date_fin VARCHAR(50),
   id_membre VARCHAR(50) NOT NULL,
   PRIMARY KEY(id_responsable),
   FOREIGN KEY(id_membre) REFERENCES Membre(id_membre)
);

INSERT INTO Responsable(id_responsable, nom_role, date_debut, date_fin, id_membre) VALUES('1','vice-président', '2022-01-01', '2023-01-01', '11');
INSERT INTO Responsable(id_responsable, nom_role, date_debut, date_fin, id_membre) VALUES('2','vice-président', '2022-01-01', '2023-01-01', '12');
INSERT INTO Responsable(id_responsable, nom_role, date_debut, date_fin, id_membre) VALUES('3','secrétaire', '2022-01-01', '2023-01-01', '13');
INSERT INTO Responsable(id_responsable, nom_role, date_debut, date_fin, id_membre) VALUES('4','secrétaire', '2022-01-01', '2023-01-01', '14');
INSERT INTO Responsable(id_responsable, nom_role, date_debut, date_fin, id_membre) VALUES('5','secrétaire', '2022-02-01', '2023-01-01', '15');
INSERT INTO Responsable(id_responsable, nom_role, date_debut, date_fin, id_membre) VALUES('6','trésorier', '2022-02-01', '2023-01-01', '16');
INSERT INTO Responsable(id_responsable, nom_role, date_debut, date_fin, id_membre) VALUES('7','trésorier', '2022-02-01', '2023-01-01', '17');
INSERT INTO Responsable(id_responsable, nom_role, date_debut, date_fin, id_membre) VALUES('8','trésorier', '2022-02-01', '2023-01-01', '18');
INSERT INTO Responsable(id_responsable, nom_role, date_debut, date_fin, id_membre) VALUES('9','vice-président', '2022-03-01', '2023-01-01', '19');
INSERT INTO Responsable(id_responsable, nom_role, date_debut, date_fin, id_membre) VALUES('10','vice-président', '2022-03-01', '2023-01-01', '20');
INSERT INTO Responsable(id_responsable, nom_role, date_debut, date_fin, id_membre) VALUES('11','vice-président', '2022-03-01', '2023-01-01', '21');
INSERT INTO Responsable(id_responsable, nom_role, date_debut, date_fin, id_membre) VALUES('12','vice-président', '2022-01-01', '2023-01-01', '22');
INSERT INTO Responsable(id_responsable, nom_role, date_debut, date_fin, id_membre) VALUES('13','vice-président', '2022-01-01', '2023-01-01', '23');
INSERT INTO Responsable(id_responsable, nom_role, date_debut, date_fin, id_membre) VALUES('14','secrétaire', '2022-01-01', '2023-01-01', '24');
INSERT INTO Responsable(id_responsable, nom_role, date_debut, date_fin, id_membre) VALUES('15','secrétaire', '2022-01-01', '2023-01-01', '25');
INSERT INTO Responsable(id_responsable, nom_role, date_debut, date_fin, id_membre) VALUES('16','secrétaire', '2022-02-01', '2023-01-01', '26');
INSERT INTO Responsable(id_responsable, nom_role, date_debut, date_fin, id_membre) VALUES('17','trésorier', '2022-02-01', '2023-01-01', '27');
INSERT INTO Responsable(id_responsable, nom_role, date_debut, date_fin, id_membre) VALUES('18','trésorier', '2022-02-01', '2023-01-01', '28');
INSERT INTO Responsable(id_responsable, nom_role, date_debut, date_fin, id_membre) VALUES('19','trésorier', '2022-02-01', '2023-01-01', '29');
INSERT INTO Responsable(id_responsable, nom_role, date_debut, date_fin, id_membre) VALUES('20','vice-président', '2022-03-01', '2023-01-01', '30');



CREATE TABLE Organiser(
   Nom_e VARCHAR(50),
   date_debut DATE,
   date_fin DATE,
   Nom_C VARCHAR(50),
   PRIMARY KEY(Nom_e, date_debut, date_fin, Nom_C),
   FOREIGN KEY(Nom_e, date_debut, date_fin) REFERENCES Evenement(Nom_e, date_debut, date_fin),
   FOREIGN KEY(Nom_C) REFERENCES Club(Nom_C)
);

INSERT INTO Organiser(Nom_e, date_debut, date_fin, Nom_C) VALUES('POD intégration','2021-01-01','2021-01-01','Le Direct');
INSERT INTO Organiser(Nom_e, date_debut, date_fin, Nom_C) VALUES('POD la fête de l eau qui pique','2021-02-02','2021-02-02','Le Live');
INSERT INTO Organiser(Nom_e, date_debut, date_fin, Nom_C) VALUES('POD agroupe_cueil international','2021-03-03','2021-03-03','Mist');
INSERT INTO Organiser(Nom_e, date_debut, date_fin, Nom_C) VALUES('POD parrain','2021-04-04','2021-04-04','Aeroefrei');
INSERT INTO Organiser(Nom_e, date_debut, date_fin, Nom_C) VALUES('rally culturel','2021-05-05','2021-05-05','le continental');
INSERT INTO Organiser(Nom_e, date_debut, date_fin, Nom_C) VALUES('POD Live','2021-06-06','2021-06-06','namastefrei');
INSERT INTO Organiser(Nom_e, date_debut, date_fin, Nom_C) VALUES('POD continental','2021-07-07','2021-07-07','toodoum');
INSERT INTO Organiser(Nom_e, date_debut, date_fin, Nom_C) VALUES('WEI','2021-08-08','2021-08-15','Breizh Efrei');
INSERT INTO Organiser(Nom_e, date_debut, date_fin, Nom_C) VALUES('Concert','2021-09-09','2021-09-09','WEI');
INSERT INTO Organiser(Nom_e, date_debut, date_fin, Nom_C) VALUES('Concert','2021-10-10','2021-10-10','Millésime');
INSERT INTO Organiser(Nom_e, date_debut, date_fin, Nom_C) VALUES('Concert','2022-04-18','2022-04-18','Le Live');



CREATE TABLE Rejoindre(
   Nom_C VARCHAR(50),
   id_membre VARCHAR(50),
   PRIMARY KEY(Nom_C, id_membre),
   FOREIGN KEY(Nom_C) REFERENCES Club(Nom_C),
   FOREIGN KEY(id_membre) REFERENCES Membre(id_membre)
);

INSERT INTO Rejoindre (Nom_C,id_membre) VALUES ('Le Direct','11');
INSERT INTO Rejoindre (Nom_C,id_membre) VALUES ('Le Live','12');
INSERT INTO Rejoindre (Nom_C,id_membre) VALUES ('Mist','13');
INSERT INTO Rejoindre (Nom_C,id_membre) VALUES ('namastefrei','14');
INSERT INTO Rejoindre (Nom_C,id_membre) VALUES ('Aeroefrei','15');
INSERT INTO Rejoindre (Nom_C,id_membre) VALUES ('le continental','16');
INSERT INTO Rejoindre (Nom_C,id_membre) VALUES ('toodoum','17');
INSERT INTO Rejoindre (Nom_C,id_membre) VALUES ('Breizh Efrei','18');
INSERT INTO Rejoindre (Nom_C,id_membre) VALUES ('WEI','19');
INSERT INTO Rejoindre (Nom_C,id_membre) VALUES ('Millésime','20');
INSERT INTO Rejoindre (Nom_C,id_membre) VALUES ('Millésime','11');
INSERT INTO Rejoindre (Nom_C,id_membre) VALUES ('Breizh Efrei','12');
INSERT INTO Rejoindre (Nom_C,id_membre) VALUES ('Breizh Efrei','13');
INSERT INTO Rejoindre (Nom_C,id_membre) VALUES ('Le Direct','14');
INSERT INTO Rejoindre (Nom_C,id_membre) VALUES ('Le Direct','15');
INSERT INTO Rejoindre (Nom_C,id_membre) VALUES ('Le Direct','16');
INSERT INTO Rejoindre (Nom_C,id_membre) VALUES ('Le Direct','17');
INSERT INTO Rejoindre (Nom_C,id_membre) VALUES ('Le Direct','18');
INSERT INTO Rejoindre (Nom_C,id_membre) VALUES ('Mist','19');
INSERT INTO Rejoindre (Nom_C,id_membre) VALUES ('Mist','20');


CREATE TABLE Donner(
   nom VARCHAR(50),
   montant INT,
   id_Budget VARCHAR(50) NOT NULL,
   PRIMARY KEY(nom),
   FOREIGN KEY(nom) REFERENCES Sponsor(nom),
   FOREIGN KEY(id_Budget) REFERENCES Budget(id_Budget)
);

INSERT INTO Donner (nom, montant, id_Budget) VALUES('la confrérie de l eau qui pique','100','1');
INSERT INTO Donner (nom, montant, id_Budget) VALUES('Steam','100','2');
INSERT INTO Donner (nom, montant, id_Budget) VALUES('o terminus','100','3');
INSERT INTO Donner (nom, montant, id_Budget) VALUES('asus','100','4');
INSERT INTO Donner (nom, montant, id_Budget) VALUES('Fnac','100','5');
INSERT INTO Donner (nom, montant, id_Budget) VALUES('Live','50','6');
INSERT INTO Donner (nom, montant, id_Budget) VALUES('Miami Bar','50','7');
INSERT INTO Donner (nom, montant, id_Budget) VALUES('l Olympia','50','8');
INSERT INTO Donner (nom, montant, id_Budget) VALUES('OGC Nice','50','9');
INSERT INTO Donner (nom, montant, id_Budget) VALUES('McKinsy','50','10');


CREATE TABLE Allouer(
   date_debut DATE,
   date_fin DATE,
   id_tache VARCHAR(50),
   montant INT,
   id_Budget VARCHAR(50) NOT NULL,
   PRIMARY KEY(date_debut, date_fin, id_tache),
   FOREIGN KEY(date_debut, date_fin, id_tache) REFERENCES Tache(date_debut, date_fin, id_tache),
   FOREIGN KEY(id_Budget) REFERENCES Budget(id_Budget)
);

INSERT INTO Allouer (date_debut, date_fin, id_tache, montant,id_Budget) VALUES('2022-01-01', '2022-06-01','1','250','1');
INSERT INTO Allouer (date_debut, date_fin, id_tache, montant,id_Budget) VALUES('2022-01-01', '2022-01-07','2','250','2');
INSERT INTO Allouer (date_debut, date_fin, id_tache, montant,id_Budget) VALUES('2022-01-01', '2022-06-01','3','500','3');
INSERT INTO Allouer (date_debut, date_fin, id_tache, montant,id_Budget) VALUES('2022-02-01', '2022-02-07','4','500','4');
INSERT INTO Allouer (date_debut, date_fin, id_tache, montant,id_Budget) VALUES('2022-03-01', '2022-03-07','5','750','5');
INSERT INTO Allouer (date_debut, date_fin, id_tache, montant,id_Budget) VALUES('2022-01-01', '2022-03-03','6','750','6');
INSERT INTO Allouer (date_debut, date_fin, id_tache, montant,id_Budget) VALUES('2022-04-01', '2022-04-07','7','1000','7');
INSERT INTO Allouer (date_debut, date_fin, id_tache, montant,id_Budget) VALUES('2022-05-01', '2022-05-07','8','100','8');
INSERT INTO Allouer (date_debut, date_fin, id_tache, montant,id_Budget) VALUES('2022-06-01', '2022-06-07','9','400','9');
INSERT INTO Allouer (date_debut, date_fin, id_tache, montant,id_Budget) VALUES('2022-07-01', '2022-07-07','10','400','10');



CREATE TABLE Effectuer(
   id_membre VARCHAR(50),
   date_debut DATE,
   date_fin DATE,
   id_tache VARCHAR(50),
   PRIMARY KEY(id_membre, date_debut, date_fin, id_tache),
   FOREIGN KEY(id_membre) REFERENCES Membre(id_membre),
   FOREIGN KEY(date_debut, date_fin, id_tache) REFERENCES Tache(date_debut, date_fin, id_tache)
);

INSERT INTO Effectuer (id_membre,date_debut,date_fin,id_tache) VALUES ('11','2022-01-01', '2022-06-01','1');
INSERT INTO Effectuer (id_membre,date_debut,date_fin,id_tache) VALUES ('12','2022-01-01', '2022-01-07','2');
INSERT INTO Effectuer (id_membre,date_debut,date_fin,id_tache) VALUES ('13','2022-01-01', '2022-06-01','3');
INSERT INTO Effectuer (id_membre,date_debut,date_fin,id_tache) VALUES ('14','2022-02-01', '2022-02-07','4');
INSERT INTO Effectuer (id_membre,date_debut,date_fin,id_tache) VALUES ('15','2022-03-01', '2022-03-07','5');
INSERT INTO Effectuer (id_membre,date_debut,date_fin,id_tache) VALUES ('16','2022-01-01', '2022-03-03','6');
INSERT INTO Effectuer (id_membre,date_debut,date_fin,id_tache) VALUES ('17','2022-04-01', '2022-04-07','7');
INSERT INTO Effectuer (id_membre,date_debut,date_fin,id_tache) VALUES ('18','2022-05-01', '2022-05-07','8');
INSERT INTO Effectuer (id_membre,date_debut,date_fin,id_tache) VALUES ('19','2022-06-01', '2022-06-07','9');
INSERT INTO Effectuer (id_membre,date_debut,date_fin,id_tache) VALUES ('20','2022-07-01', '2022-07-07','10');


CREATE TABLE Participer(
   id_membre VARCHAR(50),
   id_comité INT,
   date_creation DATE,
   date_dissolution DATE,
   PRIMARY KEY(id_membre, id_comité, date_creation, date_dissolution),
   FOREIGN KEY(id_membre) REFERENCES Membre(id_membre),
   FOREIGN KEY(id_comité, date_creation, date_dissolution) REFERENCES Comite(id_comité, date_creation, date_dissolution)
);

INSERT INTO Participer (id_membre,date_creation,date_dissolution,id_comité) VALUES ('1','2021-01-01', '2021-01-01','1');
INSERT INTO Participer (id_membre,date_creation,date_dissolution,id_comité) VALUES ('2','2021-02-02', '2021-02-07','2');
INSERT INTO Participer (id_membre,date_creation,date_dissolution,id_comité) VALUES ('3','2021-01-01', '2021-01-07','3');
INSERT INTO Participer (id_membre,date_creation,date_dissolution,id_comité) VALUES ('4','2021-02-01', '2021-02-07','4');
INSERT INTO Participer (id_membre,date_creation,date_dissolution,id_comité) VALUES ('5','2021-03-01', '2021-03-07','5');
INSERT INTO Participer (id_membre,date_creation,date_dissolution,id_comité) VALUES ('6','2021-01-01', '2021-03-03','6');
INSERT INTO Participer (id_membre,date_creation,date_dissolution,id_comité) VALUES ('7','2021-04-01', '2021-04-07','7');
INSERT INTO Participer (id_membre,date_creation,date_dissolution,id_comité) VALUES ('8','2021-05-01', '2021-05-07','8');
INSERT INTO Participer (id_membre,date_creation,date_dissolution,id_comité) VALUES ('9','2021-06-01', '2021-06-07','9');
INSERT INTO Participer (id_membre,date_creation,date_dissolution,id_comité) VALUES ('10','2021-04-01', '2022-05-07','10');


CREATE TABLE Sanctionner(
   Nom_C VARCHAR(50),
   sanction INT,
   id_admin INT NOT NULL,
   respo_admin VARCHAR(50) NOT NULL,
   PRIMARY KEY(Nom_C),
   FOREIGN KEY(Nom_C) REFERENCES Club(Nom_C),
   FOREIGN KEY(id_admin, respo_admin) REFERENCES Administration(id_admin, respo_admin)
);

INSERT INTO Sanctionner (Nom_C,sanction,id_admin, respo_admin) VALUES ('Le Direct','50', '1','ABDALLAH Wejden');
INSERT INTO Sanctionner (Nom_C,sanction,id_admin, respo_admin) VALUES ('WEI','50', '1','ABDALLAH Wejden');




CREATE TABLE Rédiger(
   id_rapport VARCHAR(50),
   année INT,
   Etat VARCHAR(50),
   date_changement_etat DATE,
   id_président INT NOT NULL,
   date_debut DATE NOT NULL,
   date_fin DATE NOT NULL,
   PRIMARY KEY(id_rapport, année),
   FOREIGN KEY(id_rapport, année) REFERENCES Rapport(id_rapport, année),
   FOREIGN KEY(id_président, date_debut, date_fin) REFERENCES Président(id_président, date_debut, date_fin)
);

INSERT INTO Rédiger(id_rapport,année,Etat, date_changement_etat,id_président, date_debut, date_fin) VALUES('2','2020','en cours de création', '2022-06-02','1','2022-01-01','2023-01-01');
INSERT INTO Rédiger(id_rapport,année,Etat, date_changement_etat,id_président, date_debut, date_fin) VALUES('3','2021','en cours de création', '2022-07-05','2','2022-01-01','2023-01-01');
INSERT INTO Rédiger(id_rapport,année,Etat, date_changement_etat,id_président, date_debut, date_fin) VALUES('4','2020','en cours de création', '2022-07-28','3','2022-01-01','2023-01-01');
INSERT INTO Rédiger(id_rapport,année,Etat, date_changement_etat,id_président, date_debut, date_fin) VALUES('5','2022','en cours de création', '2022-08-05','4','2022-01-01','2023-01-01');
INSERT INTO Rédiger(id_rapport,année,Etat, date_changement_etat,id_président, date_debut, date_fin) VALUES('6','2022','en cours de création', '2022-10-19','5','2022-01-01','2023-01-01');
INSERT INTO Rédiger(id_rapport,année,Etat, date_changement_etat,id_président, date_debut, date_fin) VALUES('7','2022','fini', '2022-08-17','6','2022-01-01','2023-01-01');
INSERT INTO Rédiger(id_rapport,année,Etat, date_changement_etat,id_président, date_debut, date_fin) VALUES('8','2021','fini', '2022-10-19','7','2022-01-01','2023-01-01');
INSERT INTO Rédiger(id_rapport,année,Etat, date_changement_etat,id_président, date_debut, date_fin) VALUES('9','2022','fini', '2022-11-11','8','2022-01-01','2023-01-01');
INSERT INTO Rédiger(id_rapport,année,Etat, date_changement_etat,id_président, date_debut, date_fin) VALUES('10','2022','fini', '2022-11-21','9','2022-01-01','2023-01-01');


CREATE TABLE Générer(
   Nom_C VARCHAR(50),
   id_rapport VARCHAR(50),
   année INT,
   PRIMARY KEY(Nom_C, id_rapport, année),
   FOREIGN KEY(Nom_C) REFERENCES Club(Nom_C),
   FOREIGN KEY(id_rapport, année) REFERENCES Rapport(id_rapport, année)
);

INSERT INTO Générer(Nom_C,id_rapport,année) VALUES('Millésime','1','2022');
INSERT INTO Générer(Nom_C,id_rapport,année) VALUES('Le Direct','2','2020');
INSERT INTO Générer(Nom_C,id_rapport,année) VALUES('Le Live','3','2021');
INSERT INTO Générer(Nom_C,id_rapport,année) VALUES('Mist','4','2020');
INSERT INTO Générer(Nom_C,id_rapport,année) VALUES('Aeroefrei','5','2022');
INSERT INTO Générer(Nom_C,id_rapport,année) VALUES('le continental','6','2022');
INSERT INTO Générer(Nom_C,id_rapport,année) VALUES('namastefrei','7','2022');
INSERT INTO Générer(Nom_C,id_rapport,année) VALUES('toodoum','8','2021');
INSERT INTO Générer(Nom_C,id_rapport,année) VALUES('Breizh Efrei','9','2022');
INSERT INTO Générer(Nom_C,id_rapport,année) VALUES('WEI','10','2022');


CREATE TABLE Recevoir(
   Nom_C VARCHAR(50),
   id_récompense VARCHAR(50),
   PRIMARY KEY(Nom_C, id_récompense),
   FOREIGN KEY(Nom_C) REFERENCES Club(Nom_C),
   FOREIGN KEY(id_récompense) REFERENCES Récompense(id_récompense)
);

INSERT INTO Recevoir(Nom_C,id_récompense) VALUES ('Millésime','1');
INSERT INTO Recevoir(Nom_C,id_récompense) VALUES ('Le Direct','2');
INSERT INTO Recevoir(Nom_C,id_récompense) VALUES ('Le Live','3');
INSERT INTO Recevoir(Nom_C,id_récompense) VALUES ('Mist','4');
INSERT INTO Recevoir(Nom_C,id_récompense) VALUES ('Aeroefrei','5');
INSERT INTO Recevoir(Nom_C,id_récompense) VALUES ('le continental','6');
INSERT INTO Recevoir(Nom_C,id_récompense) VALUES ('namastefrei','7');
INSERT INTO Recevoir(Nom_C,id_récompense) VALUES ('toodoum','8');
INSERT INTO Recevoir(Nom_C,id_récompense) VALUES ('Breizh Efrei','9');
INSERT INTO Recevoir(Nom_C,id_récompense) VALUES ('WEI','10');


CREATE TABLE Lire(
   id_rapport VARCHAR(50),
   année INT,
   id_responsable VARCHAR(50),
   Lu VARCHAR(50),
   PRIMARY KEY(id_rapport, année, id_responsable),
   FOREIGN KEY(id_rapport, année) REFERENCES Rapport(id_rapport, année),
   FOREIGN KEY(id_responsable) REFERENCES Responsable(id_responsable)
);

INSERT INTO Lire(id_rapport, année, id_responsable,lu) VALUES('1','2022','1','false');
INSERT INTO Lire(id_rapport, année, id_responsable,lu) VALUES('2','2020','2','en cours');
INSERT INTO Lire(id_rapport, année, id_responsable,lu) VALUES('3','2021','3','en cours');
INSERT INTO Lire(id_rapport, année, id_responsable,lu) VALUES('4','2020','4','en cours');
INSERT INTO Lire(id_rapport, année, id_responsable,lu) VALUES('5','2022','5','en cours');
INSERT INTO Lire(id_rapport, année, id_responsable,lu) VALUES('6','2022','6','en cours');
INSERT INTO Lire(id_rapport, année, id_responsable,lu) VALUES('7','2022','7','true');
INSERT INTO Lire(id_rapport, année, id_responsable,lu) VALUES('8','2021','8','true');
INSERT INTO Lire(id_rapport, année, id_responsable,lu) VALUES('9','2022','9','true');
INSERT INTO Lire(id_rapport, année, id_responsable,lu) VALUES('10','2022','10','true');


CREATE TABLE Signer(
   id_rapport VARCHAR(50),
   année INT,
   id_responsable VARCHAR(50),
   Etat VARCHAR(50),
   PRIMARY KEY(id_rapport, année, id_responsable),
   FOREIGN KEY(id_rapport, année) REFERENCES Rapport(id_rapport, année),
   FOREIGN KEY(id_responsable) REFERENCES Responsable(id_responsable)
);

INSERT INTO Signer(id_rapport, année, id_responsable,Etat) VALUES('1','2022','1','absent');
INSERT INTO Signer(id_rapport, année, id_responsable,Etat) VALUES('2','2020','2','en attente');
INSERT INTO Signer(id_rapport, année, id_responsable,Etat) VALUES('3','2021','3','en attente');
INSERT INTO Signer(id_rapport, année, id_responsable,Etat) VALUES('4','2020','4','en attente');
INSERT INTO Signer(id_rapport, année, id_responsable,Etat) VALUES('5','2022','5','en attente');
INSERT INTO Signer(id_rapport, année, id_responsable,Etat) VALUES('6','2022','6','en attente');
INSERT INTO Signer(id_rapport, année, id_responsable,Etat) VALUES('7','2022','7','signé');
INSERT INTO Signer(id_rapport, année, id_responsable,Etat) VALUES('8','2021','8','signé');
INSERT INTO Signer(id_rapport, année, id_responsable,Etat) VALUES('9','2022','9','signé');
INSERT INTO Signer(id_rapport, année, id_responsable,Etat) VALUES('10','2022','10','soumis');
INSERT INTO Signer(id_rapport, année, id_responsable,Etat) VALUES('1','2022','11','absent');
INSERT INTO Signer(id_rapport, année, id_responsable,Etat) VALUES('2','2020','12','en attente');
INSERT INTO Signer(id_rapport, année, id_responsable,Etat) VALUES('3','2021','13','en attente');
INSERT INTO Signer(id_rapport, année, id_responsable,Etat) VALUES('4','2020','14','en attente');
INSERT INTO Signer(id_rapport, année, id_responsable,Etat) VALUES('5','2022','15','en attente');
INSERT INTO Signer(id_rapport, année, id_responsable,Etat) VALUES('6','2022','16','en attente');
INSERT INTO Signer(id_rapport, année, id_responsable,Etat) VALUES('7','2022','17','signé');
INSERT INTO Signer(id_rapport, année, id_responsable,Etat) VALUES('8','2021','18','signé');
INSERT INTO Signer(id_rapport, année, id_responsable,Etat) VALUES('9','2022','19','signé');
INSERT INTO Signer(id_rapport, année, id_responsable,Etat) VALUES('10','2022','20','soumis');

#Requêtes
#Question 1
-- select groupe_a.Nom_C, groupe_a.type_C, groupe_a.description_C, groupe_d.nom as Président, groupe_d.classe, groupe_d.niveau, groupe_d.num_étudiant 
-- #Permet de sélectionner les informations que nous avons besoin pour répondre aux questions
-- from club_efrei.club groupe_a # informations provenant de Club
-- inner join club_efrei.Président groupe_b on groupe_a.id_président=groupe_b.id_président # On recherche les informations relatives aux présidents
-- inner join club_efrei.Membre groupe_c on groupe_b.id_membre=groupe_c.id_membre
-- inner join club_efrei.Etudiant groupe_d on groupe_c.num_étudiant=groupe_d.num_étudiant
-- order by Nom_C asc; # Permet d'organiser le tableau en fonction des noms des clubs

#Question 2
-- SELECT groupe_a.Nom_C, groupe_b.Nom_e, groupe_b.date_debut, groupe_c.nb_personne as nb_responsable,
-- groupe_f.Nom, groupe_g.montant_alloue, groupe_g.montant_dépense
-- FROM club_efrei.organiser groupe_a
-- inner join club_efrei.Evenement groupe_b on groupe_a.Nom_e=groupe_b.Nom_e
-- inner join club_efrei.Comite groupe_c on groupe_b.Nom_e=groupe_c.Nom_e
-- inner join club_efrei.Participer groupe_d on groupe_c.id_comité=groupe_d.id_comité
-- inner join club_efrei.Membre groupe_e on groupe_d.id_membre=groupe_e.id_membre
-- inner join club_efrei.Etudiant groupe_f on groupe_e.num_étudiant=groupe_f.num_étudiant
-- inner join club_efrei.Budget groupe_g on groupe_c.id_comité=groupe_g.id_comité
-- where # permet les conditions
-- substr(groupe_b.date_debut, 1, 4)=2021; 
#Ici condition pour que les évènements se soit déroulés l'année dernière, (1,4) permet de sélectionner les 4 chigroupe_fres à identifier ici 2021

#Question 3
-- select groupe_a.Nom_C, groupe_a.id_rapport, groupe_b.état as état, groupe_a.année
-- from club_efrei.Générer groupe_a
-- inner join club_efrei.Rapport groupe_b on groupe_a.id_rapport=groupe_b.id_rapport
-- order by groupe_b.id_rapport asc

#Question 4
-- select groupe_a.Nom_C, groupe_a.id_rapport, groupe_a.année, groupe_b.état as etat_rapport, groupe_c.Etat as etat_rediger,
-- groupe_d.Lu as etat_lu, groupe_e.Etat as etat_signer, groupe_f.nom_role, groupe_h.Nom
-- from club_efrei.Générer groupe_a
-- inner join club_efrei.Rapport groupe_b on groupe_a.id_rapport=groupe_b.id_rapport
-- inner join club_efrei.Rédiger groupe_c on groupe_b.id_rapport=groupe_c.id_rapport
-- inner join club_efrei.Lire groupe_d on groupe_b.id_rapport=groupe_d.id_rapport
-- inner join club_efrei.Signer groupe_e on groupe_b.id_rapport=groupe_e.id_rapport
-- inner join club_efrei.Responsable groupe_f on groupe_e.id_responsable=groupe_f.id_responsable
-- inner join club_efrei.Membre groupe_g on groupe_f.id_membre=groupe_g.id_membre
-- inner join club_efrei.Etudiant groupe_h on groupe_g.num_étudiant=groupe_h.num_étudiant
-- where
-- état='en attente' 
-- order by groupe_a.Nom_C;

#Question 5 
-- DROP TABLE IF EXISTS plusd1club;
-- create table club_efrei.plusd1club as (    #création d'une table temporaire
-- select groupe_b.id_membre, groupe_a.num_étudiant, groupe_c.Nom_C, count(groupe_c.Nom_C)
-- from club_efrei.Etudiant groupe_a
-- inner join club_efrei.Membre groupe_b on groupe_a.num_étudiant=groupe_b.num_étudiant
-- inner join club_efrei.Rejoindre groupe_c on groupe_b.id_membre=groupe_c.id_membre
-- group by groupe_a.num_étudiant
-- having count(groupe_c.Nom_C)>1); #condition pour les étudiants présent dans plusieurs club

-- select groupe_a.Nom_C, groupe_b.nom_role,
-- case
-- when id_président is not null then 'Président' 
-- when groupe_b.nom_role is null then 'membre'
-- else
-- nom_role 
-- end as rôle,
-- groupe_c.id_président
-- from club_efrei.plusd1club groupe_a
-- left join club_efrei.Responsable groupe_b on groupe_a.id_membre=groupe_b.id_membre
-- left join club_efrei.Président groupe_c on groupe_a.id_membre=groupe_c.id_membre

#Question 6
-- select group_a.nom_tache, groupe_b.montant, groupe_c.montant_alloue, groupe_c.montant_dépense, groupe_g.nom
-- from club_efrei.Tache group_a
-- inner join club_efrei.Allouer groupe_b on group_a.id_tache=groupe_b.id_tache
-- inner join club_efrei.Budget groupe_c on groupe_b.id_Budget=groupe_c.id_Budget
-- inner join  club_efrei.Effectuer groupe_d on group_a.id_tache=groupe_d.id_tache
-- inner join club_efrei.Membre groupe_e on groupe_d.id_membre=groupe_e.id_membre
-- inner join club_efrei.Etudiant groupe_g on groupe_e.num_étudiant=groupe_g.num_étudiant
-- order by groupe_c.montant_dépense desc
-- limit 10; #limite d'agroupe_fichage de 10 tâches

#Question 7 
-- DROP TABLE IF EXISTS club_efrei.evenement_commun;

-- create table club_efrei.evenement_commun as ( #création d'une table temporaire
-- select groupe_a.Nom_e, groupe_a.date_debut, count(groupe_a.Nom_e)
-- from club_efrei.Evenement groupe_a
-- inner join club_efrei.Organiser groupe_b on groupe_a.Nom_e=groupe_b.Nom_e
-- group by groupe_a.Nom_e, date_debut
-- having count(groupe_a.Nom_e)>1);

-- select groupe_a.Nom_e, groupe_a.date_debut, groupe_c.Nom_C, groupe_g.nom_role,  groupe_h.id_membre,
-- case
-- when groupe_h.id_membre is not null then 'Président'
-- when groupe_g.nom_role is not null then groupe_g.nom_role
-- when groupe_g.nom_role is null then 'membre'
-- end as role_calc
--  from club_efrei.evenement_commun groupe_a
-- inner join club_efrei.Evenement groupe_b on groupe_a.Nom_e=groupe_b.Nom_e
-- inner join club_efrei.Organiser groupe_c on groupe_b.Nom_e=groupe_c.Nom_e
-- inner join club_efrei.Rejoindre groupe_d on groupe_c.Nom_C=groupe_d.Nom_C
-- inner join club_efrei.Membre groupe_e on groupe_d.id_membre=groupe_e.id_membre
-- inner join club_efrei.Etudiant groupe_f on groupe_e.num_étudiant=groupe_f.num_étudiant
-- left join club_efrei.Responsable groupe_g on groupe_e.id_membre=groupe_g.id_membre
-- left join club_efrei.Président groupe_h on groupe_e.id_membre=groupe_h.id_membre



#Question 8
-- select group_a.Nom_C, groupe_b.description_r, groupe_b.provenance
-- from club_efrei.Recevoir group_a
-- inner join club_efrei.Récompense groupe_b on group_a.id_récompense=groupe_b.id_récompense
-- order by group_a.Nom_C;

#VUES
#Question1
-- create view top_clubs
-- AS select groupe_a.Nom_C, groupe_d.id_comité, groupe_e.montant_alloue, groupe_e.montant_dépense, groupe_f.montant
-- FROM club_efrei.Club groupe_a
-- inner join club_efrei.Organiser groupe_b on groupe_a.Nom_C = groupe_b.Nom_C
-- inner join club_efrei.Evenement groupe_c on groupe_c.Nom_e=groupe_b.Nom_e
-- inner join club_efrei.Comite groupe_d on groupe_d.Nom_e = groupe_c.Nom_e
-- inner join club_efrei.Budget groupe_e on groupe_e.id_comité = groupe_d.id_comité
-- inner join club_efrei.Donner groupe_f on groupe_f.id_Budget = groupe_e.id_Budget
-- where groupe_e.montant_dépense<groupe_e.montant_alloue and groupe_e.montant_dépense<groupe_f.Montant
-- order by groupe_e.montant_dépense asc;

#Question 2
-- DROP VIEW IF EXISTS top_présidents;
-- create view top_présidents
-- AS select groupe_a.nom, groupe_c.id_président, groupe_e.id_rapport, groupe_d.année, groupe_d.Etat, groupe_f.Nom_C
-- from club_efrei.etudiant groupe_a
-- inner join club_efrei.Membre groupe_b on groupe_a.num_étudiant = groupe_b.num_étudiant
-- inner join club_efrei.Président groupe_c on groupe_c.id_membre = groupe_b.id_membre
-- inner join club_efrei.Rédiger groupe_d on groupe_d.id_président = groupe_c.id_président
-- inner join club_efrei.Rapport groupe_e on groupe_e.id_rapport = groupe_d.id_rapport
-- inner join club_efrei.Générer groupe_f on groupe_f.id_rapport = groupe_e.id_rapport
-- where groupe_d.Etat = 'fini'
-- order by groupe_d.année asc;

#Question 3

-- DROP VIEW IF EXISTS aujourdhui;
-- create view aujourdhui
-- as select groupe_b.Nom_C, groupe_a.Nom_e, groupe_a.date_debut, groupe_a.date_fin, groupe_a.heure_début, groupe_a.heure_fin
-- from club_efrei.evenement groupe_a
-- inner join club_efrei.organiser groupe_b on groupe_b.Nom_e = groupe_a.Nom_e
-- where groupe_a.date_debut = current_date()
-- order by groupe_a.heure_début asc;

#Question 4 à faire

#Question 5
-- DROP VIEW IF EXISTS trouble_fête;
-- create view trouble_fête
-- AS select groupe_a.Nom_C, groupe_b.sanction, count(groupe_a.Nom_C) as nbr_sanctions
-- FROM club_efrei.Club groupe_a
-- inner join club_efrei.sanctionner groupe_b on groupe_a.Nom_C = groupe_a.Nom_C
-- group by groupe_a.Nom_C
-- order by nbr_sanctions asc;

#Question 7
-- DROP VIEW IF EXISTS teachers_pet;
-- create view teachers_pet
-- AS select groupe_a.Nom_C, groupe_b.id_récompense as Récompense, count(groupe_a.Nom_C) as nbr_récompenses
-- FROM club_efrei.Club groupe_a
-- inner join club_efrei.Recevoir groupe_b on groupe_a.Nom_C = groupe_a.Nom_C
-- group by groupe_a.Nom_C
-- order by nbr_récompenses asc;



















