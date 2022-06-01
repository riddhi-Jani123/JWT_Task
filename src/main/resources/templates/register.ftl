<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Registration</title>
<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/4.3.1/minty/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker.css">
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/select2/3.3.2/select2.css">
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/css/bootstrap-select.css">
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet" />

	
	<link href="assets/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->

<link href="assets/css/sb-admin-2.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css"
	integrity="sha512-wnea99uKIC3TJF7v4eKk4Y+lMz2Mklv18+r4na2Gn1abDRPPOeef95xTzdwGD9e6zXJBteMIhZ1+68QC5byJZw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
	
<style>
#usr-err{

	color:red;

}


label.error {
	color: red;
	font-size: 1rem;
	width: 100%;
}

.error{
font-size: 1rem;
	width: 100%;
}


</style>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
</script>
 


<script>


$(document).ready(function() {	


alert("in jquery");
	$('#submit').click(function () {	
	var formData = $('form').serialize();
	alert(formData);
$.ajax({
    url: 'add',
    type: "POST",
    contentType: "application/json;charset=utf-8",
    dataType: "json",
    data:formData,
    success: function (result) {
    console.log(result);
	  if(result == "success"){
            window.location.href = "/login";
        }
      
        
    },
    error: function (errormessage) {
      alert(errormessage.responseText);
    },
  });
		
});
		
  });	
	
	
</script>


</head>

<body class="bg-gradient-primary">

<div class="container">

		<div class="card o-hidden border-0 shadow-lg my-5">
			<div class="card-body p-0">
				<!-- Nested Row within Card Body -->
				<div class="row">
					<div class="col-lg-12">
						<div class="p-5">
						
							
							<div class="text-center">
								<h1 class="h4 text-gray-900 mb-4">Register </h1>
							</div>
							
						    
							

							<form  method="POST" action=""
								id="register"   >			
											
			
										<div class="form-group row">
											<div class="col-sm-6 mb-3 mb-sm-0">

											
												
											
												<input type="text" class="form-control form-control-user"
													id="exampleFirstName" name="userFName" 
													placeholder="First Name" > 

												

											</div>
											<div class="col-sm-6">
												<input type="text" class="form-control form-control-user"
													id="exampleLastName" name="userLName"
													placeholder="Last Name"> 
											
										

											</div>
										</div>
										<div class="form-group">
											<input type="text" class="form-control form-control-user"
												id="exampleInputEmail" name="username" 
												placeholder="Email Address" >
												<span id="email-check"> </span>
										

										</div>
										<div class="form-group">

											<input type="tel" class="form-control form-control-user"
												id="mNo" name="userMobile"  placeholder="mobile no">
									

										</div>
										<div class="form-group row">
											<div class="col-sm-6 mb-3 mb-sm-0">

												<input type="password"
													class="form-control form-control-user"
													id="exampleInputPassword" name="userPass" 
													placeholder="Password" >
											



											</div>
											<div class="col-sm-6">
												<input type="password"
													class="form-control form-control-user"
													id="exampleRepeatPassword" name="userCPass" 
													placeholder="Confirm Password">

												
										</div>
										</div>
										
							<label class="block mt-2 text-md font-semibold"><span
										class="text-gray-700 dark:text-gray-400">Gender</span></label>
										
										<label> Female</label>
										<input type="radio" value="female" name="userGender"  >
										<br>
										<label> Male</label>
										<input type="radio" value="male" name="userGender">
							

							
										<br>
											
											
																					

									
					
				</div>



	<hr class="my-8" />
		
				<input type="submit" value="register" id="submit"
			class="btn btn-primary btn-user btn-block">


		
		<hr class="my-8" />

	<div class="text-center">
											<a href="index">Already have an
												account? Login!</a>
										</div>


	</form>
	
	</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	
	

	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/js/bootstrap-datepicker.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/3.3.2/select2.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/js/bootstrap-select.js"></script>
	<script src="https://cdn.ckeditor.com/4.5.1/standard/ckeditor.js"></script>


	
</body>
</html>