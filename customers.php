<?php
$con=mysqli_connect("localhost", "root", "", "shopping_db");
if(mysqli_connect_errno()){
echo "Connection Fail".mysqli_connect_error();
}
include 'config.php';  //include config
// set dynamic title
$db = new Database();
$db->select('options','site_title',null,null,null,null);
$result = $db->getResult();

if(!empty($result)){ 
    $title = $result[0]['site_title']; 
}else{ 
    $title = "Shopping Project";
}
// include header 
include 'header.php'; ?>





<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping-Project</title>
    <link  rel="stylesheet" type="text/css" href="style.css">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">
</head>
<body>

<!-- ***** Testimonials Starts ***** -->
<section class="section" id="trainers" style="margin-top: -30px; margin-bottom: 70px;">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="section-heading">
                        <h2>All Customers</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">
                    <div class="trainer-item">
                        <div class="image-thumb">
                            <img src="product-images/customer1.jpg" alt="">
                        </div>
                        <div class="down-content">
                            <span>New Customer</span>
                            <h4>Amelia</h4>
                            <p>The product  focuses on the benefits, rather than the feature, It really is the most wonderful.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="trainer-item">
                        <div class="image-thumb">
                            <img src="product-images/customer2.jpg" alt="">
                        </div>
                        <div class="down-content">
                            <span>New Customer</span>
                            <h4>Alice</h4>
                            <p>Women drive 70-80% of all consumer purchasing, through a combination of their buying power and influence.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="trainer-item">
                        <div class="image-thumb">
                            <img src="product-images/customer3.jpg" alt="">
                        </div>
                        <div class="down-content">
                            <span>More Orderd Customer</span>
                            <h4>Paul D. Newman</h4>
                            <p>Man in shopping. Smiling man with shopping bags enjoying in shopping. Consumerism, shopping, lifestyle concept.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</section>
        <section class="section" id="trainers" style="margin-top: -30px; margin-bottom: 70px;">
        <div class="container">
        <div class="row">
                <div class="col-lg-4">
                    <div class="trainer-item">
                        <div class="image-thumb">
                            <img src="product-images/customer4.jpg" alt="">
                        </div>
                        <div class="down-content">
                            <span>Mostly Orderd Coustomer</span>
                            <h4>Emma</h4>
                            <p>The product  focuses on the benefits, rather than the feature, It really is the most wonderful.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="trainer-item">
                        <div class="image-thumb">
                            <img src="product-images/customer5.jpg" alt="">
                        </div>
                        <div class="down-content">
                            <span>Daily Ordered Customer</span>
                            <h4>Hector T. Daigl</h4>
                            <p>Man in shopping. Smiling man with shopping bags enjoying in shopping. Consumerism, shopping, lifestyle concept.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="trainer-item">
                        <div class="image-thumb">
                            <img src="product-images/customer6.jpg" alt="">
                        </div>
                        <div class="down-content">
                            <span>Day By Day Ordered Customer</span>
                            <h4>Evelyn</h4>
                            <p>Over 80 percent of purchases and purchase influence are made by women. Women make 91 percent of new home purchases.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </section>
        <section class="section" id="trainers" style="margin-top: -30px; margin-bottom: 70px;">
        <div class="container">
        <div class="row">
                <div class="col-lg-4">
                    <div class="trainer-item">
                        <div class="image-thumb">
                            <img src="product-images/customer7.jpg" alt="">
                        </div>
                        <div class="down-content">
                            <span>Weekly Ordered Customer</span>
                            <h4>Bret D. Bowers</h4>
                            <p>Man in shopping. Smiling  man with  shopping bags  enjoying in  shopping. Consumerism,  shopping, lifestyle concept.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="trainer-item">
                        <div class="image-thumb">
                            <img src="product-images/customer8.jpg" alt="">
                        </div>
                        <div class="down-content">
                            <span>Monthly Ordered Customer</span>
                            <h4>Emily</h4>
                            <p>Customer Gender can detect the gender of current and future customers Customer  current and future customers. .</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="trainer-item">
                        <div class="image-thumb">
                            <img src="product-images/customer9.jpg" alt="">
                        </div>
                        <div class="down-content">
                            <span>Old Customer</span>
                            <h4>Olivia</h4>
                            <p>The product  focuses on the benefits, rather than the feature, It really is the most wonderful.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
</section>


<!-- ***** Testimonials Ends ***** -->
</body>
</html>



<?php include 'footer.php'; ?>