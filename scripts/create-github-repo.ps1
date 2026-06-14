# One-time: create GitHub repo and push (requires `gh auth login` once)
$ErrorActionPreference = "Stop"
$Root = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $Root

$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")

if (-not (Get-Command gh -ErrorAction SilentlyContinue)) {
    Write-Host "Install GitHub CLI: winget install GitHub.cli" -ForegroundColor Red
    exit 1
}

gh auth status 2>$null
if ($LASTEXITCODE -ne 0) {
    Write-Host "Run: gh auth login" -ForegroundColor Yellow
    exit 1
}

gh repo create Gosioto/gosloto-admin --public --description "GOSLOTO admin SPA (admin.gosloto.xyz)" --source . --remote origin --push
Write-Host "Done. Enable Pages: Settings -> Pages -> main / root -> Custom domain admin.gosloto.xyz" -ForegroundColor Green
