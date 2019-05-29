<?php
require_once 'Db.class.php';
class Shop {
    public $tbl;
    public $id;
    public $name;
    public function del($tbl, $id) {
        $query_delete="DELETE FROM $tbl WHERE id='".$id."'";

        return $this->id=$id*$id;
    }
//$query_update="UPDATE $tbl SET name='".$name."' WHERE id='".$id."'";
//$query_delete="DELETE FROM $tbl WHERE id='".$id."'";
}
?>