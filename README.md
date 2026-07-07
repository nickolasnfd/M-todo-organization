# M-todo-organization

Sistema pessoal de organização de arquivos **híbrido**: método PARA no computador Windows (onde acontece o trabalho ativo) e método Johnny Decimal no Google Drive (que funciona como acervo/biblioteca).

## Sumário

- [Metodologia](docs/metodologia.md) — o que é o PARA, as regras de decisão adotadas aqui e o modelo híbrido PARA + Johnny Decimal
- [Estrutura de pastas](docs/estrutura-pastas.md) — a árvore completa de diretórios do computador local
- [Checklist de migração](docs/checklist-migracao.md) — passo a passo para migrar os arquivos atuais
- [Google Drive](docs/google-drive.md) — estrutura Johnny Decimal do acervo na nuvem e como criá-la
- [Script de criação da estrutura local](scripts/criar-estrutura.ps1) — cria as pastas PARA automaticamente no Windows
- [Script de criação da estrutura no Drive](scripts/criar-estrutura-drive.ps1) — cria a estrutura do Acervo no Drive

## Início rápido

1. Rode `scripts/criar-estrutura.ps1` no computador para criar a estrutura PARA local.
2. Rode `scripts/criar-estrutura-drive.ps1` apontando para a unidade do Google Drive para criar a estrutura do Acervo (Johnny Decimal).
3. Siga o [`docs/checklist-migracao.md`](docs/checklist-migracao.md) para migrar os arquivos que você já tem.
4. Leia [`docs/metodologia.md`](docs/metodologia.md) para entender as regras de decisão dos dois ambientes.

## Nota

Cada ambiente usa o método certo para o seu papel: o computador é a **bancada de trabalho** (PARA, otimizado para ação), e o Google Drive é a **estante** (Johnny Decimal, otimizado para acervo estável). A regra-ponte entre os dois: quando um projeto termina no PC, os entregáveis finais que merecem guarda de longo prazo sobem para a categoria certa do Acervo no Drive — o `4-Arquivo` local é estação intermediária de curto prazo, não destino final.
