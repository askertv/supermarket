<?php
session_start();
if (isset ($_POST['submit'])) {
    if ($_POST['user'] == 'USER_NAME' && $_POST['pass'] == 'PASSWORD') {
        $_SESSION['username'] = $_POST['user'];
        if (isset ($_GET['url'])) {
            $url = $_GET['url'];
        } else {
            $url = '../adm/index.php';
        }
        if (!isset ($_COOKIE [session_name()])) {
            if (strstr ($url, "?")) {
                header ("Location: ".$url."&".session_name()."=".session_id());
            } else {
                header ("Location: ".$url."?".session_name()."=".session_id());
            }
        } else {
            header ("Location: ".$url);
        }
    }
}
?>
<HTML>
<HEAD>
<TITLE>Аутентификация пользователей</TITLE>
</HEAD>
<BODY>
<BR />
<FORM method = 'post'>
<INPUT type = 'text' name = 'user' /><BR />
<INPUT type = 'password' name = 'pass' /><BR />
<INPUT type = 'submit' name = 'submit' value = 'Вход' /><BR />
</FORM>
</BODY>
</HTML>