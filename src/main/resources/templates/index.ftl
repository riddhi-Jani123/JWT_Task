<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Home Page</title>

<style>

.err{

	color:red;
}
</style>

<link
	href="assets/css/sb-admin-2.min.css"
	rel="stylesheet">
	<link
	href="assets/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
	
$(document).ready(function(){

	$('#submit').click(function () {
$.ajax({
    url: "/login",
    type: "Post",
    contentType: "application/json;charset=utf-8",
    dataType: "json",
    success: function (result) {
     console.log(result);
      
        
    },
    error: function (errormessage) {
      alert(errormessage.responseText);
    },
    });
  });
});

</head>


</head>

<body id="page-top" class="bg-gradient-primary">

	
	<div class="container">

		<!-- Outer Row -->
		<div class="row justify-content-center">

			<div class="col-xl-10 col-lg-12 col-md-9">

				<div class="card o-hidden border-0 shadow-lg my-5">
					<div class="card-body p-0">
						<!-- Nested Row within Card Body -->
						<div class="row">
							<!--  <div class="col-lg-6 d-none d-lg-block bg-login-image"></div> -->
							<div class="col-lg-12">
								<div class="p-5">
									<div class="text-center">
									
										<h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
									</div>

								
									<form class="user" method="POST" action="login" >
										<div class="form-group">
											<input name="username" type="text"
												class="form-control form-control-user" 
												id="exampleInputEmail" aria-describedby="emailHelp" 
												placeholder="Enter Email Address...">
										</div>
										<div class="form-group">
											<input name="password" type="password"
												class="form-control form-control-user" 
												
												id="exampleInputPassword" placeholder="Password" 
										</div>
										
						
										<br>
										<input type="submit" value="login"
											class="btn btn-primary btn-user btn-block">


										<!-- </a> -->
										<hr>

									</form>
									<hr>
									<div class="text-center">
										<a class="small" href="forgot-password">Forgot
											Password?</a>
									</div>
									<div class="text-center">
										<a class="small" href="register">Create an Account!</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>

		</div>

	</div>



<script src="assets/vendor/jquery/jquery.min.js" type="text/javascript"/>
<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js" type="text/javascript"/>
<script src="assets/vendor/jquery-easing/jquery.easing.min.js" type="text/javascript"/>
<script src="assets/js/sb-admin-2.min.js" type="text/javascript"/>
<script src="assets/vendor/chart.js/Chart.min.js" type="text/javascript"/>
<script src="assets/js/demo/chart-area-demo.js" type="text/javascript"/>
<script src="assets/vendor/chart.js/Chart.min.js" type="text/javascript"/>
<script src="assets/js/demo/chart-pie-demo.js" type="text/javascript"/>
</body>

</html>