### 📋 Instalação


Antes de iniciar, certifique-se de ter um dos seguintes componentes instalados na versão 7.0.0, para o acesso ao ambiente cliente:

- [Tryton Desktop Client](https://www.tryton.org/)
- [SAO Web Client](https://www.npmjs.com/package/tryton-sao)


#### 📦 Instalação do SAGE Edu

Para fazer a instyalação do SAGE Edu, basta baixar o script de instalação e executá-lo no seu servidor:

👉 [Baixar Script de Instalação](https://github.com/zacariasjuliano/sage-edu-docs/tree/main/scripts/sage_edu-v1-install.sh)

Depois, torne o script executável e rode:

```bash
chmod +x sage_edu-v1-install.sh
./sage_edu-v1-install.sh
```

##### 🔧 Instalação via PIP (Manual)

Também é possível instalar o SAGE Edu manualmente utilizando o pip.
Para isso, será necessário:

* Ter o PostgreSQL instalado e configurado

Incluindo criação de usuário e permissões.

* Criar a base de dados

* Instalar os módulos via PIP

```bash
pip install akademy-party
pip install akademy-company
pip install akademy-classe
pip install akademy-matriculation
pip install akademy-matriculation-confirmation
pip install akademy-dashboard
pip install akademy-classe-evaluation
```

* Criar o arquivo de configuração do Tryton (trytond.conf)
```bash
[database]
uri = postgresql://usuario:senha@localhost:5432/banco_de_dados
```
