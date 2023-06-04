<?php

// 1. Connect to MySQL server
$mysql = mysqli_connect("localhost", "root", "") or die(mysqli_connect_error());

// 2. Select the database named "onprint"
mysqli_select_db($mysql, "onprint") or die(mysqli_error($mysql));

// $riderId = $_SESSION['SESS_ID'];

$query = "SELECT * FROM riders WHERE id = '1'";
$result = mysqli_query($mysql, $query) or die(mysqli_error($mysql));
$row = mysqli_fetch_assoc($result);

$totalCommission = $row['total_commission'];
$commissionMonthly = $totalCommission / 12;
$commissionWeekly = $commissionMonthly / 4;

//@mysql_free_result($result);

?>

<html>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Delivery Report</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <link rel="stylesheet" href="../../Styles (css)/style.css">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">

</head>

<body>

    <div class="top-header bg-primary">
        <div class="container">
            <div class="row">

                <div class="col-md-7 mt-2">
                    <ul>
                        <li><a href="../index.html">Home</a></li>
                        <li><a href="../(3) Printing Order/order.php">Order</a></li>
                        <li><a href="../(4) Payment/payment.php">Payment</a></li>
                        <li><a href="#">Delivery</a></li>
                        <li><a href="../(6) Sales and Admin/admin.html">Sales and Admin</a></li>
                    </ul>
                </div>

                <div class="col-md-5 mt-2 ">
                    <h6>Welcome to OnPrint!</h6>
                </div>

            </div>
        </div>
    </div>

    <div class="container mt-4" id="top-logo">
        <div class="row">
            <div class="col-md-2" style="right: 5%;">
                <nav class="navbar navbar-light">
                    <a class="navbar-brand" href="#">
                        <img src="../../Assets (images)/logo.png" width=auto height="50">
                    </a>
                </nav>
            </div>
            <div class="col-md-7" id="searchbar">
                <div class="input-group mt-3">
                    <input type="text" class="form-control" placeholder="Search" aria-label="Search" aria-describedby="button-addon2">
                    <div class="input-group-append">
                        <button class="btn btn-primary" type="button" id="button-addon2"><i class="fas fa-search"></i></button>
                    </div>
                </div>
            </div>
            <div class="col-md-3 mt-2" id="icons">
                <a href="../(2) User/profile.html">
                    <div class="circle float-right" title="Manage Profile">
                        <i class="fas fa-user text-primary"></i>
                    </div>
                </a>

                <a href="../(3) Printing Order/cart.php">
                    <div class="circle float-right mr-2"><i class="fas fa-shopping-cart text-primary"></i><sup><span class="badge badge-danger" style="width: 23px;">0</span></sup></div>
                </a>
            </div>
        </div>
    </div>
    <hr>

    <div class="container" style="height: 30px;">
        <nav class="navbar navbar-expand-lg navbar-light" style="height: 30px;">

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse pl-4" id="navbarNav">
                <ul class="navbar-nav">

                    <li class="nav-item dropdown">

                        <a class="nav-link dropdown" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false"> <span> ≡ All Category</span></a>

                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="#">Comb Bind Notebook</a>
                            <a class="dropdown-item" href="#">Tape Bind Notebook</a>
                            <a class="dropdown-item" href="#">Certificate Printing</a>
                            <a class="dropdown-item" href="#">Thesis Hard Cover</a>
                            <a class="dropdown-item" href="#">Poster</a>
                        </div>

                    </li>

                    <li class="nav-item dropdown">

                        <a class="nav-link dropdown" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                            Campus
                        </a>

                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="../(3) Printing Order/campus-pekan.php">UMP Pekan</a>
                            <a class="dropdown-item" href="../(3) Printing Order/campus-gambang.php">UMP Gambang</a>
                        </div>

                    </li>

                    <li class="nav-item dropdown">

                        <a class="nav-link dropdown" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                            Delivery (Rider)
                        </a>

                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="delivery-note.php">Notes</a>
                            <a class="dropdown-item" href="delivery-record.php">Record</a>
                            <a class="dropdown-item" href="#">Report</a>
                        </div>

                    </li>

                </ul>
            </div>

        </nav>
    </div>
    <hr>

    <div class="container">
        <div class="fulfillmentbatch fulfillmentsearch">

            <div class="gap15"></div>
            <div class="gap15"></div>

            <div class="row">
                <div class="panel panel-default claim-panel-table">

                    <div class="panel-heading">
                        <h3 class="panel-title">Delivery Report</h3>
                    </div>

                    <div class="main-overview">

                        <div class="overviewCard">

                            <div class="overviewCard-icon overviewCard-icon--document">
                                <i class="far fa-money-bill-alt"></i>
                            </div>

                            <div class="overviewCard-description">
                                <div class="quickview__item">

                                    <div class="quickview__item-total">RM<?php echo round($totalCommission, 2); ?></div>

                                    <div class="quickview__item-description">
                                        <i class="far fa-calendar-alt"> Total commission</i>
                                    </div>

                                </div>
                            </div>

                        </div>

                        <div class="overviewCard">

                            <div class="overviewCard-icon overviewCard-icon--calendar">
                                <i class="far fa-money-bill-alt"></i>
                            </div>

                            <div class="overviewCard-description">
                                <div class="quickview__item">

                                    <div class="quickview__item-total">RM<?php echo round($commissionMonthly, 2); ?></div>

                                    <div class="quickview__item-description">
                                        <i class="far fa-calendar-alt"> Monthly commission</i>
                                    </div>

                                </div>
                            </div>

                        </div>

                        <div class="overviewCard">

                            <div class="overviewCard-icon overviewCard-icon--mail">
                                <i class="far fa-money-bill-alt"></i>
                            </div>

                            <div class="overviewCard-description">
                                <div class="quickview__item">

                                    <div class="quickview__item-total">RM<?php echo round($commissionWeekly, 2); ?></div>

                                    <div class="quickview__item-description">
                                        <i class="far fa-calendar-alt"> Weekly commission</i>
                                    </div>

                                </div>
                            </div>

                        </div>

                    </div>

                </div>
            </div>

        </div>
    </div>

    <footer class="footer pt-5 pb-5" id="footer">
        <div class="container">

            <span class="text-muted float-left">
                <p id="copyright">&copy; 2022 Section 02B GP5</p>
            </span>

            <span class="float-right">
                <p id="footerInfo"> Zhafran | Anishah | Amalin | Hamizah</p>
            </span>

        </div>
    </footer>

</body>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

<script src="js/script.js"></script>

</html>