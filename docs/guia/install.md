### 📋 SAGE Edu Installation


Before starting, make sure you have one of the following components installed in version 6.8.14 to access the client environment:

- [Tryton Desktop Client](https://www.tryton.org/)
- [SAO Web Client](https://www.npmjs.com/package/tryton-sao)


#### 📦 Script Installation

To install SAGE Edu, simply download the installation script and run it on your server:

👉 [Download Installation Script](https://raw.githubusercontent.com/zacariasjuliano/sage-edu/refs/heads/main/scripts/sage_edu-install.sh)

Then, make the script executable and run:

```bash
chmod +x sage_edu-install.sh
./sage_edu-install.sh
```

#### 📦 PIP Installation

It is also possible to install SAGE Edu using pip.
To do this, you will need:

* Have PostgreSQL installed and configured

Including user creation and permissions.

* Create the database

* Install modules throw PIP, keep in mid that this installation may need an additional Tryton modules to full capability to SAGE Edu

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
uri = postgresql://user:password@localhost:5432/data_base
```
