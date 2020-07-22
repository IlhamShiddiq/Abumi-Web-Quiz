<?php
  require "connect.php";
  $amb = $con->prepare("SELECT * FROM score ORDER BY score DESC LIMIT 10");
  $amb->execute();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Papan Nilai Pemain</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">

    <!-- More CSS -->
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/style-belajar.css">
    <link rel="stylesheet" href="assets/css/font.css">
    <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet" href="assets/css/all.css">

    <link rel="icon" type="image/png" href="assets/img/favicon.png">
</head>
<body>
    
    <div class="bg">
        <div class="tombol-play tombol-board">
            <div class="wrap-board wrap-tombol-lain">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12 text-white" style="font-size: 25px; font-weight: bold;">
                            Top Score
                        </div>
                        <div class="col-12">
                            <div class="table-score">
                                <table class="table text-white mt-3">
                                    <tbody>
                                      <?php $no = 1; while($row = $amb->fetch(PDO::FETCH_ASSOC)) : ?>
                                        <tr>
                                          <th scope="row"><?php echo $no; ?></th>
                                          <td><?php echo $row['username']; ?></td>
                                          <td><?php echo $row['score']; ?></td>
                                        </tr>
                                      <?php $no++; endwhile; ?>
                                    </tbody>
                                  </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="back-button"><a href="index.html"><i class="fas fa-caret-square-left"></i></a></div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/popper.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/all.js"></script>

</body>
</html>