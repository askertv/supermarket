<?php
require_once 'Mysql.class.php';
class Db extends Mysql {

    protected $db_user='USER';
    protected $db_pass='PASSWORD';
    protected $db_host='HOST';
    public function __construct($db='DATABASE') {
        parent::__construct($db);
    }

}