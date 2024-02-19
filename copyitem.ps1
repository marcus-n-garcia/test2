#Function to transfer files


Function Transfer-File {

    param(
        [string]$dest,
        [string]$src
    )
       
    $destination = "\\pang301" + $dest + "\C$"
   Write-Host "$destination starting transfer"
   Copy-Item -Path $src -Destination $destination
   Write-Host "$destination transfer finished"
}




#Make loop that executes command on different PC
#Copy to PC + n
$source = "C:\temp\deleteNetbean.bat"


for ($j = 0; $j -le 2; $j++) {
    for($i = 0; $i -le 9; $i++) {

    $PCnumber = $j.ToString() + $i.ToString()
    Transfer-File -dest $PCnumber -src $source

    }
    
}

<#
Todo
-Error control when computer is off
-List number of PCs that have issues, including the name. Use array

#>