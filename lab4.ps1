function employeelist{
New-Item -Path c:\fileserver -ItemType directory
#employee list file creation
$list = Import-CSV c:\employeelist.csv
foreach($name in $list){
    $namelower = $name.Name.replace(' ', '').tolower()
    new-item -itemtype directory -path c:\fileserver\ -name $namelower
    new-item -itemtype file -path c:\fileserver\$namelower -name "hello.txt"
}
} 
Function printers{
#printer list file creation
$printerlist = get-printers
New-Item -Path c:\printerlist -ItemType directory
foreach($printer in $printerlist){
    new-item -itemtype directory -path c:\printerlist\ -name $$printer
    get-itemproperty $printer | convertto-Json | out-file -filepath c:\printerlist\$printer
}
}    
