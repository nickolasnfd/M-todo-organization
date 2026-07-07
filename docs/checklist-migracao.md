# Checklist de Migração para a Estrutura PARA

Guia passo a passo para migrar os arquivos existentes (computador local e Google Drive) para a nova estrutura descrita em [`docs/estrutura-pastas.md`](./estrutura-pastas.md), sem perder dados nem travar no meio do processo.

## Fase 0 — Preparação

- [ ] Fazer backup completo de todos os arquivos antes de mexer em qualquer coisa (computador local e Google Drive).
- [ ] Confirmar que o backup está íntegro e acessível (não só que o processo rodou, mas que dá para abrir arquivos de teste).
- [ ] Estimar o tempo necessário para a migração completa (bloquear tempo na agenda; migrações costumam demorar mais do que parece).
- [ ] Instalar uma ferramenta para achar arquivos duplicados antes de começar a mover coisas (ex: [dupeGuru](https://dupeguru.voltaicideas.net/)).
- [ ] Rodar a ferramenta de duplicados em uma varredura inicial só para ter noção do tamanho do problema (sem apagar nada ainda).

## Fase 1 — Triagem inicial

- [ ] Inventariar onde os arquivos estão hoje: Desktop, Downloads, Documentos, raiz do Google Drive, e qualquer outra pasta "solta".
- [ ] Não decidir a categoria PARA de cada arquivo ainda — o objetivo desta fase é só levantar o que existe.
- [ ] Mover tudo que não tem um lugar óbvio na estrutura para `0-Inbox/`, temporariamente, antes de tomar qualquer decisão de categorização.
- [ ] Separar do inventário os arquivos claramente descartáveis (temporários, instaladores antigos, downloads já usados) para exclusão posterior.

## Fase 2 — Criar a estrutura

- [ ] Rodar `scripts/criar-estrutura.ps1` localmente para criar a árvore de pastas completa no computador Windows.
- [ ] Validar que todas as pastas foram criadas com os nomes exatos definidos em `docs/estrutura-pastas.md`.
- [ ] Rodar `scripts/criar-estrutura.ps1` novamente apontando para a pasta montada/sincronizada do Google Drive, seguindo as instruções específicas de sincronização em [`docs/google-drive.md`](./google-drive.md).
- [ ] Conferir que a estrutura no Google Drive é espelho exato da estrutura local (mesmos nomes, mesma hierarquia).

## Fase 3 — Migração em lotes

Migrar em lotes, sempre na ordem abaixo — do mais fácil/menos ambíguo para o mais delicado:

- [ ] **Lote 1 — Arquivo/Recursos**: mover primeiro tudo que é claramente material de referência ou coisa encerrada (menos ambíguo, menor risco de errar a categoria).
- [ ] **Lote 2 — Areas**: mover responsabilidades contínuas (trabalho, estudos, pessoal, mídia/criativo) para as subpastas corretas de `2-Areas/`.
- [ ] **Lote 3 — Projetos ativos**: migrar por último, com calma, um projeto de cada vez, para minimizar o risco de atrapalhar um trabalho em andamento.
- [ ] Ao final de cada lote, revisar rapidamente se algo ficou na pasta errada antes de seguir para o próximo lote.

## Tratamento de duplicados

- [ ] Regra geral: manter a versão mais recente ou de maior resolução/qualidade.
- [ ] Duplicatas antigas não vão direto para o lixo — mover para uma subpasta temporária `_Duplicados-Revisar` dentro da pasta onde foram encontradas.
- [ ] Só excluir definitivamente o conteúdo de `_Duplicados-Revisar` depois de confirmar que a versão mantida está correta e acessível.

## Arquivos sem categoria clara

- [ ] Arquivos que não se encaixam claramente em nenhuma pasta ficam em `0-Inbox/`.
- [ ] Revisar o conteúdo de `0-Inbox/` semanalmente.
- [ ] Prazo máximo de permanência de qualquer arquivo em `0-Inbox/`: 1 semana. Depois disso, decidir a categoria mesmo que a decisão não seja perfeita.

## Cadência de manutenção contínua

Para não deixar a estrutura bagunçar de novo depois da migração:

- [ ] **Semanal**: esvaziar `0-Inbox/` e limpar Desktop/Downloads.
- [ ] **Mensal**: revisar os projetos ativos em `1-Projetos/` — algum já deveria estar em `4-Arquivo/01-Projetos-Concluidos/`?
- [ ] **Trimestral**: revisar `2-Areas/` — alguma área encerrou ou perdeu relevância? Mover o que for necessário para `4-Arquivo/02-Areas-Inativas/`.
- [ ] **Anual**: revisão geral de toda a estrutura + limpeza de `4-Arquivo/` — algo já pode ser deletado de vez?

## Checklist resumido final

- [ ] Backup completo feito e validado.
- [ ] Ferramenta de duplicados instalada e testada.
- [ ] Inventário de arquivos existentes concluído.
- [ ] Tudo sem lugar óbvio movido para `0-Inbox/`.
- [ ] Estrutura de pastas criada localmente via `scripts/criar-estrutura.ps1`.
- [ ] Estrutura de pastas criada no Google Drive (mesmo nome, mesma hierarquia).
- [ ] Lote 1 (Arquivo/Recursos) migrado.
- [ ] Lote 2 (Areas) migrado.
- [ ] Lote 3 (Projetos ativos) migrado.
- [ ] Duplicados tratados e `_Duplicados-Revisar` limpa.
- [ ] `0-Inbox/` vazia ou com prazo de revisão definido para os itens restantes.
- [ ] Cadência de manutenção (semanal/mensal/trimestral/anual) combinada e anotada.
