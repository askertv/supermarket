<?php
    $host = 'HOST';
    $user = 'USER';
    $pswd = 'PASSWORD';
    $db   = 'DATABASE';
    $link = mysql_connect ($host, $user, $pswd);
    mysql_select_db ($db);
?>