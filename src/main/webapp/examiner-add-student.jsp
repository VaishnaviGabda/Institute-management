<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>

        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="author" content="">
        <title>Examiner - Add Student</title>

        <!-- Styles -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" media="screen">
		<link href="assets/css/chartist.min.css" rel="stylesheet" media="screen">
		<link href="assets/css/owl.carousel.min.css" rel="stylesheet" media="screen">
		<link href="assets/css/owl.theme.default.min.css" rel="stylesheet" media="screen">
        <link href="assets/css/style.css" rel="stylesheet" media="screen">
		<link href="assets/css/dashboardStyle.css" rel="stylesheet" media="screen">

        <!-- Fonts -->
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>
        <link href="assets/fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet" media="screen">
        
        <!-- Script -->
        <script>
        
        function allLetter(inputtxt)
        { 
        	var e = document.getElementById("firstName");
            var letters = /^[A-Za-z]+$/;
            
          if(inputtxt.value.match(letters))
          {
        	  var data="";
              e.innerHTML=data;
              return true;
          }
          else
          {
        	  var data="First Name Should Contain Letters Only";
              e.innerHTML=data;
              return false;
          }
          
    	}
        
        function allLetter1(inputtxt)
        { 
        	var e = document.getElementById("middleName");
            var letters = /^[A-Za-z]+$/;
            
          if(inputtxt.value.match(letters))
          {
        	  var data="";
              e.innerHTML=data;
              return true;
          }
          else
          {
        	  var data="Middle Name Should Contain Letters Only";
              e.innerHTML=data;
              return false;
          }
          
    	}
        
        function allLetter2(inputtxt)
        { 
        	var e = document.getElementById("lastName");
            var letters = /^[A-Za-z]+$/;
            
          if(inputtxt.value.match(letters))
          {
        	  var data="";
              e.innerHTML=data;
              return true;
          }
          else
          {
        	  var data="Last Name Should Contain Letters Only";
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
			<div class="col-sm-5 notification-area">
				<ul class="top-nav-list">
					
					<li class="user dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<span><img src="assets/img/parent/parent2.jpg" alt="user">JOHN DOE<span class="caret"></span></span>
						</a>
						<ul class="dropdown-menu notification-list">
							<li>
								<a href="examiner-profile.jsp"><i class="fa fa-users"></i> USER PROFILE</a>
							</li>
							<li>
								<a href="examiner-change-pass.jsp"><i class="fa fa-key"></i> CHANGE PASSWORD</a>
							</li>
							<li>
								<div class="all-notifications">
									<a href="#">LOGOUT</a>
								</div>
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
        	
		<div class="parent-wrapper" id="outer-wrapper">
			<!-- SIDE MENU -->
			<div class="sidebar-nav-wrapper" id="sidebar-wrapper">
				<ul class="sidebar-nav">
					<li>
						<a href="examinerDashboard.jsp"><i class="fa fa-home menu-icon"></i> HOME</a>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<i class="fa fa-users menu-icon"></i> STUDENTS <span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li>							
								<a href="examiner-add-student.jsp"><i class="fa fa-caret-right"></i>ADD</a>
							</li>
							<li>
								<a href="examiner-student-list.jsp"><i class="fa fa-caret-right"></i>ALL STUDENT  </a>
							</li>
						</ul>
						<div class="clearfix"></div>
					</li>
					<li class="dropdown">
						<a href="examiner-add-class.jsp">	<i class="fa fa-graduation-cap menu-icon"></i> COURSES 	</a>
						<div class="clearfix"></div>
					</li>
					<li class="dropdown">
						<a href="examiner-add-subject.jsp"><i class="fa fa-book menu-icon"></i> EXAMINATION </a>
						<div class="clearfix"></div>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<i class="fa fa-user-secret menu-icon"></i> QUESTION BANK <span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li>							
								<a href="examiner-add-question.jsp"><i class="fa fa-caret-right"></i>ADD</a>
							</li>
							<li>
								<a href="examiner-all-questions.jsp"><i class="fa fa-caret-right"></i>ALL QUESSTIONS</a>
							</li>
						</ul>
						<div class="clearfix"></div>
					</li>
					<li class="dropdown">
						<a href="examiner-marks-report.jsp"><i class="fa fa-address-card menu-icon"></i> REPORTS </a>
						<div class="clearfix"></div>
					</li>
				</ul>
			</div>
			
			<!-- MAIN CONTENT -->
			<div class="main-content" id="content-wrapper">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12 clear-padding-xs">
							<h5 class="page-title"><i class="fa fa-user"></i>ADD STUDENT</h5>
							<div class="section-divider"></div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-lg-10 clear-padding-xs">
							
							<div class="col-md-10">
								<div class="dash-item first-dash-item">
									<h6 class="item-title"><i class="fa fa-user"></i>STUDENT INFO</h6>
									<div class="inner-item">
										<form class="dash-form" name="form1">
											<table class="table table">
												<tbody>
													<tr>
														<td>
															<label class="clear-top-margin"><i class="fa fa-user-circle-o"></i>FIRST NAME</label>
															<input type="text" placeholder="First Name" name="text1" onblur="allLetter(document.form1.text1)" />
															<span id="firstName" style="color:red;"></span>
														</td>
														<td>
															<label class="clear-top-margin"><i class="fa fa-user-circle-o"></i>MIDDLE NAME</label>
															<input type="text" placeholder="Middle Name" name="text2" onblur="allLetter1(document.form1.text2)" />
															<span id="middleName" style="color:red;"></span>
														</td>
													</tr>
													<tr>
														<td>
															<label class="clear-top-margin"><i class="fa fa-user-circle-o"></i>LAST NAME</label>
															<input type="text" placeholder="Last Name" name="text3" onblur="allLetter2(document.form1.text3)"/>
															<span id="lastName" style="color:red;"></span>
														</td>
														<td>
															<label class="clear-top-margin"><i class="fa fa-venus"></i>GENDER</label>
															<select>
																<option>-- Select --</option>
																<option>Male</option>
																<option>Female</option>
															</select>
														</td>
													</tr>
													<tr>
														<td>
															<label><i class="fa fa-calendar"></i>DATE OF BIRTH</label>
															<input type="text" id="studentDOB" placeholder="MM/DD/YYYY" onblur="allLetter1(document.form1.text3)"/>
														</td>
														<td>
															<label><i class="fa fa-phone"></i>PHONE #</label>
															<input type="text" placeholder="1234567890" name="text4" onblur="phonenumber(document.form1.text4)" />
															<span id="phNo" style="color:red;"></span>
														</td>
													</tr>
													<tr>
														<td>
															<label><i class="fa fa-envelope-o"></i>EMAIL</label>
															<input type="text" placeholder="abc@gmail.com" name="text5" onblur="ValidateEmail(document.form1.text5)"/>
															<span id="email" style="color:red;"></span>
														</td>
														<td>
															<label><i class="fa fa-file-picture-o"></i>UPLOAD PHOTO</label>
															<input type="file" placeholder="90890" />
														</td>
													</tr>
													<tr>
														<td colspan="2" style="text-align: center;"><a href=""><i class="fa fa-paper-plane"></i> Add Student</a></td>
													</tr>
												</tbody>
											</table>
										</form>
									</div>
								</div>
							</div>
							
						</div>
						<div class="col-md-2"></div>
					</div>
				</div>
				<div class="menu-togggle-btn">
					<a href="#menu-toggle" id="menu-toggle"><i class="fa fa-bars"></i></a>
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
<script>'undefined'=== typeof _trfq || (window._trfq = []);'undefined'=== typeof _trfd && (window._trfd=[]),_trfd.push({'tccl.baseHost':'secureserver.net'}),_trfd.push({'ap':'cpsh-oh'},{'server':'sg2plzcpnl466829'},{'id':'7770191'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src='../../../../../../img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js'></script>

</html>