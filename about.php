<?php include 'config.php';  //include config
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

<html>
<body>
<link href="css/stylec.css" rel="stylesheet">
<link href="css/style.min.css" rel="stylesheet">
<div class="container-fluid py-5">
        <div class="container py-5">
            <div class="row align-items-center">
                <div class="col-lg-6 pb-5 pb-lg-0">
                    <img class="img-fluid w-100" src="product-images/About1.jpg" alt="">
                </div>
                <div class="col-lg-6">
                <h3 class="d-inline-block text-primary text-uppercase bg-light py-1 px-2">OUR SHOP</h3>
                    <h3 class="mb-4" style="color: thistle;">Our Shop Where Pepole Buying A Any Products That Who Wishes.
                    It is the leading beauty destination for all of your beauty needs, from cosmetics 
                    and skin care products to fragrances and accessories. Since its inception 5 years ago
                    we strive to earn your trust and maintain loyalty through the combination of high-quality products,
                     great pricing, and world-class customer service!
                    </h3>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="container-fluid py-5" style="position: static;float: right;">
        <div class="container py-5">
            <div class="row align-items-center">
                <div class="col-lg-6 pb-5 pb-lg-0">
                    <img class="img-fluid w-100" src="product-images/About3.jpg" alt="">
                </div>
                <div class="col-lg-6">
                <h3 class="d-inline-block text-primary text-uppercase bg-light py-1 px-2">MANAGEMENT</h3>
                    <h3 class="mb-4" style="color: thistle;">Our Emplyoees Who Manage Our Clients,
                    Getting luxurious cosmetics brands on your fingertips seemed like 
                    a fictitious idea just a few years ago. But no more! We change the traditional 
                    practice of visiting makeup stores - forever. Now you can buy cosmetics online, 
                    get ready, and steal the show! We understand the struggles of being a fierce makeup fan. 
                    To cater to your inner beauty diva, we have brought makeup online.
                    </h3>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <div class="container-fluid py-5">
        <div class="container py-5">
            <div class="row align-items-center">
                <div class="col-lg-6 pb-5 pb-lg-0">
                    <img class="img-fluid w-100" src="product-images/About2.jpg" alt="">
                </div>
                <div class="col-lg-6">
                    <h3 class="d-inline-block text-primary text-uppercase bg-light py-1 px-2">Delivery</h3>
                    <h3 class="mb-4" style="color: thistle;">We Delivers Any Type Of Orders In Our Country And Quick Deliver Them, 
                        Our Workers Who Is 18 Years Old and Have a Driving License.If you need a serum to cure pigmentation 
                        or want to fight off frizzy hair? Just name it, and you will find a range of products on our website. 
                        Makeup city is for girls and women who love dolling up and taking care of their beauty. 
                        Our website is the best place to find what is new and what is coming next. Isn't that amazing? 
                        Getting luxurious cosmetics brands on your fingertips seemed like a fictitious idea just a few years ago. 
                    </h3>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="container-fluid py-5">
        <div class="container pt-5">
            <div class="row justify-content-center text-center">
                <div class="col-lg-6">
                    <h3 class="d-inline-block bg-light text-primary text-uppercase py-1 px-2">ABOUT US</h3>
                    <h1 class="mb-5">Business Man</h1>
                </div>  
            </div>
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="team position-relative overflow-hidden mb-5">
                        <img class="img-fluid" src="product-images/CEO2.jpg" alt="">
                        <div class="position-relative text-center">
                            <div class="team-text bg-primary text-white">
                                <p class="text-white text-uppercase" style="font-weight: bolder; font-size: 16px;">Noor Muhammad</p>
                                <p class="m-0" style="font-size: 14px;">CEO</p>
                            </div>
                            <div class="team-social bg-dark text-center">
                               <a style="font-size: 16px;">Business Man</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="team position-relative overflow-hidden mb-5">
                        <img class="img-fluid" src="product-images/achd.jpg" alt="">
                        <div class="position-relative text-center">
                            <div class="team-text bg-primary text-white">
                                <p class="text-white text-uppercase"  style="font-weight: bolder; font-size: 16px;">Muhammad Faisal</p>
                                <p class="m-0" style="font-size: 14px;">Accounts Holder's</p>
                            </div>
                            <div class="team-social bg-dark text-center">
                            <a style="font-size: 16px;">Business Man</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="team position-relative overflow-hidden mb-5">
                        <img class="img-fluid" src="product-images/CorSab.jpg" alt="">
                        <div class="position-relative text-center">
                            <div class="team-text bg-primary text-white">
                                <p class="text-white text-uppercase"  style="font-weight: bolder; font-size: 16px;">Shahbaz Hyder</p>
                                <p class="m-0" style="font-size: 14px;">Crosseseondent Assistant</p>
                            </div>
                            <div class="team-social bg-dark text-center">
                            <a style="font-size: 16px;">Business Man</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="team position-relative overflow-hidden mb-5">
                        <img class="img-fluid" src="product-images/InDAAui.jpg" alt="">
                        <div class="position-relative text-center">
                            <div class="team-text bg-primary text-white">
                                <p class="text-white text-uppercase"  style="font-weight: bolder; font-size: 16px;">Muhammad Tatri</p>
                                <p class="m-0" style="font-size: 14px;">Incharge Delivery Assistant</p>
                            </div>
                            <div class="team-social bg-dark text-center">
                            <a style="font-size: 16px;">Business Man</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>



<?php include 'footer.php'; ?>