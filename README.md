# 🏫 SAGE Education - Gestão Institucional / ERP

**Versão:** 1.0  
**Módulo:** SAGE Education  
**Desenvolvedor:** Zacarias Juliano Capingala *(Homem Marketing)*  
**Data:** 10/12/2021

---

## 📘 Sobre o Projeto

**O SAGE Education** é um projeto ***livre e gratuito*** para ***educadores, instituições de ensino e governos***.
Ele fornece a funcionalidade de **Sistema de Gestão Académica (SGA), Sistema de Gestão Escolar (SGE) e Sistema de Informação Educacional (SIE)**.
O seu design ***modular, escalável e seguro*** permite que seja implementado em muitos cenários diferentes: desde **pequenas escolas** e **centros de formação** até **grandes sistemas nacionais de educação pública**.

O SAGE Education conta com uma comunidade crescente, comprometida e amigável que traz o melhor dos campos das ***ciências da educação, pedagogia, tecnologia educacional e ciências da computação***.
Não importa onde no mundo você vive, somos apaixonados por manter a educação e a tecnologia educacional como um direito humano inegociável.
Esperamos que você considere o **SAGE Education** motivador e inspirador, e estamos ansiosos para tê-lo como parte da equipe.


Hospedamos um servidor público de demonstração, onde você pode experimentar o SAGE Education com diferentes perfis de acesso:
https://sage.comunidadedosaber.ao


| Perfil     | Usuário    | Senha           |
|------------|------------|-----------------|
| Discente   | aluno      | sage_aluno      |
| Docente    | docente    | sage_docente    |
| Secretaria | secretaria | sage_secretaria |
| Direção    | direcao    | sage_direcao    |



---

## ⚙️ Módulos do SAGE Education

**SGA** - Sistema de Gestão Académica
**SGE** - Sistema de Gestão Escolar
**SIE** - Sistema de Informação Educacional

🎓 1. Sistema de Gestão Académica (SGA)
📘 Definição

O SGA é um sistema focado na gestão dos processos académicos de uma instituição de ensino.
Ou seja, trata especificamente de tudo o que envolve estudantes, cursos, disciplinas e avaliações.

⚙️ Funcionalidades principais

Gestão de matrículas e inscrições em disciplinas

Lançamento de notas e frequência

Controle de calendário académico

Gestão de turmas e horários

Emissão de boletins, certificados e históricos

Controle de situação académica do estudante (ativo, desistente, concluinte, etc.)

👥 Público-alvo

Universidades, institutos e escolas que precisam administrar a vida académica dos alunos de forma estruturada.

💡 Exemplo

Um SGA permite que:

O estudante se inscreva online nas disciplinas do semestre;

O docente lance notas e presenças;

A secretaria gere históricos e documentos oficiais.


🏫 2. Sistema de Gestão Escolar (SGE)
📘 Definição

O SGE é mais abrangente do que o SGA.
Além de cobrir a parte académica, também cuida da administração geral da escola, incluindo gestão pedagógica, administrativa e financeira.

⚙️ Funcionalidades principais

Tudo o que o SGA faz (vida académica do aluno)

Gestão de docentes e funcionários

Gestão de turmas, salas e recursos físicos

Controle financeiro (mensalidades, propinas, despesas)

Comunicação escola-família (mensagens, relatórios, avisos)

Gestão de biblioteca, transporte, cantina, etc.

👥 Público-alvo

Escolas básicas e secundárias, centros de formação e institutos que buscam uma visão integrada da instituição.

💡 Exemplo

Um SGE pode:

Gerar automaticamente as mensalidades de cada aluno;

Registrar faltas e ocorrências disciplinares;

Gerar relatórios financeiros e pedagógicos para a direção.


🏢 3. Sistema de Informação Educacional (SIE)
📘 Definição

O SIE é um sistema de nível estratégico ou governamental, voltado à coleta, consolidação e análise de dados educacionais de várias instituições.

Ele não administra a escola individualmente, mas serve para planejamento, monitoramento e formulação de políticas públicas no setor educacional.

⚙️ Funcionalidades principais

Coleta de dados de escolas, alunos e professores (ex: número de matrículas, evasão, infraestrutura)

Indicadores estatísticos e relatórios para governos e gestores

Integração com SGEs e SGAs locais

Monitoramento de desempenho educacional a nível nacional ou regional

Planejamento de recursos (docentes, materiais, orçamentos)

👥 Público-alvo

Ministérios da Educação, secretarias provinciais ou municipais, organismos internacionais e redes de ensino.

💡 Exemplo

Um SIE nacional pode:

Coletar dados de todas as escolas públicas do país;

Produzir relatórios sobre taxa de conclusão escolar ou aproveitamento;

Apoiar a tomada de decisão sobre políticas educacionais.


---


## 🌐 Homepage

**Website:** [sage.comunidadedosaber.ao](https://sage.comunidadedosaber.ao)  
**E-mail:** [comercial@comunidadedosaber.ao](mailto:comercial@comunidadedosaber.ao)

---

## 💬 Suporte Técnico

Caso encontre erros ou deseje obter suporte técnico, entre em contato pelos canais abaixo:

- 📧 **E-mail:** [suporte@comunidadedosaber.ao](mailto:suporte@comunidadedosaber.ao)
- 💬 **WhatsApp:** [+244 926 585 345](https://wa.me/244926585345)

---

## 🧩 Instalação

### 📋 Requisitos

Antes de iniciar, certifique-se de ter os seguintes componentes instalados:

- [Tryton Server](https://www.tryton.org/)
- [Tryton Desktop Client](https://www.tryton.org/)
- [Tryton Web Client](https://www.npmjs.com/package/tryton-sao)


Além dos módulos base:

```bash
pip install git+https://github.com/zacariasjuliano/akademy_party
pip install git+https://github.com/zacariasjuliano/akademy_company
pip install git+https://github.com/zacariasjuliano/akademy_classe
pip install git+https://github.com/zacariasjuliano/akademy_avaliation
pip install git+https://github.com/zacariasjuliano/akademy_matriculation
pip install git+https://github.com/zacariasjuliano/akademy_matriculation_confirmation
