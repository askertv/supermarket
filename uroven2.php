<?php
$id = 0;
$items = '';
if (isset($_GET['id'])) {

    $id = (int)$_GET['id'];
    $prev_id = (int)$_GET['prev'];
    require_once 'adm/serv.php';

    $query = "SELECT uroven3.id AS urv3_id, uroven3.name AS urv3_name, uroven2.id AS urv2_id, uroven2.name AS urv2_name ";
    $query.= "FROM uroven2, uroven3 ";
    $query.= "WHERE uroven3.ur2_id=uroven2.id AND uroven2.id='".$id."'";
    $result = mysql_query($query, $link);
    for ($data = array(); $row = mysql_fetch_assoc($result); $data[] = $row);

    for($i=0; $i<count($data); $i++) {
        $items.="<a href='uroven3.php?id=".$data[$i]['urv3_id']."&prev=".$id."&pprev=".$prev_id."'>";
        $items.=$data[$i]['urv3_name'];    
        $items.="</a><br />";
    }
}

?>

<html>
<head>
<title>СУПЕРМАРКЕТ > ПРОДУКТЫ > <?=$data[0]['urv2_name']?></title>
</head>
<body>
<BR /><BR /><BR /><BR />

<table border='1' width='600'>
    <tr>
       <td><b><?php if(isset($data[0]['urv2_name'])) echo $data[0]['urv2_name'];?></b></td>
    </tr>
    <tr>
       <td><?=$items?></td>
    </tr>
</table>
<a href='uroven1.php?id=<?=$prev_id?>'>Вернуться назад</a>
<br /><br />
<a href='index.php'>Вернуться к началу</a>
</body>
</html>