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
<body class="solar-system">
    

    <div class="wrapper">
        <div class="box">
            <div class="box-header">
                <p>Question 2/10</p>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center">
                        <button type="button" class="btn btn-primary image" data-toggle="modal" data-target="#image"><i class="far fa-image"></i></button>
                    </div>
                    <div class="col-12 pt-2">
                        <p class="pertanyaan text-center mb-4">Planet apa yang biasa disebut dengan planet merah?</p>
                    </div>
                    <div class="col-6 text-center option">
                        <p><span>A.</span> Jupiter</p>
                        <p><span>B.</span> Bumi</p>
                    </div>
                    <div class="col-6 text-center option">
                        <p><span>C.</span> Mars</p>
                        <p><span>D.</span> Saturnus</p>
                    </div>
                </div>
            </div>
            <div class="answer text-center mt-2">
                <small>Jawabanmu?</small><br>
                <form action="../process/opt-score.php" method="POST">
                    <div class="btn-group btn-group-toggle mt-1" data-toggle="buttons">
                        <label class="btn btn-secondary">
                          <input type="radio" name="options" id="option1" value="0" autocomplete="off"> A
                        </label>
                        <label class="btn btn-secondary">
                          <input type="radio" name="options" id="option2" value="0" autocomplete="off"> B
                        </label>
                        <label class="btn btn-secondary">
                          <input type="radio" name="options" id="option3" value="1" autocomplete="off"> C
                        </label>
                        <label class="btn btn-secondary">
                          <input type="radio" name="options" id="option3" value="0" autocomplete="off"> D
                        </label>
                    </div>
                    <div class="form-group mt-2">
                        <button type="submit" class="btn btn-primary btn-sm" name="q2">Selanjutnya</button>
                    </div>
                </form>
            </div>
            <div class="quest-number">
                <div class="box-number text-center">
                    <p>1</p>
                </div>
                <div class="box-number text-center box-number-active">
                    <p>2</p>
                </div>
                <div class="box-number text-center">
                    <p>3</p>
                </div>
                <div class="box-number text-center">
                    <p>4</p>
                </div>
                <div class="box-number text-center">
                    <p>5</p>
                </div>
                <div class="box-number text-center">
                    <p>6</p>
                </div>
                <div class="box-number text-center">
                    <p>7</p>
                </div>
                <div class="box-number text-center">
                    <p>8</p>
                </div>
                <div class="box-number text-center">
                    <p>9</p>
                </div>
                <div class="box-number text-center">
                    <p>10</p>
                </div>
            </div>
            <?php if(isset($_GET['null'])) : ?>
                <div class="alert alert-warning text-white text-center alert-dismissible fade show" role="alert">
                    Anda <strong>belum memilih</strong> jawaban!
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            <?php endif; ?>
        </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="image" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
        <div class="modal-content modal-quest">
            <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            </div>
            <div class="modal-body text-center">
            <img src="../assets/img/mars.png" width="350">
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