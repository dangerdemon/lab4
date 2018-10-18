New-Item -Path c:\fileserver -ItemType directory

$list = Import-CSV c:\employeelist.csv

foreach($name in $list){
    $namelower = $name.Name.replace(' ', '').tolower()
    new-item -itemtype directory -path c:\fileserver\ -name $namelower
    new-item -itemtype file -path c:\fileserver\$namelower -name "hello.txt"
}





    