<?php
session_start();
if (!isset($_SESSION['username'])) {
    header("Location: ../admin/index.php?url=".urlencode($_SERVER['SCRIPT_NAME']));
}
if (isset($_GET['ur'])) {
    $ur = (int)$_GET['ur'];
}
if (isset($_POST['submit'])) {
    require_once 'serv.php';
    $ur = $_POST['ur1'];
    $query="INSERT INTO uroven2 (ur1_id, name) VALUES ('".$ur."', '".$_POST['name']."')";
    if (mysql_query($query, $link)) {
        header("Location: index.php");
    } else {
        echo "Ошибка: связь с сервером потеряна, попробуйте позже...";
    }
}
?>
<html>
<head>
<title>СУПЕРМАРКЕТ</title>
</head>
<body>
<BR /><BR /><BR /><BR />
<b>Добавление нового Элемента</b><BR />
<form action='<?=$_SERVER['SCRIPT_NAME']?>' method=POST>
<input type='hidden' name='ur1' value='<?=$ur?>'>
<table border='0' width='600'>
    <tr>
       <td>Название:</td>
       <td><input type='text' name='name' value=''></td>
    </tr>
    <tr>
       <td></td>
       <td><input type='submit' name='submit' value='Добавить'></td>
    </tr>
</table>
</form>
<a href='uroven1.php?id=<?=$ur?>'>Вернуться</a>
</body>
</html>