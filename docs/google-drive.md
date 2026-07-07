# Google Drive — Acervo em Johnny Decimal

O Google Drive **não** usa o método PARA: ele usa o método **Johnny Decimal**. O motivo é que o papel de cada ambiente é diferente — o computador é onde o trabalho ativo acontece (e para isso o PARA, descrito em [`docs/estrutura-pastas.md`](./estrutura-pastas.md), funciona melhor), enquanto o Drive é um **acervo/biblioteca de longo prazo**: documentos guardados, comprovantes, backups, fotos e PDFs que você consulta, mas não edita todo dia. O raciocínio completo por trás desse modelo híbrido está em [`docs/metodologia.md`](./metodologia.md).

## O que é Johnny Decimal

O Johnny Decimal ([johnnydecimal.com](https://johnnydecimal.com), criado por Johnny Noble) organiza tudo em **áreas** numeradas por faixas de dezenas (`10-19`, `20-29`...) e, dentro de cada área, **categorias** numeradas (`11`, `12`, `13`...). O limite é rígido e proposital: no máximo 10 áreas e no máximo 10 categorias por área. Essa restrição força simplicidade — você não pode criar pastas infinitamente, então precisa decidir onde as coisas realmente pertencem — e cada pasta ganha um código numérico único e memorizável (ex: "impostos é 21"), o que torna a navegação e a busca quase instantâneas.

## A árvore do Acervo

Esta é a árvore definitiva do Drive (fonte única de verdade — use exatamente estes nomes):

```
Acervo/
├── 00-09_Sistema/
│   ├── 01_Inbox/
│   └── 02_Modelos-Templates/
├── 10-19_Documentos-Pessoais/
│   ├── 11_Identidade-Certidoes/
│   ├── 12_Contratos/
│   ├── 13_Saude/
│   ├── 14_Casa/
│   └── 15_Veiculo/
├── 20-29_Financeiro/
│   ├── 21_Impostos/
│   ├── 22_Comprovantes-Recibos/
│   ├── 23_Bancos-Investimentos/
│   └── 24_Notas-Fiscais-Garantias/
├── 30-39_Trabalho/
│   ├── 31_Curriculo-Carreira/
│   ├── 32_Projetos-Concluidos/
│   └── 33_Referencias-Templates/
├── 40-49_Estudos/
│   ├── 41_Cursos/
│   ├── 42_E-books-Artigos/
│   ├── 43_Certificados-Diplomas/
│   └── 44_Anotacoes/
├── 50-59_Midia/
│   ├── 51_Fotos/
│   ├── 52_Videos/
│   ├── 53_Musica/
│   └── 54_Assets-Criativos/
└── 60-69_Backups/
    ├── 61_Backups-Dispositivos/
    └── 62_Exportacoes-de-Apps/
```

A nomenclatura segue a mesma convenção do resto do projeto: sem acentos, sem espaços; underscore (`_`) separa o código numérico do nome; hífen (`-`) separa palavras dentro do nome.

## O que vai em cada categoria

| Categoria | O que entra ali | Exemplos |
|---|---|---|
| `01_Inbox` | Tudo que ainda não tem lugar definido (triagem semanal) | PDF recebido por e-mail, foto avulsa, download para classificar |
| `02_Modelos-Templates` | Modelos reutilizáveis de documentos | Modelo de contrato, modelo de recibo, template de declaração |
| `11_Identidade-Certidoes` | Documentos de identificação e certidões digitalizadas | RG, CPF, passaporte, título de eleitor, certidão de nascimento/casamento |
| `12_Contratos` | Contratos assinados de qualquer natureza | Contrato de aluguel, contrato de prestação de serviço, termos assinados |
| `13_Saude` | Histórico de saúde | Exames, receitas médicas, carteira de vacinação, laudos |
| `14_Casa` | Documentos do imóvel e da vida doméstica | Escritura, contas guardadas, plantas, manuais de eletrodomésticos |
| `15_Veiculo` | Documentos do veículo | CRLV, apólice de seguro, notas de manutenção, multas pagas |
| `21_Impostos` | Tudo de imposto de anos anteriores | Declarações de IRPF entregues, recibos de entrega, DARFs pagos, informes de rendimento |
| `22_Comprovantes-Recibos` | Comprovantes de pagamento e recibos avulsos | Comprovantes de transferência, recibos de aluguel, comprovantes de matrícula |
| `23_Bancos-Investimentos` | Documentos bancários e de investimentos | Extratos anuais, informes de corretora, contratos de conta/cartão |
| `24_Notas-Fiscais-Garantias` | Notas fiscais de compras e termos de garantia | NF de eletrônicos, garantia de eletrodoméstico, cupons fiscais relevantes |
| `31_Curriculo-Carreira` | Histórico profissional | Versões do currículo, cartas de recomendação, contratos de trabalho antigos |
| `32_Projetos-Concluidos` | Entregáveis finais de projetos encerrados vindos do PARA local | Relatório final entregue, apresentação final, arquivos-fonte da versão entregue |
| `33_Referencias-Templates` | Referências e templates da área profissional | Guias da área, templates de proposta, materiais de referência de trabalho |
| `41_Cursos` | Materiais de cursos feitos ou em consulta | Apostilas, slides, exercícios resolvidos de cursos |
| `42_E-books-Artigos` | Biblioteca de leitura | E-books, artigos em PDF, papers salvos |
| `43_Certificados-Diplomas` | Comprovantes de formação | Diplomas, certificados de conclusão de curso, histórico escolar |
| `44_Anotacoes` | Anotações de estudo consolidadas | Resumos, mapas mentais exportados, cadernos digitalizados |
| `51_Fotos` | Backup de fotos, organizadas por ano/evento | `51_Fotos/2026/`, `51_Fotos/2025-Viagem-Praia/` |
| `52_Videos` | Backup de vídeos pessoais | Vídeos de família, gravações de eventos |
| `53_Musica` | Acervo musical próprio | Gravações próprias, projetos de áudio finalizados, coleção digital |
| `54_Assets-Criativos` | Assets para uso criativo | Fontes, presets, texturas, banco de imagens próprio |
| `61_Backups-Dispositivos` | Backups completos de dispositivos | Backup do celular, imagem de notebook antigo, backup antes de formatar |
| `62_Exportacoes-de-Apps` | Exportações de dados de aplicativos | Export do gerenciador de tarefas, takeout do Google, export de notas |

## Regras de uso

1. **Nunca crie pasta fora da numeração.** Se um item não tem lugar óbvio, ele vai para `01_Inbox` e é classificado na revisão semanal — máximo de 1 semana lá.
2. **Dentro de uma categoria, subpastas livres são permitidas** (ex: `51_Fotos/2026/`, `21_Impostos/2025/`). A numeração Johnny Decimal vai só até o nível de categoria; abaixo disso, organize como fizer sentido.
3. **Convenção opcional avançada:** prefixe arquivos importantes com o código da categoria (ex: `21.01_declaracao-irpf-2025.pdf`). Isso torna a busca instantânea — digitar `21.` no buscador do Drive traz tudo de impostos.
4. **Ponte com o PARA local:** quando um projeto termina no computador, os entregáveis finais que merecem guarda de longo prazo sobem para a categoria certa do Acervo (tipicamente `32_Projetos-Concluidos`). O `4-Arquivo` local do PARA é só estação intermediária, para o que ainda pode ser consultado localmente.

## Como criar a estrutura no Drive

### (a) Recomendada — Google Drive para computador (Drive Desktop)

O Drive Desktop monta o Google Drive como uma unidade ou pasta local no Windows (ex: `G:\Meu Drive\`). Com isso montado, basta rodar o script dedicado do Acervo:

```powershell
scripts/criar-estrutura-drive.ps1 -CaminhoRaiz "G:\Meu Drive\Acervo"
```

O script cria a árvore Johnny Decimal completa dentro da pasta `Acervo` do Drive, e o próprio Drive Desktop cuida da sincronização em segundo plano.

**Passo a passo resumido de instalação/configuração:**

1. Baixe o Google Drive para computador em [google.com/drive/download](https://www.google.com/drive/download/) e instale.
2. Faça login com a conta Google que abrigará o Acervo.
3. Nas configurações do app (ícone na bandeja do sistema → engrenagem → Preferências), confirme como "Meu Drive" está exposto: como unidade de rede (letra, ex: `G:`) ou como pasta dentro do seu perfil de usuário.
4. Para descobrir a letra/caminho da unidade montada:
   - Abra o Explorador de Arquivos — a unidade aparece na lista lateral como "Google Drive" (ex: `G:\`).
   - Ou, nas Preferências do Drive Desktop, a aba "Meu Drive" mostra o caminho/letra configurado.
5. Confirme o caminho completo (normalmente `G:\Meu Drive\`) antes de rodar o script, para não criar a estrutura no lugar errado.
6. Rode o script com `-CaminhoRaiz` apontando para essa unidade, conforme o comando acima. Se quiser só simular, adicione `-WhatIf`.

### (b) Manual via navegador

Para quem não quer instalar o Drive Desktop: acesse [drive.google.com](https://drive.google.com), crie a pasta `Acervo` e, dentro dela, cada pasta da árvore acima, uma a uma, com os nomes exatos (incluindo os códigos numéricos). É mais trabalhoso e mais sujeito a erro de digitação — use a opção (a) sempre que possível.

## Cuidados de sincronização

- Prefira o modo **Transmissão** (stream) ao modo **Espelhamento** (mirror), para que os arquivos fiquem na nuvem e só baixem sob demanda, sem lotar o disco local. Isso importa especialmente para `50-59_Midia` e `60-69_Backups`, que tendem a ser as áreas mais pesadas do Acervo.
- O modo de sincronização é configurado nas Preferências do Drive Desktop, na aba da conta, e pode ser trocado depois sem perder arquivos.
- Evite caracteres não suportados pelo Drive em nomes de arquivo/pasta (`/`, `\`, `:`, `*`, `?`, `"`, `<`, `>`, `|`), além de nomes terminados em ponto ou espaço. A convenção deste projeto (sem acentos, sem espaços, hífen e underscore como separadores) já evita a maioria desses problemas por design.
- Arquivos grandes ou com sincronização pendente podem demorar para aparecer no Drive web — confira o ícone de status do Drive Desktop antes de considerar uma migração concluída.

## Portabilidade

A árvore do Acervo é o "contrato" portátil: para migrar a outro provedor de nuvem no futuro (ou replicar em qualquer outro destino), basta rodar o mesmo `scripts/criar-estrutura-drive.ps1` apontando `-CaminhoRaiz` para o novo caminho — não é preciso recriar nada manualmente nem manter a árvore documentada em mais de um lugar.
