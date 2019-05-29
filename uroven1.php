<?php
$id = 0;
$items2 = '';
if (isset($_GET['id'])) {

    $id = (int)$_GET['id'];
    require_once 'adm/serv.php';

    $query = "SELECT uroven2.id AS ur2_id, uroven2.name AS ur2_name, uroven1.id AS ur1_id, uroven1.name AS ur1_name ";
    $query.= "FROM uroven1, uroven2 ";
    $query.= "WHERE uroven2.ur1_id=uroven1.id AND uroven1.id='".$id."'";
    $result = mysql_query($query, $link);
    for ($data = array(); $row = mysql_fetch_assoc($result); $data[] = $row);

    for($i=0; $i<count($data); $i++) {
        $items2.="<a href='uroven2.php?id=".$data[$i]['ur2_id']."&prev=".$id."'>";
        $items2.=$data[$i]['ur2_name'];    
        $items2.="</a><br />";
    }
}
?>

<html>
<head>
<title>СУПЕРМАРКЕТ > ПРОДУКТЫ</title>
</head>
<body>
<BR /><BR /><BR /><BR />

<table border='1' width='600'>
    <tr>
       <td><b><?=$data[0]['ur1_name']?></b></td>
    </tr>
    <tr>
       <td><?=$items2?></td>
    </tr>
</table>
<a href='index.php'>Вернуться к началу</a>
</body>
</html>