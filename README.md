# Sistema de Gestão Académica 🏫

Este repositório contém o projeto de um banco de dados relacional para a gestão integral de uma instituição de ensino (Ensino Fundamental e Médio). O sistema abrange desde o cadastro de corpo docente e discente até ao controlo de notas, frequência e gestão financeira.

## 📌 Sobre o Projeto

O projeto foi desenvolvido para automatizar e organizar os processos académicos, garantindo que regras de negócio (como critérios de aprovação e geração de parcelas) sejam aplicadas de forma consistente. Inclui toda a documentação de requisitos, modelagem de dados e scripts SQL para implementação no **PostgreSQL**.

### 👥 Grupo:
* Eduardo Leite
* Enzo Costa
* João Ferraz
* Nichollas Mello

## 🛠️ Tecnologias Utilizadas

* **SGBD:** MySQL
* **Modelagem:** Diagrama de Entidade-Relacionamento (DER) e Modelo Lógico.
* **Documentação:** Levantamento de Requisitos e Dicionário de Dados (PDF).

## 📂 Estrutura de Arquivos

### 📄 Documentação e Modelagem
* `Levantamento_de_requisitos.pdf`: Documento com as regras de negócio e requisitos funcionais.
* `Dicionario_de_dados.pdf`: Descrição detalhada de cada tabela, campo e tipos de dados.
* `entidade_relacionamento.png`: Diagrama conceitual (DER).
* `Diagrama_logico.png`: Diagrama lógico com as chaves e relacionamentos.

### 💾 Scripts SQL
* `Creates.sql`: Criação dos tipos `ENUM` (status de matrícula, parcelas, etc.) e da estrutura das tabelas.
* `Inserts.sql`: Conjunto de dados de teste para popular o sistema.
* `Views.sql`: Consultas pré-definidas para relatórios de desempenho e situação anual dos alunos.

## 🚀 Regras de Negócio Implementadas

O sistema foi configurado para suportar as seguintes lógicas:
* **Aprovação por Nota:** Média aritmética dos 4 bimestres. Se inferior a 7.0, o aluno tem direito a recuperação (média final entre a média e a nota de recuperação deve ser ≥ 7.0).
* **Aprovação por Frequência:** É exigida uma frequência mínima de **75%**. Caso contrário, o aluno é reprovado automaticamente por falta.
* **Gestão Financeira:** Ao efetivar uma matrícula, o sistema prevê a geração automática de 12 parcelas mensais.
* **Fluxo de Histórico:** O sistema regista a situação de cada disciplina e consolida o resultado no histórico anual e do curso.

## 🔧 Como Utilizar

1.  Certifica-te de que tens o **PostgreSQL** instalado.
2.  Cria uma nova base de dados.
3.  Executa os scripts na seguinte ordem:
    1.  `Creates.sql`
    2.  `Inserts.sql`
    3.  `Views.sql`
4.  Utiliza as *views* para consultar rapidamente o estado dos alunos (ex: `SELECT * FROM vw_SituacaoAno;`).

---

