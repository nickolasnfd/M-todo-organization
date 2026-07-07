# Estrutura de Pastas (PARA)

Este documento descreve a árvore de pastas definitiva usada neste projeto, tanto no computador local (Windows) quanto no Google Drive. Para entender o raciocínio por trás dessas escolhas, veja [`docs/metodologia.md`](./metodologia.md).

## Árvore completa

```
PARA/
├── 0-Inbox/                              ← triagem temporária, deve ficar vazia na maior parte do tempo
│
├── 1-Projetos/                           ← flat, uma pasta por projeto ativo, sem subcategorizar por tipo
│   └── 2026-07_nome-do-projeto/
│
├── 2-Areas/                               ← responsabilidades contínuas, sem "fim" definido
│   ├── 01-Trabalho/
│   │   ├── Cargo-Atual/
│   │   ├── Clientes-Recorrentes/
│   │   └── Financas-Trabalho/
│   ├── 02-Estudos/
│   │   ├── Idiomas/
│   │   ├── Desenvolvimento-Profissional/
│   │   └── Certificacoes/
│   ├── 03-Pessoal-Administrativo/
│   │   ├── Financas-Pessoais/
│   │   ├── Saude/
│   │   ├── Documentos-Legais/
│   │   ├── Casa/
│   │   └── Impostos/
│   └── 04-Midia-Criativo/
│       ├── Fotografia/
│       ├── Projetos-Codigo-Pessoais/
│       ├── Musica/
│       └── Hobbies-Criativos/
│
├── 3-Recursos/                            ← referência, sem manutenção ativa exigida
│   ├── 01-Trabalho/
│   │   ├── Templates/
│   │   └── Referencias-da-Area/
│   ├── 02-Estudos/
│   │   ├── Cursos/
│   │   ├── E-books-Artigos/
│   │   └── Anotacoes/
│   ├── 03-Pessoal-Administrativo/
│   │   ├── Modelos-de-Documentos/
│   │   ├── Guias-Manuais/
│   │   └── Receitas/
│   └── 04-Midia-Criativo/
│       ├── Assets-Fontes-Presets/
│       ├── Referencias-Visuais/
│       └── Stock-Fotos-Videos/
│
└── 4-Arquivo/                             ← subdividido por ORIGEM (não por tipo de conteúdo)
    ├── 01-Projetos-Concluidos/
    ├── 02-Areas-Inativas/
    └── 03-Recursos-Obsoletos/
```

## Convenção de nomenclatura

- Sem acentos e sem espaços em nomes de pasta — hífen (`-`) como separador de palavras.
- Prefixo numérico de 1 dígito nas 4 categorias-mãe: `1-Projetos`, `2-Areas`, `3-Recursos`, `4-Arquivo`.
- Prefixo numérico de 2 dígitos nas subpastas de conteúdo dentro de `Areas` e `Recursos`, sempre o mesmo número para o mesmo tipo:
  - `01` = Trabalho
  - `02` = Estudos
  - `03` = Pessoal-Administrativo
  - `04` = Midia-Criativo
- Datas em formato ISO `AAAA-MM`.
- Nome de projeto: `AAAA-MM_nome-curto-do-projeto`.
- `0-Inbox` é uma pasta extra, fora do PARA, usada apenas para triagem temporária.

## Onde entra cada arquivo

| Pasta | Tipo de conteúdo | Exemplos de arquivos que entram ali |
|---|---|---|
| `1-Projetos/AAAA-MM_nome-do-projeto/` | Qualquer (misto) | Entregáveis, rascunhos e materiais de apoio de um projeto ativo com prazo/objetivo definido |
| `2-Areas/01-Trabalho/Cargo-Atual/` | Trabalho | Descrição de cargo, metas do trimestre, avaliações de desempenho |
| `2-Areas/01-Trabalho/Clientes-Recorrentes/` | Trabalho | Contratos ativos, histórico de entregas, briefings recorrentes de clientes fixos |
| `2-Areas/01-Trabalho/Financas-Trabalho/` | Trabalho | Notas fiscais emitidas, controle de recebíveis, planilha de horas |
| `2-Areas/02-Estudos/Idiomas/` | Estudos | Progresso em app de idiomas, cadernos de vocabulário, planos de estudo contínuo |
| `2-Areas/02-Estudos/Desenvolvimento-Profissional/` | Estudos | Curso em andamento, plano de carreira, anotações de mentoria |
| `2-Areas/02-Estudos/Certificacoes/` | Estudos | Certificações em preparação, cronograma de provas, simulados |
| `2-Areas/03-Pessoal-Administrativo/Financas-Pessoais/` | Pessoal | Orçamento mensal, extratos correntes, controle de investimentos |
| `2-Areas/03-Pessoal-Administrativo/Saude/` | Pessoal | Exames recentes, plano de saúde, acompanhamento médico contínuo |
| `2-Areas/03-Pessoal-Administrativo/Documentos-Legais/` | Pessoal | RG, CPF, contratos vigentes, procurações ativas |
| `2-Areas/03-Pessoal-Administrativo/Casa/` | Pessoal | Contrato de aluguel/financiamento vigente, contas de consumo, manutenção da casa |
| `2-Areas/03-Pessoal-Administrativo/Impostos/` | Pessoal | Declaração do ano corrente em andamento, comprovantes do exercício atual |
| `2-Areas/04-Midia-Criativo/Fotografia/` | Mídia/Criativo | Organização contínua de fotos pessoais (viagens recentes, eventos do ano) |
| `2-Areas/04-Midia-Criativo/Projetos-Codigo-Pessoais/` | Mídia/Criativo | Repositórios pessoais em manutenção contínua, side projects ativos |
| `2-Areas/04-Midia-Criativo/Musica/` | Mídia/Criativo | Composições em progresso, sets de DJ, prática de instrumento |
| `2-Areas/04-Midia-Criativo/Hobbies-Criativos/` | Mídia/Criativo | Desenho, escrita criativa, artesanato — prática contínua |
| `3-Recursos/01-Trabalho/Templates/` | Trabalho | Modelos de proposta, apresentação-base, planilhas reutilizáveis |
| `3-Recursos/01-Trabalho/Referencias-da-Area/` | Trabalho | Manuais internos, benchmarks de mercado, artigos de referência da profissão |
| `3-Recursos/02-Estudos/Cursos/` | Estudos | Materiais de cursos já concluídos, mantidos como referência |
| `3-Recursos/02-Estudos/E-books-Artigos/` | Estudos | E-books, PDFs de artigos, papers salvos para consulta |
| `3-Recursos/02-Estudos/Anotacoes/` | Estudos | Anotações consolidadas, certificados de cursos concluídos |
| `3-Recursos/03-Pessoal-Administrativo/Modelos-de-Documentos/` | Pessoal | Modelos de currículo, modelo de procuração, formulários genéricos |
| `3-Recursos/03-Pessoal-Administrativo/Guias-Manuais/` | Pessoal | Manuais de eletrodomésticos, guias de trâmites burocráticos |
| `3-Recursos/03-Pessoal-Administrativo/Receitas/` | Pessoal | Receitas culinárias salvas para consulta |
| `3-Recursos/04-Midia-Criativo/Assets-Fontes-Presets/` | Mídia/Criativo | Fontes, presets de edição, plugins, LUTs |
| `3-Recursos/04-Midia-Criativo/Referencias-Visuais/` | Mídia/Criativo | Moodboards, referências de composição e estilo |
| `3-Recursos/04-Midia-Criativo/Stock-Fotos-Videos/` | Mídia/Criativo | Banco de fotos/vídeos de estoque, acervo de família apenas para consulta |
| `4-Arquivo/01-Projetos-Concluidos/` | Qualquer | Pastas inteiras de `1-Projetos` já finalizadas |
| `4-Arquivo/02-Areas-Inativas/` | Qualquer | Pastas inteiras de `2-Areas` que perderam relevância (ex: emprego anterior) |
| `4-Arquivo/03-Recursos-Obsoletos/` | Qualquer | Pastas inteiras de `3-Recursos` que não servem mais como referência |

## Casos especiais

Situações ambíguas comuns e como resolvê-las:

- **Curso em andamento** → `2-Areas/02-Estudos/Desenvolvimento-Profissional/`. Enquanto o curso está sendo cursado, ele é uma responsabilidade ativa (Área), não um Projeto nem um Recurso.
- **Curso concluído, mas quer manter o certificado** → `3-Recursos/02-Estudos/Anotacoes/` (ou subpasta equivalente dentro de `Cursos/`). Deixou de ser ativo; vira referência permanente.
- **Material de curso concluído que nunca mais vai usar** → `4-Arquivo/03-Recursos-Obsoletos/`. Não tem mais valor de referência ativa, mas ainda vale guardar por segurança.
- **Fotos de família / acervo pessoal** → dois cenários possíveis:
  - Se é organização contínua (importar, selecionar, editar fotos recentes) → `2-Areas/04-Midia-Criativo/Fotografia/`.
  - Se é apenas um acervo estático para consulta ocasional → `3-Recursos/04-Midia-Criativo/Stock-Fotos-Videos/`.
- **Projeto freelance que virou cliente recorrente** → começa em `1-Projetos/AAAA-MM_nome-do-projeto/` enquanto é um trabalho pontual com prazo. No momento em que o cliente passa a gerar trabalho contínuo e sem data de término, a pasta deve migrar para `2-Areas/01-Trabalho/Clientes-Recorrentes/`.
- **Documento fiscal do ano corrente vs. anos anteriores** → declarações e comprovantes do exercício em andamento ficam em `2-Areas/03-Pessoal-Administrativo/Impostos/` (responsabilidade ativa, com prazos). Assim que o ano fiscal se encerra e a obrigação é cumprida, o material vai para `4-Arquivo/02-Areas-Inativas/` (ou pode ficar arquivado dentro da própria pasta de Impostos em uma subpasta por ano, conforme preferência).
- **Ideia ou rascunho sem destino óbvio ainda** → não force uma categoria: deixe em `0-Inbox/` até a próxima revisão semanal, quando ficará claro se é Projeto, Área ou Recurso.
