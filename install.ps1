$D = Join-Path $HOME ".claude\skills"
New-Item -ItemType Directory -Force $D | Out-Null
$n = 0
Get-ChildItem (Join-Path $PSScriptRoot "skills") -Directory | ForEach-Object { $t = Join-Path $D $_.Name; if (Test-Path $t) { Remove-Item $t -Recurse -Force }; Copy-Item $_.FullName $t -Recurse; $n++ }
Write-Host "Instaladas $n skills en $D"
