<?php
    require_once('db.class.php');
    $texto_tweet = $_POST['texto_tweet'];
    

    $objDb = new db();
    $link = $objDb->conecta_mysql();

    $sql = " INSERT INTO tweet(id_usuario, tweet)values(123, '$texto_tweet')";

    mysqli_query($link,$sql)


?>