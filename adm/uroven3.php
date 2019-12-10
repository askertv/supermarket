<?php
session_start();
if (!isset($_SESSION['username'])) {
    header("Location: ../admin/index.php?url=".urlencode($_SERVER['SCRIPT_NAME']));
}
$id = 0;
$items = '';
if (isset($_GET['id'])) {

    $id = (int)$_GET['id'];
    $prev_id = (int)$_GET['prev'];
    $pprev_id = (int)$_GET['pprev'];
    require_once 'serv.php';

    $query = "SELECT positions.id AS pos_id, positions.name AS pos_name, uroven3.id AS urv3_id, uroven3.name AS urv3_name ";
    $query.= "FROM uroven3, positions ";
    $query.= "WHERE positions.ur3_id=uroven3.id AND uroven3.id='".$id."'";
    $result = mysql_query($query, $link);
    for ($data = array(); $row = mysql_fetch_assoc($result); $data[] = $row);

    for($i=0; $i<count($data); $i++) {
        $items.="<tr><td width='400'>";
        $items.="<a href='uroven3.php?id=".$data[$i]['pos_id']."'>";
        $items.=$data[$i]['pos_name'];    
        $items.="</a></td><td width='200'>";
        $items.="<a href='action.php?id=".$data[$i]['pos_id']."&op=41'>Редактировать</a>&#160&#160";
        $items.="<a href='action.php?id=".$data[$i]['pos_id']."&op=42'>Удалить</a>";
        $items.="</td></tr>";
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
       <td colspan='2'><b><?php if(isset($data[0]['urv3_name'])) echo $data[0]['urv3_name'];?></b></td>
    </tr>
    <?=$items?>
</table>
<a href='prod3.php?ur=<?=$id?>&prev=<?=$prev_id?>&pprev=<?=$pprev_id?>'>Добавить элемент</a>
<br /><br />
<a href='uroven2.php?id=<?=$prev_id?>&prev=<?=$pprev_id?>'>Вернуться назад</a>
<br /><br />
<a href='index.php'>Вернуться к началу</a>
</body>
</html>