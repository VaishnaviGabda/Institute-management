<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

	<head>

        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="author" content="">
        <title>Examiner Login</title>

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
			var e = document.getElementById("exId");
			
		      var numbers = /^[0-9]+$/;
		      
		      if(inputtxt.value.match(numbers))
		      {
		    	  var data="";
                  e.innerHTML=data;
                  return true;
		      }
		      else
		      {
		    	  var data="Please Enter Valid Examiner Id";
                  e.innerHTML=data;
		           return false;
		      }
		  
	     }
		
		function passwordvalid(inputtxt){
			
			var e=document.getElementById("exPass");
			
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
						<div class="col-lg-12 clear-padding-xs">
							<h5 class="page-title">Welcome Examiner Please Login Here</h5>
							<div class="section-divider"></div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12 clear-padding-xs">
							<div class="col-sm-2"></div>
							<div class="col-sm-8">
								<div class="dash-item first-dash-item">
									<div class="inner-item">
										<form class="dash-form" name="form1">
											<label class="clear-top-margin"><i class="fa fa-book"></i>Examiner Id</label>
											<input type="text" placeholder="Enter Examiner Id Here" name="text1" onblur="allnumeric(document.form1.text1)"/>
											<span id="exId" style="color:red;"></span><br><br>

											<label class="clear-top-margin"><i class="fa fa-book"></i>Examiner Password</label>
											<input type="text" placeholder="Enter Examiner Password Here" name="text2" onblur="passwordvalid(document.form1.text2)"/>
											<span id="exPass" style="color:red;"></span>

											<div>
												<a href="examinerDashboard.jsp"><i class="fa fa-paper-plane"></i> Login</a>
                                                <a href="examinerRegister.jsp"><i class="fa fa-paper-plane"></i> Register</a>
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