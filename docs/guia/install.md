### 📋 Installation


Before starting, make sure you have one of the following components installed in version 6.8.14 to access the client environment:

- [Tryton Desktop Client](https://www.tryton.org/)
- [SAO Web Client](https://www.npmjs.com/package/tryton-sao)


#### 📦 SAGE Edu Installation

To install SAGE Edu, simply download the installation script and run it on your server:

👉 [Download Installation Script](https://raw.githubusercontent.com/zacariasjuliano/sage-edu/refs/heads/main/scripts/sage_edu-v1.1-install.sh)

Then, make the script executable and run:

```bash
chmod +x sage_edu-v1.1-install.sh
./sage_edu-v1.1-install.sh
```

##### 🔧 PIP Installation

It is also possible to install SAGE Edu using pip.
To do this, you will need:

* Have PostgreSQL installed and configured

Including user creation and permissions.

* Create the database

* Install modules throw PIP

```bash
pip install akademy-party
pip install akademy-company
pip install akademy-classe
pip install akademy-matriculation
pip install akademy-matriculation-confirmation
pip install akademy-dashboard
```

* Create Tryton configuration file (trytond.conf)
```bash
[database]
uri = postgresql://usuario:senha@localhost:5432/banco_de_dados
```
