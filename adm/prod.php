<?php
session_start();
if (!isset($_SESSION['username'])) {
    header("Location: ../admin/index.php?url=".urlencode($_SERVER['SCRIPT_NAME']));
}
if (isset($_POST['submit'])) {
    require_once 'serv.php';
    $query="INSERT INTO uroven1 (name) VALUES ('".$_POST['name']."')";
    if (mysql_query($query, $link)) {
        header("Location: index.php");
    } else {
        echo "������: ����� � �������� ��������, ���������� �����...";
    }
}
?>
<html>
<head>
<title>�����������</title>
</head>
<body>
<BR /><BR /><BR /><BR />
<b>���������� ������ ��������</b><BR />
<form action='<?=$_SERVER['SCRIPT_NAME']?>' method=POST>
<table border='0' width='600'>
    <tr>
       <td>��������:</td>
       <td><input type='text' name='name' value=''></td>
    </tr>
    <tr>
       <td></td>
       <td><input type='submit' name='submit' value='��������'></td>
    </tr>
</table>
</form>
<a href='index.php'>���������</a>
</body>
</html>