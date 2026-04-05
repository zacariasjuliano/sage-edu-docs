### 📋 Installation


Avant de commencer, assurez-vous d'avoir installé l'un des composants suivants dans la version 7.0.0 pour accéder à l'environnement client :

- [Client de bureau Tryton](https://www.tryton.org/)
- [Client Web SAO](https://www.npmjs.com/package/tryton-sao)


#### 📦 Installation de SAGE Edu

Pour installer SAGE Edu, il suffit de télécharger le script d'installation et de l'exécuter sur votre serveur :
👉 [Télécharger le script d'installation](https://raw.githubusercontent.com/zacariasjuliano/sage-edu/refs/heads/main/scripts/sage_edu-v1.1-install.sh)

Ensuite, rendez le script exécutable et exécutez-le :

```bash
chmod +x sage_edu-install.sh
./sage_edu-install.sh
```

##### 🔧 Installation via pip

Il est également possible d'installer SAGE Edu avec pip.

Pour cela, vous aurez besoin :

* PostgreSQL est installé et configuré.

(Création d'utilisateurs et gestion des permissions incluses.)

* Créer la base de données.

* Installer les modules via pip.

```bash
pip install akademy-party
pip install akademy-company
pip install akademy-classe
pip install akademy-matriculation
pip install akademy-matriculation-confirmation
pip install akademy-dashboard
pip install akademy-classe-evaluation
```

* Créer le fichier de configuration Tryton (trytond.conf)
```bash
[base de données]
uri = postgresql://utilisateur:motdepasse@localhost:5432/banques_de_données
```
