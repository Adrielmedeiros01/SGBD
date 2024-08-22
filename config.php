<?php


    if(isset($_POST['cadastrar'])) {
        $nome = $_POST["nome"];
        $email = $_POST["email"];
        $cidade = $_POST["cidade"];
        $cpf = $_POST["cpf"];
    }

        $host = 'localhost';
        $user = 'root';
        $senha = '';
        $banco = 'formulario';


        $con = mysqli_connect($host,$user,$senha,$banco);
        
        if (!$con) {
            die("Conexão Falhou!".mysqli_connect_error());
        }
        
        $sql = "INSERT INTO usuario(nome,email,cidade,cpf) VALUES ('$nome','$email', '$cidade','$cpf')";
        $rs = mysqli_query($con, $sql);
        if($rs) {
            echo "Você foi cadastrado com sucesso!";
        }



?>
