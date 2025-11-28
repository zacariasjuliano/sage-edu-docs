#!/bin/bash

echo "🏫 SAGE Education - Gestão Institucional / ERP"
echo "Versão: 1.0"
echo "Módulo: SAGE Education"  
echo "Desenvolvedor: Zacarias Juliano Capingala *(Homem Marketing)*"
echo "Data: 21/11/2025"

echo "🚀 Iniciando instalação do SAGE Edu..."

# -----------------------------
# 1. Instalar PostgreSQL
# -----------------------------
echo "📦 Instalando PostgreSQL..."
sudo apt update
sudo apt install -y postgresql postgresql-contrib

# -----------------------------
# 2. Criar utilizador e base de dados
# -----------------------------
echo "👤 Criando utilizador e base de dados..."

sudo -u postgres createuser -s sage_edu
sudo -u postgres psql -c "ALTER ROLE sage_edu WITH PASSWORD 'sage_edu';"

sudo -u postgres createdb -O sage_edu sage_edu_db

# -----------------------------
# 3. Instalar Python + Virtualenv
# -----------------------------
echo "🐍 Configurando ambiente Python..."
sudo apt install -y python3 python3-venv python3-pip

# Criar e ativar ambiente virtual
cd ~
python3 -m venv sage_education
cd ~/sage_education
source ./bin/activate

# -----------------------------
# 4. Instalar módulos do SAGE Edu
# -----------------------------
echo "📚 Instalando módulos do SAGE Edu..."
pip install --upgrade pip
pip install akademy-classe #akademy-company #akademy-party #trytond

# -----------------------------
# 5. Criar arquivo de configuração do Tryton
# -----------------------------
echo "📝 Criando arquivo trytond.conf..."

cat << EOF > trytond.conf
[database]
uri = postgresql://sage_edu:sage_edu@localhost:5432/
path = ~/sage_education

[web]
listen = 127.0.0.1:8000

EOF

# -----------------------------
# 6. Inicializar base de dados Tryton
# -----------------------------
echo "🛠 Aplicando módulos ao banco..."

trytond-admin -c trytond.conf -d sage_edu_db --all

echo "🎉 Instalação concluída!"
echo "Para iniciar o servidor, execute:"
echo "source ./bin/activate && trytond -c trytond.conf"


source ./bin/activate && trytond -c trytond.conf
