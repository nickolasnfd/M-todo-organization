# M-todo-organization

Sistema pessoal de organização de arquivos baseado no método PARA, espelhado entre o computador Windows e o Google Drive.

## Sumário

- [Metodologia](docs/metodologia.md) — o que é o PARA e as regras de decisão adotadas aqui
- [Estrutura de pastas](docs/estrutura-pastas.md) — a árvore completa de diretórios
- [Checklist de migração](docs/checklist-migracao.md) — passo a passo para migrar os arquivos atuais
- [Google Drive](docs/google-drive.md) — como replicar a estrutura na nuvem
- [Script de criação da estrutura](scripts/criar-estrutura.ps1) — cria as pastas automaticamente no Windows

## Início rápido

1. Rode `scripts/criar-estrutura.ps1` localmente para criar a estrutura de pastas no seu computador.
2. Siga o [`docs/checklist-migracao.md`](docs/checklist-migracao.md) para migrar os arquivos que você já tem para a nova estrutura.
3. Replique a estrutura no Google Drive seguindo [`docs/google-drive.md`](docs/google-drive.md).

## Nota

A estrutura é intencionalmente idêntica no computador local e no Google Drive: mesmas pastas, mesmos nomes, mesma numeração. Isso também torna o sistema portátil para qualquer ambiente futuro (outro provedor de nuvem, notebook novo, etc.) — basta reaplicar a mesma árvore.
