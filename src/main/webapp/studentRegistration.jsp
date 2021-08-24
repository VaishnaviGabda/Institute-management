<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

	<head>

        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="author" content="">
        <title>Student Registration</title>

        <!-- Styles -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" media="screen">
		<link href="assets/css/chartist.min.css" rel="stylesheet" media="screen">
		<link href="assets/css/owl.carousel.min.css" rel="stylesheet" media="screen">
		<link href="assets/css/owl.theme.default.min.css" rel="stylesheet" media="screen">
		<link href="assets/css/jquery.dataTables.min.css" rel="stylesheet" media="screen">
		<link href="assets/css/responsive.dataTables.min.css" rel="stylesheet" media="screen">
        <link href="assets/css/style.css" rel="stylesheet" media="screen">

        <!-- Fonts -->
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>
        <link href="assets/fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet" media="screen">

		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

		<!-- Script -->
		<script>
		function allnumeric(inputtxt)
	    {
			var e = document.getElementById("studId");
			
		      var numbers = /^[0-9]+$/;
		      
		      if(inputtxt.value.match(numbers))
		      {
		    	  var data="";
                  e.innerHTML=data;
                  return true;
		      }
		      else
		      {
		    	  var data="Please Enter Valid Student Id";
                  e.innerHTML=data;
		           return false;
		      }
		  
	     }
		
		function allLetter(inputtxt)
	    { 
	       	var e = document.getElementById("studName");
	        var letters = /^[A-Za-z]+$/;
	            
	        if(inputtxt.value.match(letters))
	        {
	       		  var data="";
	              e.innerHTML=data;
	              return true;
	        }
	        else
	        {
	        	  var data="Student Name Should Contain Letters Only";
	              e.innerHTML=data;
	              return false;
	        }          
	    }
		
		function ValidateEmail(inputText)
        {
        	var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
        	var e = document.getElementById("email");
        
        	if(inputText.value.match(mailformat))
        	{
        		var data="";
                e.innerHTML=data;
                return true;
        	}
	        else
	        {
	        	var data="Please Enter Valid Email Id";
	            e.innerHTML=data;
	            return false;
	        }
        }
		
		function phonenumber(inputtxt)
        {
          var phoneno = /^\+?([0-9]{2})\)?[-. ]?([0-9]{4})[-. ]?([0-9]{4})$/;
          var e = document.getElementById("phNo");
          
          if(inputtxt.value.match(phoneno))
          {
        	  var data="";
              e.innerHTML=data;
              return true;
          }
          else
          {
        	  var data="Please Enter Valid Phone Number";
              e.innerHTML=data;
              return false;
          }
        }
		
		function passwordvalid(inputtxt){
			
			var e=document.getElementById("studPass");
			
			if(inputtxt.length<1 || inputtxt.length>8)
		      {
		    	  	var data="Password Must Be Of 8 Digits";
                	e.innerHTML=data;
                	return true;
		      }
		      else
		      {
		    	  	var data="";
                	e.innerHTML=data;
		           	return false;
		      }
			
		}
		
		</script>
    </head>
    <body>
		<div class="row dashboard-top-nav">
			<div class="col-sm-3 logo">
				<h5><i class="fa fa-book"></i>PATHSHALA</h5>
			</div>
			<div class="col-sm-4 top-search">
				<div class="search">
					<i class="fa fa-search"></i>
					<input type="text" placeholder="Search">
				</div>
			</div>
            <div class="col-sm-5 notification-area"></div>
		</div>
        	
		<div class="parent-wrapper" id="outer-wrapper">
						
			<!-- MAIN CONTENT -->
			<div class="main-content" id="content-wrapper">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12 clear-padding-xs" style="padding-top:0;">
							<h5 class="page-title">Welcome Student Please Register Here</h5>
							<div class="section-divider"></div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12 clear-padding-xs">
							<div class="col-sm-2"></div>
							<div class="col-sm-8">
								<div class="dash-item first-dash-item">
									<div class="inner-item" style="margin-top:0;padding-top:0;">
										<form class="dash-form" name="form1" action="RegReqTraineeController">
										
                                            <label class="clear-top-margin"><i class="fa fa-book"></i>Student Name</label>
											<input type="text" placeholder="Enter Student Name Here" name="text2" onblur="allLetter(document.form1.text2)"/>
											<span id="studName" style="color:red;"></span><br><br>

                                            <label class="clear-top-margin"><i class="fa fa-book"></i>Student E-mail Id</label>
											<input type="text" placeholder="Enter Student Email-Id Here" name="text3" onblur="ValidateEmail(document.form1.text3)"/>
											<span id="email" style="color:red;"></span><br><br>

                                            <label class="clear-top-margin"><i class="fa fa-book"></i>Student Mobile Number</label>
											<input type="text" placeholder="Enter Student Mobile Number Here" name="text4" onblur="phonenumber(document.form1.text4)" />
											<span id="phNo" style="color:red;"></span><br><br>
											
											<label class="clear-top-margin"><i class="fa fa-book"></i>Student Aadhar Number</label>
											<input type="text" placeholder="Enter Student Aadhar Number Here" name="text5" onblur="" />
											<span id="" style="color:red;"></span><br><br>
											
											<label class="clear-top-margin"><i class="fa fa-book"></i>Student Educational Details</label>
											<input type="text" placeholder="Enter Student Educational Details Here" name="text6" onblur="" />
											<span id="" style="color:red;"></span><br><br>
											
											<label class="clear-top-margin"><i class="fa fa-book"></i>Student Bussiness Unit</label>
											<select name="text7">
												<option value="1">Java FullStack</option>
												<option value="2">Python FullStack</option>
												<option value="3">Mean Stack</option>
												<option value="4">Fundamentals</option>
											</select><br><br>
																						
											<div>
												<input type="submit" value="Send Request">Send Request
                                                
											</div>
										</form>
									</div>
								</div>
							</div>
							<div class="col-sm-2"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	
		<!-- Scripts -->
        <script src="assets/js/jQuery_v3_2_0.min.js"></script>
		<script src="assets/js/jquery-ui.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/plugins/owl.carousel.min.js"></script>
		<script src="assets/plugins/Chart.min.js"></script>
		<script src="assets/plugins/jquery.dataTables.min.js"></script>
		<script src="assets/plugins/dataTables.responsive.min.js"></script>
        <script src="assets/js/js.js"></script>
		
    </body>
<script>'undefined'=== typeof _trfq || (window._trfq = []);'undefined'=== typeof _trfd && (window._trfd=[]),_trfd.push({'tccl.baseHost':'secureserver.net'}),_trfd.push({'ap':'cpsh-oh'},{'server':'sg2plzcpnl466829'},{'id':'7770191'}) </script><script src='../../../../../../img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js'></script>

</html>
