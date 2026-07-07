# Google Drive

Este documento descreve como replicar, no Google Drive, exatamente a mesma árvore descrita em [`docs/estrutura-pastas.md`](./estrutura-pastas.md). A regra é simples: mesmas pastas, mesmos nomes, mesma numeração — tanto no computador local quanto na nuvem.

## Duas formas de replicar a árvore

### (a) Recomendada — Google Drive para computador (Drive Desktop)

O Drive Desktop monta o Google Drive como uma unidade ou pasta local no Windows (ex: `G:\Meu Drive\`). Com isso montado, basta rodar o script de criação apontando para lá:

```powershell
scripts/criar-estrutura.ps1 -CaminhoRaiz "G:\Meu Drive\PARA"
```

O script cria a árvore completa dentro da pasta `PARA` do Drive, e o próprio Drive Desktop cuida da sincronização em segundo plano.

**Passo a passo de instalação/configuração:**

1. Baixe o Google Drive para computador em [drive.google.com/drive/download](https://www.google.com/drive/download/) e instale.
2. Faça login com a conta Google que terá a estrutura PARA.
3. Nas configurações do app (ícone na bandeja do sistema → engrenagem → Preferências), confirme como "Meu Drive" será exposto: como unidade de rede (letra, ex: `G:`) ou como pasta dentro do seu perfil de usuário.
4. Para descobrir a letra/caminho da unidade montada:
   - Abra o Explorador de Arquivos — a unidade aparece na lista lateral como "Google Drive" (ex: `G:\`).
   - Ou, nas Preferências do Drive Desktop, a aba "Meu Drive" mostra o caminho/letra configurado.
5. Confirme o caminho completo (normalmente `G:\Meu Drive\` ou `G:\Meu Drive\` seguido do nome da conta) antes de rodar o script, para não criar a estrutura no lugar errado.
6. Rode o script com `-CaminhoRaiz` apontando para essa unidade, conforme o comando acima.

### (b) Manual via navegador

Para quem não quer instalar o Drive Desktop: acesse [drive.google.com](https://drive.google.com), crie manualmente cada pasta da árvore descrita em [`docs/estrutura-pastas.md`](./estrutura-pastas.md), pasta por pasta, respeitando os mesmos nomes e a mesma numeração (`0-Inbox`, `1-Projetos`, `2-Areas`, etc.). É mais trabalhoso e mais sujeito a erro de digitação — use a opção (a) sempre que possível.

## Cuidados de sincronização

- Prefira o modo **Transmissão** (stream) ao modo **Espelhamento** (mirror) para arquivos de mídia grandes (fotos, vídeos, projetos de áudio). No modo Transmissão, os arquivos ficam na nuvem e só baixam sob demanda, evitando lotar o disco local. O Espelhamento mantém uma cópia completa localmente, o que pode ser inviável para pastas como `2-Areas\04-Midia-Criativo` ou `3-Recursos\04-Midia-Criativo\Stock-Fotos-Videos`.
- O modo de sincronização é configurado nas Preferências do Drive Desktop, na aba da conta, e pode ser trocado depois sem perder arquivos.
- Evite caracteres não suportados pelo Drive em nomes de arquivo/pasta (`/`, `\`, `:`, `*`, `?`, `"`, `<`, `>`, `|`), além de nomes terminados em ponto ou espaço. A convenção de nomenclatura deste projeto (sem acentos, sem espaços, hífen como separador) já evita a maioria desses problemas por design.
- Arquivos muito grandes ou com sincronização pendente podem demorar para aparecer no Drive web — confirme pelo ícone de status do Drive Desktop antes de considerar a migração concluída.

## Replicando em outro ambiente no futuro

A árvore de pastas é o "contrato" portátil entre ambientes. Para replicar em outro provedor de nuvem, um notebook novo, ou qualquer outro destino, basta rodar novamente `scripts/criar-estrutura.ps1` passando `-CaminhoRaiz` com o novo caminho — não é preciso recriar nada manualmente nem manter a árvore documentada em mais de um lugar.
