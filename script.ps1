#   cd ./sites/wordpress-bedrock

function Remove-ReqDev {
    param (
        $filepath,
        $OutFilePath
    )
    $composer = cat $filepath | ConvertFrom-Json
    $composer.psobject.Properties.Remove('require-dev')
    $composer | ConvertTo-Json | Out-File $OutFilePath
}

Remove-ReqDev -filepath /home/sites/composer.json -OutFilePath /home/sites/composer.json
