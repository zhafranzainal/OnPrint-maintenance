<html>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Cart</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <link rel="stylesheet" href="../../Styles (css)/style.css">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">

    <link href="https://bootstrap-ecommerce.com/bootstrap-ecommerce-html/images/favicon.ico" rel="shortcut icon" type="image/x-icon">

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
                        <li><a href="../(5) Order Acceptance/delivery-note.php">Delivery</a></li>
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

                <a href="#">
                    <div class="circle float-right mr-2">
                        <i class="fas fa-shopping-cart text-primary"></i>
                        <sup><span class="badge badge-danger" style="width: 23px;">0</span></sup>
                    </div>
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
                            <a class="dropdown-item" href="campus-pekan.php">UMP Pekan</a>
                            <a class="dropdown-item" href="campus-gambang.php">UMP Gambang</a>
                        </div>

                    </li>

                </ul>
            </div>

        </nav>
    </div>
    <hr>

    <div class="cart">
        <div class="container">
            <h3 class="text-center">Shopping Cart Details</h3>
        </div>
    </div>


    <br><br>


    <div class="container" id="card">
        <div class="row">
            <div class="col-md-8">
                <div class="card p-4" id="cards">
                    <h5 class="text-dark">Cart (2 Items)</h5>

                    <div class="row mt-4">
                        <div class="col-md-3">
                            <div class="overlay">
                                <img src="../../Assets (images)/certificate.jpg" class="zoom-in figure-img img-fluid">
                            </div>

                        </div>

                        <div class="col-md-7">

                            <?php

                            // 1. Connect to MySQL server
                            $mysql = mysqli_connect("localhost", "root", "") or die(mysqli_connect_error());

                            // 2. Select the database named "onprint"
                            mysqli_select_db($mysql, "onprint") or die(mysqli_error($mysql));

                            // 3. Write SQL statement that selects the record from table named "receipts"
                            $query = "SELECT p.name
                            FROM receipts r, orders o, packages p
                            WHERE r.order_id = o.id AND o.package_id = p.id";

                            // To run SQL query in database
                            $result = mysqli_query($mysql, $query);

                            // Check whether or not the table has existing data
                            if (mysqli_num_rows($result) > 0) {

                                // Output data of each row
                                while ($row = mysqli_fetch_assoc($result)) {


                                    $categoryName = $row["name"];



                            ?>

                                    <h5 class="text-muted pt-2"><?php echo $categoryName; ?></h5>
                                    <p class="text-uppercase font-weight-light">WITH TAPE</p>
                                    <div class="linespace mb-4">
                                        <p class="text-muted mt-4">Laminate : Yes </p>
                                        <p class="text-muted">Size : A4</p>
                                    </div>
                                    <button class="btn btn-sm text-muted text-uppercase"><i class="fas fa-trash-alt pr-2"></i>REMOVE ITEM</button>
                                    &nbsp;
                                    <button class="btn btn-sm text-muted text-uppercase"><i class="fas fa-heart pr-2"></i>ADD TO
                                        WISHLIST</button>

                            <?php
                                }
                            } else {
                                echo "0 results";
                            }
                            ?>



                        </div>


                        <div class="col-md-2">
                            <!-- //counter button -->
                            <div class="input-group input-group-sm">
                                <div class="input-group-prepend" onclick="add2()">
                                    <span class="input-group-text"><i class="fas fa-plus"></i></span>
                                </div>

                                <input type="text" class="numberbox2 form-control" value="1">
                                <div class="input-group-append" onclick="subtract2()">
                                    <span class="input-group-text"><i class="fas fa-minus"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="overlay">
                                <img src="../../Assets (images)/poster.jpg" class="zoom-in figure-img img-fluid">
                            </div>

                        </div>

                        <div class="col-md-7">
                            <h5 class="text-muted pt-2">Poster</h5>
                            <p class="text-uppercase font-weight-light">COLOUR</p>
                            <div class="linespace mb-4">
                                <p class="text-muted mt-4">Laminate : no</p>
                                <p class="text-muted">Size : A3</p>
                            </div>
                            <button class="btn btn-sm text-muted text-uppercase"><i class="fas fa-trash-alt pr-2"></i>REMOVE ITEM</button>
                            &nbsp;
                            <button class="btn btn-sm text-muted text-uppercase"><i class="fas fa-heart pr-2"></i>ADD TO
                                WISHLIST</button>

                        </div>

                        <div class="col-md-2">
                            <div class="input-group input-group-sm">
                                <div class="input-group-prepend" onclick="add3()">
                                    <span class="input-group-text"><i class="fas fa-plus"></i></span>
                                </div>

                                <input type="text" class="numberbox3 form-control" value="1">
                                <div class="input-group-append" onclick="subtract3()">
                                    <span class="input-group-text"><i class="fas fa-minus"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card p-3" id="card-cost">
                    <h5 class="text-primary pl-2">Total Amount</h5>
                    <table class="table table-borderless pt-2">

                        <tbody>
                            <tr>
                                <th scope="row" class="font-weight-light">Product Amount</th>
                                <td>RM15.00</td>
                            </tr>
                            <tr>
                                <th scope="row" class="font-weight-light">Shipping</th>
                                <td>RM4.00</td>
                            </tr>
                        </tbody>
                    </table>
                    <hr>
                    <h6 class="pl-2 pt-1">Total Price <span class="float-right">RM19.00</span></h6>
                    <hr>
                    <button class="btn btn-primary mt-2"><a href="checkout.php" class="text-white"><i class="fas fa-shopping-bag pr-2"></i>Proceed to Checkout</a></button>
                </div>
            </div>

        </div>
        <div class="row mt-5 mb-5">
            <div class="col-md-8">
                <div class="card p-3">
                    <h5 class="text-dark">Expected shipping delivery</h5>
                    <p class="text-muted">Thu., 12.03. - Mon., 16.03.</p>

                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-8">
                <div class="card p-3">
                    <h5 class="text-dark">We Accept</h5>
                    <div class="text-wrap mt-3">
                        <i class="fab fa-cc-visa fa-3x pr-2 text-dark"></i>
                        <i class="fab fa-cc-amex fa-3x pr-2 text-dark"></i>
                        <i class="fab fa-cc-mastercard fa-3x pr-2 text-dark"></i>
                        <i class="fab fa-cc-paypal fa-3x pr-2 text-dark"></i>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <br><br>

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