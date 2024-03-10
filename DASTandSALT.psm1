function New-VeracodeAPISpecification {
    param (
        $SpecificationName,
        $filePath
    )
    $apiReturn = http --form --auth-type=veracode_hmac POST "https://api.veracode.com/was/configservice/v1/api_specifications?spec_name=$SpecificationName" file@$filePath | ConvertFrom-Json
    return $apiReturn
}

function Get-VeracodeAPISpecificationInfo {
    param (
        $SpecificationName
    )
    $apiReturn = http --auth-type=veracode_hmac GET "https://api.veracode.com/was/configservice/v1/api_specifications?spec_name=$SpecificationName" | ConvertFrom-Json
    $apiReturn = $apiReturn._embedded.api_specs
    return $apiReturn
}

function New-VeracodeApiDastScan {
    param (
        $scanName,
        $targetURL,
        $SpecificationName
    )
    $configDAST = Get-Content newDastTemplate.json | ConvertFrom-Json
    $SpecificationInfo = Get-VeracodeAPISpecificationInfo $SpecificationName
    $SpecificationID = $SpecificationInfo.spec_id

    $configDAST.name = $scanName
    $configDAST.scans.scan_config_request.api_scan_setting.spec_id = $SpecificationID
    $configDAST.scans.scan_config_request.target_url.url = $targetURL

    $newConfigDAST = "DAST" + (Get-Date -Format sshhmmddMM) + ".json"
    $pathJSON = "./TEMP/$newConfigDAST"
    $configDAST | ConvertTo-Json -depth 100 | Out-File "$pathJSON"

    $apiReturn = Get-Content $pathJSON | http --auth-type=veracode_hmac POST "https://api.veracode.com/was/configservice/v1/analyses?scan_type=API_SCAN"
    $apiReturn = $apiReturn | ConvertFrom-Json
    return $apiReturn
}

function Clear-VeracodeTEMP {
    Get-ChildItem -Path ./Temp -Include *.* -File -Recurse | ForEach-Object { $_.Delete()}
}

function New-VeracodeTest {
    # test values
    $SpecificationName = "TestDASTPowershell"
    $scanName = "TestDASTPowershell"
    $targetURL = "https://read-manager-main-api.onrender.com"
    $filePath = "exampleSwagger.yaml"

    New-VeracodeAPISpecification $SpecificationName $filePath
    New-VeracodeApiDastScan $scanName $targetURL $SpecificationName
}