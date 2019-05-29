<?php
require_once 'Mysql.class.php';
class Db extends Mysql {

    protected $db_user='loger';
    protected $db_pass='';
    protected $db_host='localhost';
    public function __construct($db='shop') {
        parent::__construct($db);
    }

}