<html>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Checkout Menu</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <link rel="stylesheet" href="../../Styles (css)/style.css">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">

    <link href="https://bootstrap-ecommerce.com/bootstrap-ecommerce-html/images/favicon.ico" rel="shortcut icon" type="image/x-icon">

    <style>
        .btn {

            outline: 0;
            padding: 12px;
            color: white;
            text-align: center;
            cursor: pointer;
            width: 100%;
            font-size: 18px;
        }

        .form-group {
            display: flex;
            align-items: center;
            justify-content: flex-start;
            margin-bottom: 10px;
        }

        .form-group label {
            width: 120px;
            /* Adjust the width as needed */
            margin-right: 10px;
            /* Adjust the spacing between the label and input */
        }

        .form-group input,
        .form-group textarea {
            flex: 1;
        }

        .btn-rectangle {
            border-radius: 0;
            /* Removes button's rounded corners */
            padding-left: 20px;
            /* Adjust the left padding as needed */
            padding-right: 20px;
            /* Adjust the right padding as needed */
            
        }
    </style>

</head>

<body>

    <div class="card-header pb-0">
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
                <div style="cursor: pointer;" class="circle float-right" data-toggle="modal" data-target="#loginModal" data-toggle="tooltip" data-placement="top" title="LOGIN & SIGNUP"><i class="fas fa-user text-primary"></i></div>

                <a href="../(3) Printing Order/cart.php">
                    <div class="circle float-right mr-2"><i class="fas fa-shopping-cart text-primary"></i><sup><span class="badge badge-danger" style="width: 23px;">0</span></sup></div>
                </a>
            </div>
        </div>
    </div>
    <br><br>

    <div class="card">
        <div class="container text-center" id="card">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="card p-4" id="cards">
                        <h5 class="text-dark pl-4">Billing Details</h5>
                        <form>
                            <input type="hidden" name="id" value="<?= $row2['id']; ?>">
                            <div class="form-group">
                                <label for="username">Name:</label>
                                <input type="text" class="form-control" value="" name="name" maxlength="200" size="75">
                            </div>
                            <div class="form-group">
                                <label for="phoneNo">Mobile number:</label>
                                <input type="text" class="form-control" value="" name="mobile_no" maxlength="7" size="7">
                            </div>
                            <div class="form-group">
                                <label for="address">Address:</label>
                                <textarea class="form-control" name="address" rows="4" cols="50"></textarea>
                            </div>

                            <div class="form-group">
                                <button style="background-color:blue;" type="submit" id="submit" class="btn btn-primary btn-rectangle">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


</body>