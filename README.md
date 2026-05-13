# Projeto Educaboraí: Versão Offline

![Status](https://img.shields.io/badge/Status-Em%20Desenvolvimento-yellow?style=flat-square) ![Licença](https://img.shields.io/badge/Licença-MIT-blue?style=flat-square) ![Zig](https://img.shields.io/badge/Linguagem-Zig-purple?style=flat-square)

O **PEVO** é o ecossistema de estudo offline do **Projeto Educaboraí**, desenvolvido especificamente para o Terminal do Windows. Diferente da plataforma web, o PEVO é um software de sistemas de alto desempenho, focado em portabilidade e uso sem necessidade de conexão com a internet.

## Proposta Pedagógica

O software utiliza o método de **Transposição de Cadernos**, onde conteúdos reais das escolas de Itaboraí são convertidos em desafios interativos.
- **Sistema Antichute:** Validação rigorosa de respostas via digitação (processamento cognitivo).
- **Gamificação via CLI:** Progresso estruturado por comandos de terminal.
- **Foco em Performance:** Desenvolvido em Zig para garantir execução instantânea em qualquer hardware.

---

## Comandos de Acesso

O acesso às disciplinas é realizado diretamente via argumentos no Terminal com suporte à **Ensino Fundamental** e **Ensino Médio**:

* `pevo --port`: Inicia o menu da disciplina de **Língua Portuguesa**.
* `pevo --math`: Inicia o menu da disciplina de **Matématica**.
* `pevo --sci`: Inicia o menu da disciplina de **Ciências**.
* `pevo --hist`: Inicia o menu da disciplina de **História**.
* `pevo --geo`: Inicia o menu da disciplina de **Geografia**.
* `pevo --eng`: Inicia o menu da disciplina de **Inglês**.
* `pevo --art`: Inicia o menu da disciplina de **Artes**.
* `pevo --eduf`: Inicia o menu da disciplina de **Educação Física**.
* `pevo --prod`: Inicia o menu da disciplina de **Produção Textual**.

---

## Estrutura do Repositório

* `/src`: Código-fonte em **Zig** (lógica de menus e motor de perguntas).
* `/data`: Base de dados textual contendo as matérias transpostas.
* `build.zig`: Script de automação de compilação para Windows.

---

## Instalação e Desenvolvimento

Para compilar o projeto a partir do código-fonte:

1. Instale o compilador **Zig** (versão 0.11.0 ou superior).
2. Clone este repositório.
3. Execute o comando de build:
   ```bash
   zig build -Doptimize=ReleaseSafe
