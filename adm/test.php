<?php
require_once 'Db.class.php';
$obj=new Db;
//$obj->execute("INSERT INTO eco_zones (region, loaddate) VALUES ('new region', now())");
echo $obj->queries();
?>