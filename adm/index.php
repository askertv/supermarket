<?php 
session_start();
if (!isset($_SESSION['username'])) {
    header("Location: ../admin/index.php?url=".urlencode($_SERVER['SCRIPT_NAME']));
}
require_once 'serv.php';
$items1 = '';

$query="SELECT id, name FROM uroven1 ORDER BY id";

$result=mysql_query($query, $link);

for($i=0; $i<mysql_num_rows($result); $i++) {
    $res[$i]=mysql_fetch_array($result);
}

for($i=0; $i<count($res); $i++) {
    $items1.="<tr><td width='400'>";
    $items1.="<a href='uroven1.php?id=".$res[$i]['id']."'>";
    $items1.=$res[$i]['name'];    
    $items1.="</a></td><td width='200'>";
    $items1.="<a href='action.php?id=".$res[$i]['id']."&op=11'>�������������</a>&#160&#160";
    $items1.="<a href='action.php?id=".$res[$i]['id']."&op=12'>�������</a>";
    $items1.="</td></tr>";
}
?>

<html>
<head>
<title>�����������</title>
</head>
<body>
<BR /><BR /><BR /><BR />

<table border='1' width='600'>
    <tr>
       <td colspan='2'><b>��������</b></td>
    </tr>
    <?=$items1?>    
</table>
<a href='prod.php'>�������� �������</a>
<br>
<a href='out.php'>����� �� �����-������</a>
</body>
</html>