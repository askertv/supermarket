<?php
require_once 'Db.class.php';
$db=new Db;
function del($tbl, $id, &$db) {
    $query=$db->prepare("DELETE FROM $tbl WHERE id='".$id."'");
    $db->execute($query);
    return true;
}
function upd($tbl, $id, $text, &$db) {
    $query=$db->prepare("UPDATE $tbl SET name='".$text."' WHERE id='".$id."'");
    $db->execute($query);
    return true;
}
//$query_update="UPDATE $tbl SET name='".$name."' WHERE id='".$id."'";
//$query_delete="DELETE FROM $tbl WHERE id='".$id."'";
?>