<?php
    require_once('db.class.php');
    $usuario =  $_POST['usuario'];
    $email =  $_POST['email'];
    $senha = md5($_POST['senha']);




    $objDb = new db();
    $link = $objDb->conecta_mysql();
        //verificar se o usuario já existe
        $sql = " select * from usuarios where usuario = '$usuario' ";
        if($resultado_id = mysqli_query($link,$sql)){

            $dados_usuario =  mysqli_fetch_array($resultado_id);

            if(isset($dados_usuario['usuario'])){
                echo "Usuário já cadastrado";
            }else {
                echo "úsuario não cadastrado";
            }
            
        }else {
            echo "Erro ao tentar localizar o registro de úsuario";
        }
        //verificar se email já existe
        $sql = " select * from usuarios where email = 'email' ";
        if($resultado_id = mysqli_query($link,$sql)){

            $dados_usuario =  mysqli_fetch_array($resultado_id);

            if(isset($dados_usuario['email'])){
                echo "Email já cadastrado";
            }else {
                echo "Email não cadastrado";
            }
            
        }else {
            echo "Erro ao tentar localizar o registro de email";
        }
        die();
    $sql = " insert into usuarios(usuario, email, senha) values ('$usuario', '$email', '$senha') ";

    //executar query 
    if(mysqli_query($link, $sql)){
        echo "Usuário Registrado com sucesso!";
    } else {
        echo "Erro ao registrar o úsuario";
    }

    

?>