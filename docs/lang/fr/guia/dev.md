## 📘 Environnement de développement

Dans cette section, nous présentons toutes les étapes nécessaires à la configuration de l'environnement de développement **SAGE Edu**, y compris la préparation du système, la configuration des dépendances et l'installation des modules Tryton utilisés par le projet.

### 🖥️ 1. Préparation de l'environnement

Avant de commencer, nous vous recommandons de créer un environnement de développement isolé, notamment si vous devez utiliser plusieurs versions de Python.

Pour cela, nous utiliserons… [virtualenv](https://virtualenv.pypa.io/en/latest/).

* 🔧 Installation de Virtualenv

Sur les distributions Linux basées sur Debian, installez Python 3 et virtualenv avec :

```bash
sudo apt install python3 virtualenv
```

* 🧪 Création de l'environnement virtuel

Créer et activer un environnement virtuel unique pour SAGE edu:

```bash
virtualenv sage_edu_env

source sage_edu_env/bin/activate
```


### 🏗️ 2. Installation et Configuration

SAGE Edu utilise Tryton comme framework et PostgreSQl comme gestionnaire de base de données.
Installer les packages nécessaires dans l'environnement virtuel:

#### 📦 Installation de PostgreSQL 

```bash
sudo apt install postgresql postgresql-contrib
```

👤 **Créer des utilisateurs**

```bash
sudo su postgres -c "createuser -s sage_edu"

sudo su postgres -c "psql -c \"ALTER ROLE sage_edu WITH PASSWORD 'sage_edu'\""
```

⚙️ **Configuration de PostgreSQL **

Certains fichiers doivent etre ajustés pour permettre un accès correct.

* modifier pg_hba.conf

Recherchez et modifier la ligne ci-dessous:
```bash
DE: 
    local         all            all                        peer

PARA:
    local         all            all                        md5
```

* modifier postgresql.conf

Activer le paramètre d'écoute réseau:
```bash
listen_addresses = '*'
```
Supprimez le ; au début de la ligne s'il existe.

* Relancez le service

```bash
sudo systemctl restart postgresql
```

🗄️ **Créer une base de données**

```bash
createdb -U sage_edu sage_edu_db
```


#### 📦 Installation de Trytond 

```bash
pip install psycopg2-binary

pip install pycountry

pip install trytond~=7.0.0
```


📝 **Créer le fichier trytond.conf**

Créer le fichier de configuration du serveur Tryton :

```bash
touch trytond.conf
```

Ajouter du contenu :

```bash
[database]
uri = postgresql://sage_edu:sage_edu@localhost:5432/sage_edu_db
```

* 🔧 Initialiser la base de données

```bash
trytond-admin -c trytond.conf -d sage_edu_db --all
```

🚀 **Lancer le serveur de Tryton**

```bash
trytond -c trytond.conf
```

#### 📦 Installation des Modules SAGE Edu  

Une fois l'environnement Tryton configuré,installer les modules officiels SAGE Edu directement depuis GitHub:

```bash
git clone https://github.com/zacariasjuliano/akademy-party
git clone https://github.com/zacariasjuliano/akademy-company
git clone https://github.com/zacariasjuliano/akademy-classe
git clone https://github.com/zacariasjuliano/akademy-matriculation
git clone https://github.com/zacariasjuliano/akademy-matriculation_confirmation
git clone https://github.com/zacariasjuliano/akademy-dashboard
git clone https://github.com/zacariasjuliano/akademy-classe-evaluation
```

💡 Note: Après l'installation de nouveaux modules, il est recommandé de redémarrer le serveur Tryton et de relancer trytond-admin pour sychroniser les tables.