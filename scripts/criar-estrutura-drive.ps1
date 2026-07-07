# Cria toda a arvore Johnny Decimal do Acervo (Google Drive ou outro destino) de forma idempotente.
# Simule sem criar nada com -WhatIf, ou aponte para outro destino com -CaminhoRaiz "D:\OutraNuvem\Acervo".

[CmdletBinding(SupportsShouldProcess)]
param(
    [string]$CaminhoRaiz = "G:\Meu Drive\Acervo"
)

$estrutura = @(
    "00-09_Sistema\01_Inbox",
    "00-09_Sistema\02_Modelos-Templates",
    "10-19_Documentos-Pessoais\11_Identidade-Certidoes",
    "10-19_Documentos-Pessoais\12_Contratos",
    "10-19_Documentos-Pessoais\13_Saude",
    "10-19_Documentos-Pessoais\14_Casa",
    "10-19_Documentos-Pessoais\15_Veiculo",
    "20-29_Financeiro\21_Impostos",
    "20-29_Financeiro\22_Comprovantes-Recibos",
    "20-29_Financeiro\23_Bancos-Investimentos",
    "20-29_Financeiro\24_Notas-Fiscais-Garantias",
    "30-39_Trabalho\31_Curriculo-Carreira",
    "30-39_Trabalho\32_Projetos-Concluidos",
    "30-39_Trabalho\33_Referencias-Templates",
    "40-49_Estudos\41_Cursos",
    "40-49_Estudos\42_E-books-Artigos",
    "40-49_Estudos\43_Certificados-Diplomas",
    "40-49_Estudos\44_Anotacoes",
    "50-59_Midia\51_Fotos",
    "50-59_Midia\52_Videos",
    "50-59_Midia\53_Musica",
    "50-59_Midia\54_Assets-Criativos",
    "60-69_Backups\61_Backups-Dispositivos",
    "60-69_Backups\62_Exportacoes-de-Apps"
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
