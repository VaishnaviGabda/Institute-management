<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="author" content="">
        <title>Admin - Add Examiner</title>

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
	        
	        function required(inputText, minlength, maxlength)
	        {
	        	var field = inputtxt.value; 
	        	var mnlen = minlength;
	        	var mxlen = maxlength;
		        var e = document.getElementById("addr");
		        
		        if(field.length< mnlen || field.length> mxlen || field =="" || field== null)
		        { 
		        	var data="Please Enter Address";
	                e.innerHTML=data;
	                return false;
		        }
		        else
		        { 
		        	var data="";
	                e.innerHTML=data;
	                return true;
		        }
		        
	        }
	        
	        function allnumeric(inputtxt)
	        {
		        var numbers = /^[0-9]+$/;
		        var e = document.getElementById("zip");
		        
		        if(inputtxt.value.match(numbers))
		        {
		        	var data="";
	                e.innerHTML=data;
	                return true;
		        }
		        else
		        {
		        	var data="Please Enter ZIP Code";
	                e.innerHTML=data;
	                return false;
		        }
	        }
	        
	        function nonEmpty(inputtxt)
	        {
		        var e = document.getElementById("phd");
		        
		        if(inputtxt.value != null || inputtxt.value != "" || inputtxt.value.length > 0)
		        {
		        	var data="";
	                e.innerHTML=data;
	                return true;
		        }
		        else
		        {
		        	var data="Please Add Your Highest Degree";
	                e.innerHTML=data;
	                return false;
		        }
	        }
	        
	        function allnumeric1(inputtxt)
	        {
		        var numbers = /^[0-9]+$/;
		        var e = document.getElementById("cgpa");
		        
		        if(inputtxt.value.match(numbers))
		        {
		        	var data="";
	                e.innerHTML=data;
	                return true;
		        }
		        else
		        {
		        	var data="Please Enter Valid CGPA";
	                e.innerHTML=data;
	                return false;
		        }
	        }
	        
	        function nonEmpty1(inputtxt)
	        {
		        var e = document.getElementById("msc");
		        
		        if(inputtxt.value != null || inputtxt.value != "" || inputtxt.value.length > 0)
		        {
		        	var data="";
	                e.innerHTML=data;
	                return true;
		        }
		        else
		        {
		        	var data="Please Add Your Other Degree";
	                e.innerHTML=data;
	                return false;
		        }
	        }
	        
	        function allnumeric2(inputtxt)
	        {
		        var numbers = /^[0-9]+$/;
		        var e = document.getElementById("cgpa1");
		        
		        if(inputtxt.value.match(numbers))
		        {
		        	var data="";
	                e.innerHTML=data;
	                return true;
		        }
		        else
		        {
		        	var data="Please Enter Valid CGPA";
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
								<a href="admin-profile.jsp"><i class="fa fa-users"></i> USER PROFILE</a>
							</li>
							<li>
								<a href="admin-change-pass.jsp"><i class="fa fa-key"></i> CHANGE PASSWORD</a>
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
						<a href="adminDashboard.jsp"><i class="fa fa-home menu-icon"></i> HOME</a>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<i class="fa fa-users menu-icon"></i> STUDENTS <span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li>							
								<a href="admin-add-student.jsp"><i class="fa fa-caret-right"></i>ADD</a>
							</li>
							<li>
								<a href="admin-student-list.jsp"><i class="fa fa-caret-right"></i>ALL STUDENT  </a>
							</li>
						</ul>
						<div class="clearfix"></div>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<i class="fa fa-user-secret menu-icon"></i> EXAMINERS <span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li>							
								<a href="admin-add-teacher.jsp"><i class="fa fa-caret-right"></i>ADD</a>
							</li>
							<li>
								<a href="admin-teacher-list.jsp"><i class="fa fa-caret-right"></i>ALL EXAMINERS</a>
							</li>
						</ul>
						<div class="clearfix"></div>
					</li>

					<li class="dropdown">
						<a href="admin-add-class.jsp">	<i class="fa fa-graduation-cap menu-icon"></i> COURSES 	</a>
						<div class="clearfix"></div>
					</li>
					<li class="dropdown">
						<a href="admin-add-subject.jsp"><i class="fa fa-book menu-icon"></i> EXAMINATION </a>
						<div class="clearfix"></div>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<i class="fa fa-user-secret menu-icon"></i> QUESTION BANK <span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li>							
								<a href="admin-add-question.jsp"><i class="fa fa-caret-right"></i>ADD</a>
							</li>
							<li>
								<a href="admin-all-questions.jsp"><i class="fa fa-caret-right"></i>ALL QUESSTIONS</a>
							</li>
						</ul>
						<div class="clearfix"></div>
					</li>
					<li class="dropdown">
						<a href="teacher-marks-report.jsp"><i class="fa fa-address-card menu-icon"></i> REPORTS </a>
						<div class="clearfix"></div>
					</li>
				</ul>
			</div>
			
			<!-- MAIN CONTENT -->
			<div class="main-content" id="content-wrapper">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12 clear-padding-xs">
							<h5 class="page-title"><i class="fa fa-user-secret"></i>ADD Examiner</h5>
							<div class="section-divider"></div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-lg-8 clear-padding-xs">
							<div class="">
								<div class="dash-item first-dash-item">
									<h6 class="item-title"><i class="fa fa-user"></i>Examiner INFO</h6>
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
															<select name="text4">
																<option>-- Select --</option>
																<option>Male</option>
																<option>Female</option>
															</select>
														</td>
													</tr>
													<tr>
														<td>
															<label><i class="fa fa-calendar"></i>DATE OF BIRTH</label>
															<input type="text" id="studentDOB" placeholder="MM/DD/YYYY" />
														</td>
														<td>
															<label><i class="fa fa-phone"></i>PHONE #</label>
															<input type="text" placeholder="1234567890" name="text5" onblur="phonenumber(document.form1.text5)" />
															<span id="phNo" style="color:red;"></span>
														</td>
													</tr>
													<tr>
														<td>
															<label><i class="fa fa-envelope-o"></i>EMAIL</label>
															<input type="text" placeholder="abc@gmail.com" name="text6" onblur="ValidateEmail(document.form1.text6)"/>
															<span id="email" style="color:red;"></span>
														</td>
														<td>
															<label><i class="fa fa-file-picture-o"></i>UPLOAD PHOTO</label>
															<input type="file" placeholder="90890" name="text7"/>
														</td>
													</tr>
													<tr>
														<td colspan="2"><h6 class="item-title"><i class="fa fa-home"></i>CONTACT INFO</h6></td>
													</tr>
													<tr>
														<td>
															<label class="clear-top-margin"><i class="fa fa-home"></i>ADDRESS </label>
															<input type="text" placeholder="H/N 42 Street# 10" name="text8" onblur="required(document.form1.text8,1,100)"/><br>
															<span id="addr" style="color:red;"></span>

														</td>
														<td>
															<label class="clear-top-margin"><i class="fa fa-flag"></i>COUNTRY</label>
															<select name="text9">
																<option>-- Select --</option>
																<option>Canada</option>
																<option>India</option>
																<option>Japan</option>
															</select>
														</td>
													</tr>
													<tr>
														<td>
															<label class="clear-top-margin"><i class="fa fa-id-card"></i>STATE</label>
																<select name="text10">
																	<option>-- Select --</option>
																	<option>British Columbia</option>
																	<option>Ontario</option>
																</select>
														</td>
														<td>
															<label><i class="fa fa-code"></i>ZIP</label>
															<input type="text" placeholder="90890" name="text11" onblur="allnumeric(document.form1.text11)"/><br>
															<span id="zip" style="color:red;"></span>
														</td>
													</tr>
													<tr>
														<td colspan="2"><h6 class="item-title"><i class="fa fa-book"></i>ACADEMIC INFO</h6></td>
													</tr>
													<tr>
														<td>
															<label class="clear-top-margin"><i class="fa fa-graduation-cap"></i>HIGHEST DEGREE</label>
															<input type="text" placeholder="PhD" name="text12" onblur="nonEmpty(document.form1.text12)"/>
															<span id="phd" style="color:red;"></span>
														</td>
														<td>
															<label class="clear-top-margin"><i class="fa fa-building"></i>UNIVERSITY/COLLEGE</label>
															<select name="text13">
																<option>-- Select --</option>
																<option>IIT</option>
																<option>Harvard</option>
															</select>
														</td>
													</tr>
													<tr>
														<td>
															<label class="clear-top-margin"><i class="fa fa-calaendar"></i>YEAR PASSED</label>
															<select name="text14">
																<option>-- Select --</option>
																<option>2005</option>
																<option>2006</option>
															</select>
														</td>
														<td>
															<label class="clear-top-margin"><i class="fa fa-puzzle-piece"></i>CGPA</label>
															<input type="text" placeholder="08.65" name="text15" onblur="allnumeric1(document.form1.text15)"/>
															<span id="cgpa" style="color:red;"></span>
														</td>
													</tr>
													<tr>
														<td>
															<label><i class="fa fa-graduation-cap"></i>OTHER DEGREE</label>
															<input type="text" placeholder="MSc" name="text16" onblur="nonEmpty1(document.form1.text16)"/>
															<span id="msc" style="color:red;"></span>
														</td>
														<td>
															<label><i class="fa fa-building"></i>UNIVERSITY/COLLEGE</label>
															<select name="text17">
																<option>-- Select --</option>
																<option>IIT</option>
																<option>Harvard</option>
															</select>
														</td>
													</tr>
													<tr>
														<td>
															<label><i class="fa fa-calaendar"></i>YEAR PASSED</label>
															<select name="text18">
																<option>-- Select --</option>
																<option>2005</option>
																<option>2006</option>
															</select>
														</td>
														<td>
															<label><i class="fa fa-puzzle-piece"></i>CGPA</label>
															<input type="text" placeholder="08.65" name="text19" onblur="allnumeric2(document.form1.text19)"/>
															<span id="cgpa1" style="color:red;"></span>
														</td>
													</tr>
													<tr>
														<td colspan="2" style="text-align: center;"><a href=""><i class="fa fa-paper-plane"></i> Add Examiner</a></td>
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