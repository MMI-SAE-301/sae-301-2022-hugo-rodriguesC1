# code de base pour TP (et future SAE 301)

- **Nom : RODRIGUES**
- **Prénom : Hugo**
- **URL maquette Figma: https://www.figma.com/file/BcwHDJNAG05f7QuqvMD2M9/SAE301-Maquette?node-id=49%3A93**
- **URL publique du site :**
- **URL projet Supabase : https://app.supabase.com/project/xmybzgsvdkzrbiqeeect**
  - [x] Avez-vous invité abdallah.makhoul@univ-fcomte.fr dans votre 'Organisation' Supabase ?

# Auto-évaluation

## R313 | Dev Back (Abdallah Makhoul : [AC 2404](https://moodle.univ-fcomte.fr/mod/assign/view.php?id=612670) et [AC 2402](https://moodle.univ-fcomte.fr/mod/assign/view.php?id=612669))

Vous avez rendu à la racine du projet :

- [x] Le modèle conceptuel de données (nom : [MCD.png](/MCD.png) ou [MCD.pdf](/MCD.pdf) [^1])
- [x] Et compléter le fichier [bdd.sql](/bdd.sql) détaillant le code pour la création des tables, vues et policies créées
- [x] Avez-vous bien invité abdallah.makhoul@univ-fcomte.fr dans votre 'Organisation' Supabase comme développeur ?

## R312 | Intégrer ([Pierre Pracht : AC 2401](https://moodle.univ-fcomte.fr/mod/assign/view.php?id=612668))

Pour les liens :
[vers des fichiers](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-readmes#relative-links-and-image-paths-in-readme-files) ou page d'un commit sur Github.

Noté sur 40.

- [README](/README.md) bien rempli (0-2-4pts)
  - Ne cochez que ce que vous avez fait.
- Fonctionnalités "avancées" du site (0-2-4pts)
- Intégration du site (0-2-4-6pts)
- Code et Commit (0-2-4-6pts)
- Code HTML spécifiquement sémantique et accessible (0-1-2pts)

- [x] usage de Classes utilitaires (1pt)
  - [lien vers sa définition](src/index.css)
  - [lien vers son usage dans index](src/pages/index.vue#L10)
  - [lien vers son usage dans index](src/pages/index.vue#L13)
  - [lien vers son usage dans le formulaire](src/components/FormMontre.vue#L111)
  - [lien vers son usage dans le formulaire](src/components/FormMontre.vue#L115)
- [x] Composants graphiques (0-1-2pts)
  - [button](src/components/Button.vue)
  - [circles](src/components/Circles.vue)
  - [LoginButton](src/components/LoginButton.vue)
- Technique CSS (0-1-2pts)

- Mise en page CSS (0-1-2pts)
  - Quelles techniques (Grilles Flex...)
    - [Grid](src/pages/index.vue#L8)
    - [Flex](src/pages/index.vue#L29)
    - [Animation](src/components/Circles.vue#L3)
  - [ ] Mise en page fluide
- [ ] Mobile First (0-1-2pts)
  - [ ] Plusieurs tailles
    - Lesquelles...
- [x] Dark Mode (0-1-2pts)
  - [x] Simple usage de 'dark:'
    - [lien](src/App.vue#L24)
    - [lien](src/App.vue#L37)
    - [lien](src/App.vue#L40)
- "tailwin.config.js" (0-1-2pts)
  - [x] usage basique couleurs/fonts
  - [ ] Comporte des données supplémentaires (utilisées !). Eg: "content-xxx", "bg-xxx", "grid-cols-xxx"...
    - liens
  - [x] utilisation de plugins (scrollbar hide et animate tailwind)
- Composants "accessibles" (0-1-2pts)
  - [x] Textes "accessibles" (eg. 'sr-only') [lien](src/components/FormKitListColors.vue#L25)
  - [ ] Contenu accessible ET Usage de composants étudié pour accessibilité (Eg. HeadlessUI)
  - [x] Alerte si couleur manquante lors de l'enregistrement [lien](src/components/FormMontre.vue#L39)
  - [x] Message 'Modifications enregistrées' [lien](src/components/FormMontre.vue#L48)

[^1]: Supprimez les mentions inutiles.
