<?php
require_once 'Db.class.php';
class Modif extends Db {
    public $tbl;
    public $id;
    public $text;
    public function __construct() {
        parent::__construct();
    }
    public function del($tbl, $id) {
        $query=parent::prepare("DELETE FROM $tbl WHERE id='".$id."'");
        parent::execute($query);
        return true;
    }
    public function upd($tbl, $id, $text) {
        $query=parent::prepare("UPDATE $tbl SET name='".$text."' WHERE id='".$id."'");
        parent::execute($query);
        return true;
    }
}
?>