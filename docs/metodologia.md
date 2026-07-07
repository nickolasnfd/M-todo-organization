# Metodologia

## O que é o método PARA

PARA (Projects, Areas, Resources, Archives) é um sistema de organização de informações criado por Tiago Forte. A ideia central é organizar tudo por **grau de atuabilidade** (o que exige ação agora) em vez de por tema ou tipo de arquivo — assim, qualquer sistema (notas, arquivos, e-mails) usa a mesma estrutura de 4 categorias.

## Por que esta adaptação

O PARA original usa categorias genéricas. Aqui, dentro de **Areas** e **Recursos**, o conteúdo é subdividido em 4 tipos fixos, porque é assim que a vida da pessoa que usa este repositório se organiza no dia a dia:

- Trabalho
- Estudos
- Pessoal/Administrativo
- Mídia/Criativo

Isso evita que "Areas" e "Recursos" virem gavetas genéricas e mantém a navegação previsível: a subpasta 02 é sempre Estudos, em qualquer categoria-mãe.

## As 4 categorias

| Categoria | Definição | Pergunta-chave |
|---|---|---|
| **1-Projetos** | Tem prazo e resultado final claro, está ativo agora | Existe uma entrega definida e um prazo? |
| **2-Areas** | Responsabilidade contínua, sem "fim" definido | Isso é algo que preciso manter/cuidar indefinidamente? |
| **3-Recursos** | Material de referência, sem manutenção ativa exigida | Isso é só consulta, não exige ação contínua? |
| **4-Arquivo** | Concluído, cancelado ou parado há 60-90+ dias, sem previsão de retomada | Isso já morreu ou está hibernando sem data de volta? |

## Critério de decisão: o que vai onde

1. Tem prazo e resultado final claro, ativo agora? → **Projetos**.
2. Responsabilidade contínua, sem "fim" definido? → **Areas**.
3. Material de referência sem manutenção ativa exigida? → **Recursos**.
4. Concluído, cancelado ou parado há 60-90+ dias sem previsão de retomada? → mover a pasta INTEIRA (com nome original, sem reorganizar conteúdo interno) para **Arquivo**.
5. Desempate para item ambíguo: "se eu deletasse isso agora, sentiria falta amanhã?" — se não, é candidato a descarte, não a arquivamento.
6. Nunca criar uma pasta "geral/diversos" fora das 4 categorias — item ambíguo vai para `0-Inbox` até a revisão semanal.

## Quando mover para Arquivo

Aplica-se o item 4 do critério acima, com estes detalhes:

- **Gatilho de tempo**: 60-90 dias parado, sem atividade e sem previsão de retomada.
- **Gatilho de status**: projeto concluído ou cancelado (mesmo que recente) já pode ir direto para o Arquivo.
- **Como mover**: a pasta inteira vai junto, com o nome original — não se reorganiza o conteúdo interno no momento do arquivamento.
- **Onde cai**: o Arquivo é subdividido por origem, não por tipo de conteúdo — um projeto concluído vai para `4-Arquivo/01-Projetos-Concluidos`, uma área que deixou de ser responsabilidade vai para `4-Arquivo/02-Areas-Inativas`, um recurso que perdeu relevância vai para `4-Arquivo/03-Recursos-Obsoletos`.

A árvore completa de pastas está em [`docs/estrutura-pastas.md`](estrutura-pastas.md).

## Princípio do espelhamento

A mesma árvore, os mesmos nomes de pasta e a mesma numeração são usados em qualquer ambiente — computador Windows, Google Drive, ou qualquer ambiente futuro. Isso elimina a necessidade de "traduzir" a organização mentalmente ao trocar de dispositivo ou serviço, reduzindo a carga cognitiva de encontrar e guardar arquivos.

## Convenção de nomenclatura

- Sem acentos e sem espaços em nomes de pasta; hífen (`-`) como separador de palavras.
- Prefixo numérico de 1 dígito nas 4 categorias-mãe: `1-Projetos`, `2-Areas`, `3-Recursos`, `4-Arquivo`.
- Prefixo numérico de 2 dígitos nas subpastas de conteúdo dentro de Areas e Recursos, sempre o mesmo número para o mesmo tipo:

  | Número | Tipo de conteúdo |
  |---|---|
  | 01 | Trabalho |
  | 02 | Estudos |
  | 03 | Pessoal-Administrativo |
  | 04 | Midia-Criativo |

- Datas em formato ISO `AAAA-MM`.
- Nome de projeto: `AAAA-MM_nome-curto-do-projeto`.
- Pasta extra `0-Inbox` (fora do PARA) para triagem temporária de itens ainda não classificados.
