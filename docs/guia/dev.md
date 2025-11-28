## 📘 Ambiente de Desenvolvimento

Nesta secção apresentamos todos os passos necessários para configurar o ambiente de desenvolvimento do **SAGE Edu**, incluindo preparação do sistema, configuração de dependências e instalação dos módulos Tryton utilizados pelo projeto.


### 🖥️ 1. Preparação do Ambiente

Antes de iniciar, recomendamos a criação de um ambiente de desenvolvimento isolado, especialmente se precisar trabalhar com múltiplas versões do Python.
Para isso utilizaremos o [virtualenv](https://virtualenv.pypa.io/en/latest/).

* 🔧 Instalação do Virtualenv

Em distribuições Linux baseadas em Debian, instale o Python 3 e o virtualenv com:

```bash
sudo apt install python3 virtualenv
```

* 🧪 Criação do Ambiente Virtual

Crie e ative um ambiente virtual exclusivo para o SAGE Edu:

```bash
virtualenv sage_edu_env

source sage_edu_env/bin/activate
```


### 🏗️ 2. Instalação e Configuração

O SAGE Edu utiliza o Tryton como framework base e o PostgreSQl como gestor de banco dados.
Instale os pacotes necessários dentro do ambiente virtual:

#### 📦 Instação do PostgreSQL

```bash
sudo apt install postgresql postgresql-contrib
```

👤 **Criação do Utilizador**

```bash
sudo su postgres -c "createuser -s sage_edu"

sudo su postgres -c "psql -c \"ALTER ROLE sage_edu WITH PASSWORD 'sage_edu'\""
```

⚙️ **Configuração do PostgreSQL**

Alguns ficheiros precisam ser ajustados para permitir o acesso adequado.

* Editar o pg_hba.conf

Localize e altere a linha abaixo:
```bash
DE: 
    local         all            all                        peer

PARA:
    local         all            all                        md5
```

* Editar o postgresql.conf

Ative o parâmetro de escuta da rede:
```bash
listen_addresses = '*'
```
Remova o ; no início caso exista.

* Reiniciar o serviço

```bash
sudo systemctl restart postgresql
```

🗄️ **Criar a Base de Dados**

```bash
createdb -U sage_edu sage_edu_db
```


#### 📦 Instalação do Trytond

```bash
pip install psycopg2-binary

pip install pycountry

pip install trytond~=6.8.0
```


📝 **Criar o Arquivo trytond.conf**

Crie o ficheiro de configuração do servidor Tryton:

```bash
touch trytond.conf
```

Adicione o conteúdo:

```bash
[database]
uri = postgresql://sage_edu:sage_edu@localhost:5432/sage_edu_db
```

* 🔧 Inicializar a Base de Dados

```bash
trytond-admin -c trytond.conf -d sage_edu_db --all
```

🚀 **Iniciar o Servidor Tryton**

```bash
trytond -c trytond.conf
```

#### 📦 Instalação dos Módulos SAGE Edu

Após o ambiente Tryton estar configurado, instale os módulos oficiais do SAGE Edu diretamente do GitHub:

```bash
git clone https://github.com/comunidadedosaber/akademy-party
git clone https://github.com/comunidadedosaber/akademy-company
git clone https://github.com/comunidadedosaber/akademy-classe
```

💡 Nota: Após instalar novos módulos, é recomendado reiniciar o servidor Tryton e executar novamente o trytond-admin para sincronização das tabelas.