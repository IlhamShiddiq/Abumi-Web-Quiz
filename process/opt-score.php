<?php

    require "../connect.php";

    session_start();

    
    if(isset($_POST['masuk'])) {
        $_SESSION['score'] = 0;
        $_SESSION['nama'] = $_POST['nama'];
        header("Location: ../questions/q-1.php");
    }

    if(isset($_POST['q1'])) {
        if(isset($_POST['options'])) {
            $val = $_POST['options'];
            $_SESSION['score'] += $val;
            header("Location: ../questions/q-2.php");
        } else {
            header("Location: ../questions/q-1.php?null=yes");
        }
    }

    if(isset($_POST['q2'])) {
        if(isset($_POST['options'])) {
            $val = $_POST['options'];
            $_SESSION['score'] += $val;
            header("Location: ../questions/q-3.php");
        } else {
            header("Location: ../questions/q-2.php?null=yes");
        }
    }

    if(isset($_POST['q3'])) {
        if(isset($_POST['options'])) {
            $val = $_POST['options'];
            $_SESSION['score'] += $val;
            header("Location: ../questions/q-4.php");
        } else {
            header("Location: ../questions/q-3.php?null=yes");
        }
    }

    if(isset($_POST['q4'])) {
        if(isset($_POST['options'])) {
            $val = $_POST['options'];
            $_SESSION['score'] += $val;
            header("Location: ../questions/q-5.php");
        } else {
            header("Location: ../questions/q-4.php?null=yes");
        }
    }

    if(isset($_POST['q5'])) {
        if(isset($_POST['options'])) {
            $val = $_POST['options'];
            $_SESSION['score'] += $val;
            header("Location: ../questions/q-6.php");
        } else {
            header("Location: ../questions/q-5.php?null=yes");
        }
    }

    if(isset($_POST['q6'])) {
        if(isset($_POST['options'])) {
            $val = $_POST['options'];
            $_SESSION['score'] += $val;
            header("Location: ../questions/q-7.php");
        } else {
            header("Location: ../questions/q-6.php?null=yes");
        }
    }

    if(isset($_POST['q7'])) {
        if(isset($_POST['options'])) {
            $val = $_POST['options'];
            $_SESSION['score'] += $val;
            header("Location: ../questions/q-8.php");
        } else {
            header("Location: ../questions/q-7.php?null=yes");
        }
    }

    if(isset($_POST['q8'])) {
        if(isset($_POST['options'])) {
            $val = $_POST['options'];
            $_SESSION['score'] += $val;
            header("Location: ../questions/q-9.php");
        } else {
            header("Location: ../questions/q-8.php?null=yes");
        }
    }

    if(isset($_POST['q9'])) {
        if(isset($_POST['options'])) {
            $val = $_POST['options'];
            $_SESSION['score'] += $val;
            header("Location: ../questions/q-10.php");
        } else {
            header("Location: ../questions/q-9.php?null=yes");
        }
    }

    if(isset($_POST['q10'])) {
        if(isset($_POST['options'])) {
            $val = $_POST['options'];
            $_SESSION['score'] += $val;

            $in = $con->prepare("INSERT INTO score(username, score, waktu) VALUES(:a, :b, NOW())");
            $in->bindParam(':a', $_SESSION['nama']);
            $in->bindParam(':b', $_SESSION['score']);
            $in->execute();

            header("Location: ../questions/score.php");
        } else {
            header("Location: ../questions/q-10.php?null=yes");
        }
    }

    if(isset($_POST['back'])) {
        $_SESSION['score'] = 0;
        $_SESSION['nama'] = "";
        header("Location: ../index.html");
    }
?>