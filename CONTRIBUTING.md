# Contribuindo para o PEVO

O **PEVO** é a extensão offline do ecossistema **Educaboraí**. Este documento orienta a colaboração técnica e pedagógica específica para a versão de Terminal.

## Formas de Colaboração

### Curadoria de Conteúdo Offline
Diferente da versão web, o PEVO exige que o conteúdo seja estruturado para exibição em console (ASCII/UTF-8).
* **Transposição de Matérias:** Conversão de matérias escolares para o formato de dados do PEVO.
* **Lógica de Respostas:** Definição de palavras-chave rigorosas para o sistema "anti-chute".

### Engenharia de Software (Zig)
Para contribuições no código-fonte:
* **Otimização de Performance:** Melhorias no uso de memória e tempo de execução.
* **Modularização:** Criação de novos módulos de disciplinas (`--port`, `--math`, etc.).
* **Portabilidade:** Garantir a compatibilidade total com o Prompt de Comando e PowerShell do Windows.

## Diretrizes Técnicas

### Padrão de Código
* O código deve seguir as convenções da linguagem **Zig**.
* É proibido o uso de dependências externas pesadas; priorize a biblioteca padrão (`std`).

### Qualidade Pedagógica
As perguntas devem ser diretas e processuais. O objetivo é que o aluno processe a informação do caderno e a sintetize em uma resposta curta e precisa no terminal.

## Procedimento para Envio
1. As sugestões de melhorias devem ser discutidas via Issues antes da implementação.
2. Descrições de commits devem ser formais e indicar a área afetada (ex: `feat(math): adicionar modulo de frações`).

**Licença:** Ao contribuir, você concorda que seu trabalho será licenciado sob a Licença MIT.
