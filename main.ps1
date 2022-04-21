# https://programwiz.org/2021/06/26/how-to-move-wsl2-d-drive-from-c/#toc5

Param(
    $Name
)

if(-not $Name){
    $Name = Read-Host
    if(-not $Name){
        throw "'Name' is empty."
    }
}

Write-Host $Name

$DestPath = Join-Path $PSScriptRoot $Name
$TarPath = Join-Path $PSScriptRoot "ubuntu-20.04.tar"

wsl --import "$Name" "$DestPath" "$TarPath"  --version 2
