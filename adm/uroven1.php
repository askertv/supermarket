<?php
session_start();
if (!isset($_SESSION['username'])) {
    header("Location: ../admin/index.php?url=".urlencode($_SERVER['SCRIPT_NAME']));
}
$id = 0;
$items2 = '';
if (isset($_GET['id'])) {

    $id = (int)$_GET['id'];
    require_once 'serv.php';

    $query = "SELECT uroven2.id AS ur2_id, uroven2.name AS ur2_name, uroven1.id AS ur1_id, uroven1.name AS ur1_name ";
    $query.= "FROM uroven1, uroven2 ";
    $query.= "WHERE uroven2.ur1_id=uroven1.id AND uroven1.id='".$id."'";
    $result = mysql_query($query, $link);
    for ($data = array(); $row = mysql_fetch_assoc($result); $data[] = $row);

    for($i=0; $i<count($data); $i++) {
        $items2.="<tr><td width='400'>";
        $items2.="<a href='uroven2.php?id=".$data[$i]['ur2_id']."&prev=".$id."'>";
        $items2.=$data[$i]['ur2_name'];    
        $items2.="</a></td><td width='200'>";
        $items2.="<a href='action.php?id=".$data[$i]['ur2_id']."&op=21'>Редактировать</a>&#160&#160";
        $items2.="<a href='action.php?id=".$data[$i]['ur2_id']."&op=22'>Удалить</a>";
        $items2.="</td></tr>";
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
       <td colspan='2'><b><?php if(isset($data[0]['ur1_name'])) echo $data[0]['ur1_name']; ?></b></td>
    </tr>
    <?=$items2?>
</table>
<a href='prod1.php?ur=<?=$id?>'>Добавить элемент</a>
<br /><br />
<a href='index.php'>Вернуться к началу</a>
</body>
</html>