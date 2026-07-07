# Cria toda a arvore de pastas do sistema PARA (0-Inbox/1-Projetos/2-Areas/3-Recursos/4-Arquivo) de forma idempotente.
# Simule sem criar nada com -WhatIf, ou aponte para outro destino (ex: Google Drive Desktop) com -CaminhoRaiz "G:\Meu Drive\PARA".

[CmdletBinding(SupportsShouldProcess)]
param(
    [string]$CaminhoRaiz = "$env:USERPROFILE\PARA"
)

$estrutura = @(
    "0-Inbox",
    "1-Projetos",
    "2-Areas\01-Trabalho\Cargo-Atual",
    "2-Areas\01-Trabalho\Clientes-Recorrentes",
    "2-Areas\01-Trabalho\Financas-Trabalho",
    "2-Areas\02-Estudos\Idiomas",
    "2-Areas\02-Estudos\Desenvolvimento-Profissional",
    "2-Areas\02-Estudos\Certificacoes",
    "2-Areas\03-Pessoal-Administrativo\Financas-Pessoais",
    "2-Areas\03-Pessoal-Administrativo\Saude",
    "2-Areas\03-Pessoal-Administrativo\Documentos-Legais",
    "2-Areas\03-Pessoal-Administrativo\Casa",
    "2-Areas\03-Pessoal-Administrativo\Impostos",
    "2-Areas\04-Midia-Criativo\Fotografia",
    "2-Areas\04-Midia-Criativo\Projetos-Codigo-Pessoais",
    "2-Areas\04-Midia-Criativo\Musica",
    "2-Areas\04-Midia-Criativo\Hobbies-Criativos",
    "3-Recursos\01-Trabalho\Templates",
    "3-Recursos\01-Trabalho\Referencias-da-Area",
    "3-Recursos\02-Estudos\Cursos",
    "3-Recursos\02-Estudos\E-books-Artigos",
    "3-Recursos\02-Estudos\Anotacoes",
    "3-Recursos\03-Pessoal-Administrativo\Modelos-de-Documentos",
    "3-Recursos\03-Pessoal-Administrativo\Guias-Manuais",
    "3-Recursos\03-Pessoal-Administrativo\Receitas",
    "3-Recursos\04-Midia-Criativo\Assets-Fontes-Presets",
    "3-Recursos\04-Midia-Criativo\Referencias-Visuais",
    "3-Recursos\04-Midia-Criativo\Stock-Fotos-Videos",
    "4-Arquivo\01-Projetos-Concluidos",
    "4-Arquivo\02-Areas-Inativas",
    "4-Arquivo\03-Recursos-Obsoletos"
)

$criadas = 0
$existentes = 0

foreach ($item in $estrutura) {
    $caminhoCompleto = Join-Path $CaminhoRaiz $item
    $jaExistia = Test-Path -LiteralPath $caminhoCompleto

    if ($PSCmdlet.ShouldProcess($caminhoCompleto, "Criar pasta")) {
        New-Item -ItemType Directory -Path $caminhoCompleto -Force | Out-Null

        if ($jaExistia) {
            $existentes++
            Write-Host "Pasta já existia: $caminhoCompleto" -ForegroundColor Gray
        }
        else {
            $criadas++
            Write-Host "Pasta criada: $caminhoCompleto" -ForegroundColor Green
        }
    }
}

Write-Host ""
Write-Host "Resumo: $criadas pasta(s) criada(s), $existentes pasta(s) já existente(s)." -ForegroundColor Cyan
Write-Host "Estrutura criada com sucesso em: $CaminhoRaiz" -ForegroundColor Cyan
