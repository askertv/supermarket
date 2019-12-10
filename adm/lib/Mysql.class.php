<?php
class Mysql {
protected $db_user;
protected $db_pass;
protected $db_host;
protected $insert_id;
protected $affected_rows;
protected $num_rows;
protected static $con;
protected static $queries;
protected static $con_count;
public function __construct($db) {
    if(!is_resource(self::$con)) {
        self::$con=mysql_connect($this->db_host, $this->db_user, $this->db_pass);
        ++self::$con_count;
    }
    mysql_select_db($db, self::$con) OR die('Ошибка подключения к базе данных');
}
public function prepare($var) {
    return mysql_real_escape_string($var);
}
public function execute($sql) {
    ++self::$queries;
    $res=mysql_query($sql, self::$con);
    $this->affected_rows=mysql_affected_rows(self::$con);
    $this->num_rows=@mysql_num_rows($res);
    if($this->num_rows) {
        $i=1;
        while($array[$i]=mysql_fetch_assoc($res)) {++$i;}
        mysql_free_result($res);
        unset($array[$i]);
        return $array;
    }
    $this->insert_id=mysql_insert_id(self::$con);
    return true;
}
public function insert_id() {
    return $this->insert_id;
}
public function affected_rows() {
    return $this->affected_rows;
}
public function num_rows() {
    return $this->num_rows;
}
public function queries() {
    return self::$queries;
}
public function count_con() {
    return self::$count_con;
}
}
?>