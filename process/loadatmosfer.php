<?php
require "../connect.php";
    if(isset($_POST['id'])) {
        $id = $_POST['id'];
        $s = $con->prepare("SELECT * FROM atmosfer WHERE id=:id");
        $s->bindParam(':id', $id);
        $s->execute();

        $row=$s->fetch(PDO::FETCH_ASSOC);
        echo $row['nama_atmosfer']."@".$row['deskripsi'];
    }
?>