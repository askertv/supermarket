<?php
session_start();
if (!isset($_SESSION['username'])) {
    header("Location: ../admin/index.php?url=".urlencode($_SERVER['SCRIPT_NAME']));
}
require_once 'lib/Db.class.php';
$mod=new Db;
if (isset($_GET['id'])&&isset($_GET['op'])) {
    
    $id=(int)$_GET['id'];
    $op=(int)$_GET['op'];

    if ($op=='12') {
        $mod->execute("DELETE positions FROM uroven1, uroven2, uroven3, positions WHERE uroven1.id=uroven2.ur1_id AND uroven2.id=uroven3.ur2_id AND uroven3.id=positions.ur3_id AND uroven1.id='".$id."'");
        $mod->execute("DELETE uroven3 FROM uroven1, uroven2, uroven3 WHERE uroven1.id=uroven2.ur1_id AND uroven2.id=uroven3.ur2_id AND uroven1.id='".$id."'");
        $mod->execute("DELETE uroven2 FROM uroven1, uroven2 WHERE uroven1.id=uroven2.ur1_id AND uroven1.id='".$id."'");
        $mod->execute("DELETE FROM uroven1 WHERE id='".$id."'");
    }
    if ($op=='22') {
        $mod->execute("DELETE positions FROM uroven2, uroven3, positions WHERE uroven2.id=uroven3.ur2_id AND uroven3.id=positions.ur3_id AND uroven2.id='".$id."'");
        $mod->execute("DELETE uroven3 FROM uroven2, uroven3 WHERE uroven2.id=uroven3.ur2_id AND uroven2.id='".$id."'");
        $mod->execute("DELETE FROM uroven2 WHERE id='".$id."'");
    }
    if ($op=='32') {
        $mod->execute("DELETE positions FROM uroven3, positions WHERE uroven3.id=positions.ur3_id AND uroven3.id='".$id."'");
        $mod->execute("DELETE FROM uroven3 WHERE id='".$id."'");
    }
    if ($op=='42') {
        $mod->execute("DELETE FROM positions WHERE id='".$id."'");
    }
}
if (isset($_POST['submit'])) {
    $id=(int)$_POST['id'];
    $op=(int)$_POST['op'];
    switch ($op) {
        case 11: $mod->execute("UPDATE uroven1 SET name='".$_POST['name']."' WHERE id='".$id."'"); break;
        case 21: $mod->execute("UPDATE uroven2 SET name='".$_POST['name']."' WHERE id='".$id."'"); break;
        case 31: $mod->execute("UPDATE uroven3 SET name='".$_POST['name']."' WHERE id='".$id."'"); break;
        case 41: $mod->execute("UPDATE positions SET code='".$_POST['code']."', name='".$_POST['name']."' WHERE id='".$id."'"); break;
    }
    unset($_POST['submit']);
}
?>
<html>
<head>
<title>СУПЕРМАРКЕТ</title>
</head>
<body>
<BR /><BR /><BR /><BR />
<?php
if (isset($_GET['id'])&&isset($_GET['op'])) {
    if ($_GET['op']=='11' OR $_GET['op']=='21' OR $_GET['op']=='31') {
        echo "<form action='".$_SERVER['SCRIPT_NAME']."' method=POST>";
        echo "<input type='hidden' name='id' value='".(int)$_GET['id']."'>";
        echo "<input type='hidden' name='op' value='".(int)$_GET['op']."'>";
        echo "<table border='0' width='600'>";
        echo "<tr><td>Название:</td><td><input type='text' name='name' value=''></td></tr>";
        echo "<tr><td></td><td><input type='submit' name='submit' value='Сохранить изменения'></td></tr>";
        echo "</table></form>";
    }
    if ($_GET['op']=='41') {
        echo "<form action='".$_SERVER['SCRIPT_NAME']."' method=POST>";
        echo "<input type='hidden' name='id' value='".(int)$_GET['id']."'>";
        echo "<input type='hidden' name='op' value='".(int)$_GET['op']."'>";
        echo "<table border='0' width='600'>";
        echo "<tr><td>Код:</td><td><input type='text' name='code' value=''></td></tr>";
        echo "<tr><td>Название:</td><td><input type='text' name='name' value=''></td></tr>";
        echo "<tr><td></td><td><input type='submit' name='submit' value='Сохранить изменения'></td></tr>";
        echo "</table></form>";
    }
}
?>
<a href='index.php'>Вернуться к началу</a>
</body>
</html>