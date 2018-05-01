<?php


class db {
    private $host = 'localhost';
    private $usuario = 'root';
    private $senha = 'senha4321';
    private $database = 'twitter';


    public function conecta_mysql(){
       $con = mysqli_connect($this->host, $this->usuario, $this->senha, $this->database);

        mysqli_set_charset($con, 'utf8');

        if(mysqli_connect_errno()){
            echo 'Houve erro ao tentar se conectar ao banco de dados:' .mysql_connect_error();
        }
        return $con;
    }

}

?>