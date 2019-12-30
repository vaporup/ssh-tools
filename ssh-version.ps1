Param(

  [Parameter(Mandatory=$true)]
  $Computername = $args[0]

)

$output = ( ssh -vN -o BatchMode=yes $Computername 2>&1 ) | Select-String "remote software version" | Out-String
$output.Replace("debug1: ","")
