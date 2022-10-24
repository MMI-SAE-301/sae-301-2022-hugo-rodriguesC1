--
-- code pour la création des tables
--

CREATE TABLE Matériaux(
   materiaux_id uuid,
   materiaux_libelle VARCHAR(50),
   PRIMARY KEY(materiaux_id)
);

CREATE TABLE Montre(
   montre_id uuid,
   bracelet VARCHAR(50),
   ecran VARCHAR(50),
   boitier VARCHAR(50),
   montre_commandee boolean,
   user_id uuid,
   materiaux_boitier uuid,
   materiaux_bracelet uuid,
   PRIMARY KEY(montre_id),
   FOREIGN KEY(materiaux_boitier) REFERENCES Matériaux(materiaux_id),
   FOREIGN KEY(materiaux_bracelet) REFERENCES Matériaux(materiaux_id),
   FOREIGN KEY (user_id) REFERENCES auth.users(id)
);

--
-- code pour la création des vues
--

CREATE VIEW MontreMat
AS
SELECT montre_id,
       ecran,
       bracelet,
       boitier,
       montre_commandee,
       materiaux_boitier.materiaux_libelle as materiaux_boitier_libelle,
       materiaux_bracelet.materiaux_libelle as materiaux_bracelet_libelle
FROM Montre,
     matériaux as materiaux_boitier,
     matériaux as materiaux_bracelet
where materiaux_bracelet.materiaux_id = montre.materiaux_bracelet
and materiaux_boitier.materiaux_id = montre.materiaux_boitier

CREATE VIEW allCuir
AS
SELECT montre_id,
       ecran,
       bracelet,
       boitier,
       montre_commandee,
       materiaux_boitier,
       materiaux_bracelet
FROM montre  
where materiaux_bracelet = '865ab6bf-3b9f-4e41-a8af-111aff29af68'
or materiaux_boitier = '865ab6bf-3b9f-4e41-a8af-111aff29af68'

CREATE VIEW allCaoutchouc
AS
SELECT montre_id,
       ecran,
       bracelet,
       boitier,
       montre_commandee,
       materiaux_boitier,
       materiaux_bracelet
FROM montre  
where materiaux_bracelet = '3025e9b9-004c-43fe-b571-b47d0dded564'
or materiaux_boitier = '3025e9b9-004c-43fe-b571-b47d0dded564'

CREATE VIEW allAcier
AS
SELECT montre_id,
       ecran,
       bracelet,
       boitier,
       montre_commandee,
       materiaux_boitier,
       materiaux_bracelet
FROM montre  
where materiaux_bracelet = '37fda8a4-1c64-406c-9fb4-f6f2ad0382fa'
or materiaux_boitier = '37fda8a4-1c64-406c-9fb4-f6f2ad0382fa'

--
-- code pour la création des policies
--

CREATE POLICY "insert seulement sur ses propres chaussures"
ON public.montre
FOR INSERT USING (
  auth.uid() = user_id
);

CREATE POLICY "update seulement sur ses propres chaussures"
ON public.montre
FOR UPDATE USING (
  auth.uid() = user_id
);

CREATE POLICY "Modifier seulement si la montre n'est pas commandée"
ON public.montre
FOR UPDATE USING (
  montre_commandee = false
);

CREATE POLICY "Select pour ses propres montres"
ON public.montre
FOR SELECT USING (
  auth.uid() = user_id
);

