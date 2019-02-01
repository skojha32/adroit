
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="icon" type="image/jpg" href="images\logo.jpg" >
<title>Adroit</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- <meta name="keywords" content="Fantasy World Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free web designs for Nokia, Samsung, LG, SonyEricsson, Motorola web design" /> -->
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- gallery -->
<link rel="stylesheet" href="css/lightGallery.css" type="text/css" media="all" />
<!-- //gallery -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<link href="css/social.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<link href="//fonts.googleapis.com/css?family=Questrial" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Jura:300,400,500,600" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/social.css" >
</head>
    <body>
        <!-- mail -->
	<div class="mail" id="mail">
		<div class="container">
			<h3 class="w3l_head w3l_head1">Register </h3>
			<p class="w3ls_head_para w3ls_head_para1">One event for a Team</p>
			<div class="w3_mail_grids">
				<form action="#" method="post">
                <div class="col-md-3 w3_agile_mail_grid">
                </div>
					<div class="col-md-6 w3_agile_mail_grid">
						<span class="input input--ichiro">
							<input class="input__field input__field--ichiro" type="text" id="input-25" placeholder=" " name="name" required="">
							<label class="input__label input__label--ichiro" for="input-25">
								<span class="input__label-content input__label-content--ichiro">Your Name</span>
							</label>
                        </span>
                        <span class="input input--ichiro">
							<input class="input__field input__field--ichiro" type="text" id="input-24" placeholder=" " name="institution" required="">
							<label class="input__label input__label--ichiro" for="input-24">
								<span class="input__label-content input__label-content--ichiro">Your Institution </span>
							</label>
						</span>
						<span class="input input--ichiro">
							<input class="input__field input__field--ichiro" type="email" id="input-26" placeholder=" " name="email_id" required="">
							<label class="input__label input__label--ichiro" for="input-26">
								<span class="input__label-content input__label-content--ichiro">Your Email</span>
							</label>
						</span>
						<span class="input input--ichiro">
							<input class="input__field input__field--ichiro" type="text" id="input-27" placeholder=" " required="" name="number">
							<label class="input__label input__label--ichiro" for="input-27">
								<span class="input__label-content input__label-content--ichiro">Your Phone Number</span>
							</label>
						</span>
                        <input type="hidden" name="table" value="<?= $_POST['tm'] ?>" />
                        <input type="submit" name="submit" value="Register!">

					</div>
					<!-- <div class="col-md-6 w3_agile_mail_grid">
						<input type="submit" value="Submit">
					</div> -->
					<div class="clearfix"> </div>
				</form>
			</div>
		</div>
	</div>
	
<!-- //mail -->

        <?php
        $con = mysqli_connect("localhost","root","");
        $db=mysqli_select_db($con,"adroit");
    
        if (!$con) {
            die('Could not connect: '.mysqli_errno());
        }
            if(isset($_POST["submit"]))
            {
                $table = $_POST["table"];
                $id;
                $name=$_POST['name'];
                $institution=$_POST['institution'];
                $email_id=$_POST['email_id'];
                $number=$_POST['number'];
            
            $query=mysqli_query($con,"Insert into $table (name,institution,email_id,number) values('$name','$institution','$email_id','$number')");
             
			if($query)
			{
				echo "<script type = 'text/javascript'>alert('Registration Successful')</script>";
				echo "<script type='text/javascript'>window.location.assign('index.php')</script>";
		 }
		 else
		 {
			echo "<script type = 'text/javascript'>alert('Registration Not Successful!! Please try again!')</script>";
			echo "<script type='text/javascript'>window.location.assign('index.php')</script>";
			   
		 }
		}

        ?>
        <!-- !--banner Slider starts Here--> 
<script src="js/jquery-2.2.3.min.js"></script> 
						<script src="js/responsiveslides.min.js"></script>
							<script>
								// You can also use "$(window).load(function() {"
								$(function () {
								  // Slideshow 4
								  $("#slider3").responsiveSlides({
									auto: true,
									pager:false,
									nav:true,
									speed: 500,
									namespace: "callbacks",
									before: function () {
									  $('.events').append("<li>before event fired.</li>");
									},
									after: function () {
									  $('.events').append("<li>after event fired.</li>");
									}
								  });
							
								});
							 </script>
							 <!-- js -->
<!-- start-smoth-scrolling -->
	<script src="js/lightGallery.js"></script>
	<script>
    	 $(document).ready(function() {
			$("#lightGallery").lightGallery({
				mode:"fade",
				speed:800,
				caption:true,
				desc:true,
				mobileSrc:true
			});
		});
    </script>

<script src="js/owl.carousel.js"></script> 
<link href="css/owl.theme.css" rel="stylesheet">
 <link rel="stylesheet" href="css/owl.carousel.css" type="text/css" media="all">
<script>
$(document).ready(function() { 
	$("#owl-demo").owlCarousel({
 
		autoPlay: 3000, //Set AutoPlay to 3 seconds
		  autoPlay : true,
		   navigation :true,

		items : 4,
		itemsDesktop : [640,5],
		itemsDesktopSmall : [414,4]
 
	});
	
}); 
</script>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<!-- //js -->
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->

    </body>
</html>