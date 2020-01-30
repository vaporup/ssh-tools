$output = ( ssh -vN -o BatchMode=yes $args -l ForceLogin2Fail 2>&1 ) | Select-String ".*remote software version.*" | Out-String
$output.Replace("debug1: ","")
