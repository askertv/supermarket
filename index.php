<?php
require_once 'adm/serv.php';
$items1 = '';

$query="SELECT id, name FROM uroven1 ORDER BY id";

$result=mysql_query($query, $link);

for($i=0; $i<mysql_num_rows($result); $i++) {
    $res[$i]=mysql_fetch_array($result);
}

for($i=0; $i<count($res); $i++) {
    $items1.="<a href='uroven1.php?id=".$res[$i]['id']."'>";
    $items1.=$res[$i]['name'];    
    $items1.="</a><br />";
}
?>

<html>
<head>
<title>ясоеплюпйер</title>
</head>
<body>
<BR /><BR /><BR /><BR />

<table border='1' width='600'>
    <tr>
       <td><b>оПНДСЙРШ</b></td>
    </tr>
    <tr>
       <td><?=$items1?></td>
    </tr>
</table>

</body>
</html>