<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>

        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="author" content="">
        <title>Admin - Student List</title>

        <!-- Styles -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" media="screen">
		<link href="assets/css/chartist.min.css" rel="stylesheet" media="screen">
		<link href="assets/css/owl.carousel.min.css" rel="stylesheet" media="screen">
		<link href="assets/css/owl.theme.default.min.css" rel="stylesheet" media="screen">
		<link href="assets/css/jquery.dataTables.min.css" rel="stylesheet" media="screen">
		<link href="assets/css/responsive.dataTables.min.css" rel="stylesheet" media="screen">
        <link href="assets/css/style.css" rel="stylesheet" media="screen">
		<link href="assets/css/dashboardStyle.css" rel="stylesheet" media="screen">

        <!-- Fonts -->
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>
        <link href="assets/fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet" media="screen">

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
						<a href="adminDashboard.html"><i class="fa fa-home menu-icon"></i> HOME</a>
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
							<i class="fa fa-user-secret menu-icon"></i> staffS <span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li>							
								<a href="admin-add-teacher.jsp"><i class="fa fa-caret-right"></i>ADD</a>
							</li>
							<li>
								<a href="admin-teacher-list.jsp"><i class="fa fa-caret-right"></i>ALL staffS</a>
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
							<h5 class="page-title"><i class="fa fa-users"></i>ALL STUDENT</h5>
							<div class="section-divider"></div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12 clear-padding-xs">
							<div class="col-lg-12">
								<div class="dash-item first-dash-item">
									<h6 class="item-title"><i class="fa fa-user"></i>STUDENTS</h6>
									<div class="inner-item">
										<table id="attendenceDetailedTable" class="display responsive nowrap" cellspacing="0" width="100%">
											<thead>
												<tr>
													<th><i class="fa fa-id-card"></i>ID</th>
													<th><i class="fa fa-user"></i>FIRST NAME</th>
													<th><i class="fa fa-user"></i>LAST NAME</th>
													<th><i class="fa fa-graduation-cap"></i>COURSE</th>
													<th><i class="fa fa-phone"></i>CONTACT #</th>
													<th><i class="fa fa-envelope-o"></i>EMAIL</th>
													<th><i class="fa fa-tasks"></i>ACTION</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td><i class="fa fa-id-card"></i>ID</td>
													<td><i class="fa fa-user"></i>FIRST NAME</td>
													<td><i class="fa fa-user"></i>LAST NAME</td>
													<td><i class="fa fa-book"></i>COURSE</td>
													<td><i class="fa fa-phone"></i>CONTACT #</td>
													<td><i class="fa fa-envelope-o"></i>EMAIL</td>
													
													<td class="action-link">
														<a class="edit" href="#" title="Edit" data-toggle="modal" data-target="#editDetailModal"><i class="fa fa-edit"></i></a>
														<a class="delete" href="#" title="Delete" data-toggle="modal" data-target="#deleteDetailModal"><i class="fa fa-remove"></i></a>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="menu-togggle-btn">
					<a href="#menu-toggle" id="menu-toggle"><i class="fa fa-bars"></i></a>
				</div>
				
				<!-- Delete Modal -->
				<div id="deleteDetailModal" class="modal fade" role="dialog">
					<div class="modal-dialog">
						<!-- Modal content-->
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								<h4 class="modal-title"><i class="fa fa-trash"></i>DELETE STUDENT</h4>
							</div>
							<div class="modal-body">
								<div class="table-action-box">
									<a href="#" class="save"><i class="fa fa-check"></i>YES</a>
									<a href="#" class="cancel" data-dismiss="modal"><i class="fa fa-ban"></i>CLOSE</a>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</div>
				
				
				<!--Edit details modal-->
				<div id="editDetailModal" class="modal fade" role="dialog">
					<div class="modal-dialog">
						<!-- Modal content-->
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								<h4 class="modal-title"><i class="fa fa-edit"></i>EDIT STUDENT DETAILS</h4>
							</div>
							<div class="modal-body dash-form">
								<div class="col-sm-3">
									<label class="clear-top-margin"><i class="fa fa-user"></i>FIRST NAME</label>
									<input type="text" placeholder="First Name" value="John" />
								</div>
								<div class="col-sm-3">
									<label class="clear-top-margin"><i class="fa fa-user"></i>MIDDLE NAME</label>
									<input type="text" placeholder="Middle Name" value="Fidler" />
								</div>
								<div class="col-sm-3">
									<label class="clear-top-margin"><i class="fa fa-user"></i>LAST NAME</label>
									<input type="text" placeholder="Last Name" value="Doe" />
								</div>
								<div class="col-sm-3">
									<label class="clear-top-margin"><i class="fa fa-graduation-cap"></i>COURSE</label>
									<input type="text" placeholder="Course" value="5 STD" />
								</div>
								<div class="clearfix"></div>
								<div class="col-sm-3">
									<label><i class="fa fa-phone"></i>DOB</label>
									<input type="text" placeholder="Date Of Birth" value="09/02/2000" />
								</div>
								<div class="col-sm-3">
									<label><i class="fa fa-phone"></i>CONTACT #</label>
									<input type="text" placeholder="Contact Number" value="1234567890" />
								</div>
								<div class="col-sm-3">
									<label><i class="fa fa-envelope-o"></i>EMAIL</label>
									<input type="text" placeholder="Email" value="john@gmail.com" />
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="modal-footer">
								<div class="table-action-box">
									<a href="#" class="save"><i class="fa fa-check"></i>SAVE</a>
									<a href="#" class="cancel" data-dismiss="modal"><i class="fa fa-ban"></i>CLOSE</a>
								</div>
							</div>
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
<script>'undefined'=== typeof _trfq || (window._trfq = []);'undefined'=== typeof _trfd && (window._trfd=[]),_trfd.push({'tccl.baseHost':'secureserver.net'}),_trfd.push({'ap':'cpsh-oh'},{'server':'sg2plzcpnl466829'},{'id':'7770191'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src='../../../../../../img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js'></script>

</html>