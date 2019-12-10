<?php
$id = 0;
$items = '';
if (isset($_GET['id'])) {

    $id = (int)$_GET['id'];
    $prev_id = (int)$_GET['prev'];
    $pprev_id = (int)$_GET['pprev'];
    require_once 'adm/serv.php';

    $query = "SELECT positions.id AS pos_id, positions.name AS pos_name, uroven3.id AS urv3_id, uroven3.name AS urv3_name ";
    $query.= "FROM uroven3, positions ";
    $query.= "WHERE positions.ur3_id=uroven3.id AND uroven3.id='".$id."'";
    $result = mysql_query($query, $link);
    for ($data = array(); $row = mysql_fetch_assoc($result); $data[] = $row);

    for($i=0; $i<count($data); $i++) {
        $items.="<a href='uroven3.php?id=".$data[$i]['pos_id']."'>";
        $items.=$data[$i]['pos_name'];    
        $items.="</a><br />";
    }
}

?>

<html>
<head>
<title>СУПЕРМАРКЕТ > ПРОДУКТЫ > <?=$data[0]['urv3_name']?></title>
</head>
<body>
<BR /><BR /><BR /><BR />

<table border='1' width='600'>
    <tr>
       <td><b><?php if(isset($data[0]['urv3_name'])) echo $data[0]['urv3_name'];?></b></td>
    </tr>
    <tr>
       <td><?=$items?></td>
    </tr>
</table>
<a href='uroven2.php?id=<?=$prev_id?>&prev=<?=$pprev_id?>'>Вернуться назад</a>
<br /><br />
<a href='index.php'>Вернуться к началу</a>
</body>
</html>