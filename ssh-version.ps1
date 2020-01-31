
<#

.SYNOPSIS
Shows version of the SSH server you are connecting to

.Description
Connects to a server and detects which version of SSH is running

.EXAMPLE
./ssh-version.ps1 192.168.1.10

#>

if($args.Count -eq 0) {
    Get-Help $MyInvocation.MyCommand.Definition
    return
}

$output = ( ssh -vN -o BatchMode=yes $args -l ForceLogin2Fail 2>&1 ) | Select-String ".*remote software version.*" | Out-String
$output.Replace("debug1: ","")
