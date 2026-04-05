# 🏫 SAGE Education - Plateforme Open Source de Gestion Éducative

**Version:** 1.1.x  
**Module:** Tryton ERP  
**Developer:** Zacarias Juliano Capingala   


---


## 📘 À propos du projet

**SAGE Education** est un ***projet gratuit et open source*** destiné ***aux enseignants, établissements scolaires et gouvernements***.
Il fournit les fonctionnalités d’un : **Système de Gestion Académique (AMS), Système de Gestion Scolaire (SMS),Système d’Information Éducative (EIS)**.
Sa ***conception modulaire, évolutive et sécurisée*** permet de l’utiliser dans de nombreux contextes : **des petites écoles** et **centres de formation** jusqu’aux **grands systèmes publics nationaux.**.

SAGE Education dispose d’une communauté croissante et engagée, réunissant des experts
en ***sciences de l’éducation, pédagogie, technologies éducatives et informatique.***.
Où que vous soyez dans le monde, nous partageons la conviction que 
 l’éducation et la technologie éducative sont un droit humain fondamental et non négociable.

Nous espérons que **SAGE Education** vous inspirera et vous motivera,et nous serons ravis de vous compter parmi la communauté.


Serveur de démonstration public
Vous pouvez tester SAGE Education avec différents profils :
lien : [sage.comunidadedosaber.ao](https://sage.comunidadedosaber.ao)  


| Profil       |Utilisateur|  Mot de passe   |
|--------------|-----------|-----------------|
| Étudiant     | student   | sage_education  |
| Enseignant   | teacher   | sage_education  |
| Secrétariat  | secretary | sage_education  |
| Direction    | direction | sage_education  |
|Administrateur| admin     | sage_admin      |


---


## ⚙️ Modules SAGE Education

**🎓 AMS** - Système de Gestion Académique

**🏫 SMS** - Système de Gestion Scolaire

**🏢 EIS** - Système d’Information Éducative

### 🎯 Objectif principal

SAGE Education centralise **tous les aspects de la gestion scolaire**, notamment:
- Organisation institutionnelle
- Structure académique et programmes de cours
- Inscription et transferts des étudiants
- Gestion des classes, enseignants et présences
- Évaluations et indicateurs de performance
- Rapports, tableaux de bord et interfaces utilisateurs

### ✨ Présentation des modules

#### 🏛️ Akademy Party – Gestion de base des entités
- Extension du modèle `Party` de Tryton pour étudiants, employés, enseignants et institutions 
- Base standardisée pour les autres modules
- Cohérence et réutilisation des données

#### 🏢 Akademy Company – Gestion institutionnelle
- Gestion des institutions, des entreprises et des entités
- Enregistrement des employés et attributions des rôles
- Inscription des étudiants et gestion des relations avec les responsables / superveurs
- Rapports institutionnels

#### 🏫 Akademy Class – Gestion académique et des classes
- Niveaux académiques, domaines, cours et classes
- Emplois du temps, salles et leçons
- Assignation enseignants / étudiants
- Suivi des présences des étudiants et des enseignants
- Plans d’études, disciplines et critères d’évaluation
- Rapports académiques(classes, enseignants, étudiants, Plans d’études)

#### 📝 Akademy Matriculation – Inscriptions et candidatures
- Enregistrement des candidats
- Évaluation des candidatures selon des critères
- Transferts d'étudiants (internes et externes)
- Association des étudiants aux cours et aux disciplines
- Rapports d’inscription, rapports de transferts et rapports d'équivalence

#### ✅ Akademy Matriculation Confirmation – Confirmation d’inscription
- Assistant de confirmation des nouvelles inscriptions
- Modification des inscriptions existantes
- Processus d'inscription auditable et progressif

#### 📊 Akademy Dashboard – Interface utilisateur et tableaux de bord
- Création du menu principal (SAGE Education) 
- Tableaux de bord personnalisés selon le profil
- Notifications, métriques et tâches
- Intégration avec modules académiques et administratifs


---


## 🌍 Public cible

- Établissements scolaires
- Administrateurs système
- Contributeurs open source
- Gouvernements et ONG
- Intégrateurs de solutions éducatives


### 🌐 Page d’accueil et contact

**Site web:** [comunidadedosaber.ao](https://comunidadedosaber.ao)  
**E-mail commercial:** [comercial@comunidadedosaber.ao](mailto:comercial@comunidadedosaber.ao)


---


## 🤝 Contributions

Les contributions sont les bienvenues !
Ouvre une issue ou soumets une pull request en respectant les directives du projet.

### 💬 Support technique

En cas de problème ou pour assistance :

- 📧 **E-mail:** [suporte@comunidadedosaber.ao](mailto:suporte@comunidadedosaber.ao)
- 💬 **WhatsApp:** [+244 955 868 110](https://wa.me/244955868110)


---


## 📋 Installation


Avant de commencer, assurez-vous d’avoir l’un des composants suivants installé en version 6.8.14 afin d'accéder l'environnement client :

- [Serveur Tryton](https://www.tryton.org/)
- [Client Tryton Desktop](https://www.tryton.org/)
- [Client Web Tryton](https://www.npmjs.com/package/tryton-sao)


### 🔧 Installation via PIP

il est egalement possible d'installer SAGE Edu en utilisant PIP. 
Pour ce faire, vous aurez besoin de :

* Avoir PostgreSQL installé et configuré, y compris la création des utilisateurs
et l'attribution des permissions. 

* créer une base de données

* Installer les modules via PIP
Copier le code

```bash
pip install akademy-party
pip install akademy-company
pip install akademy-classe
pip install akademy-matriculation
pip install akademy-matriculation-confirmation
pip install akademy-dashboard
```

* Créer le fichier de configuration Tryton (trytond.conf)
```bash
[database]
uri = postgresql://utilisateur:motdepasse@localhost:5432/nom_de_la_base
```

