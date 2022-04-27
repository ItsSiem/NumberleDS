function Randomize-List
{
   Param(
     [array]$InputList
   )

   return $InputList | Get-Random -Count $InputList.Count;
}

$a = 00001..99999

$randomList = Randomize-List -InputList $a;

$output;
foreach ($item in $randomList) {
    $output += '"'+$item.toString().padleft(5,'0')+'", ';
}

$output | Out-File -FilePath .\Output.txt