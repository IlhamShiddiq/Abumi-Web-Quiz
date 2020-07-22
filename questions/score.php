<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Question</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">

    <!-- More CSS -->
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="../assets/css/font.css">
    <link rel="stylesheet" href="../assets/css/animate.css">
    <link rel="stylesheet" href="../assets/css/all.css">

    <link rel="icon" type="image/png" href="../assets/img/favicon.png">
</head>
<body class="soil">
    

    <div class="wrapper">
        <div class="box">
            <div class="box-header">
                <p>SCORE ANDA</p>
            </div>
            <div class="container">
                <div class="row text-center">
                    <div class="col-12 score">
                        <?php echo $_SESSION['score']; ?>
                    </div>
                </div>
            </div>
            <div class="answer back text-center mt-2">
                <form action="../process/opt-score.php" method="POST">
                    <small class="sm"><?php echo $_SESSION['nama']; ?></small>
                    <div class="form-group mt-2">
                        <button type="submit" class="btn btn-primary btn-sm" name="back">Back to Home</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="image" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            </div>
            <div class="modal-body text-center">
            <img src="../assets/img/earth.png" width="350">
            </div>
            <div class="modal-footer">
            </div>
        </div>
        </div>
    </div>

     <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="../assets/js/jquery.js"></script>
    <script src="../assets/js/popper.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
    <script src="../assets/js/all.js"></script>

</body>
</html>