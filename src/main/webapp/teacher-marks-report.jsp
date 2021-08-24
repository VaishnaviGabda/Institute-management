<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>

        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="author" content="">
        <title>Admin - Result Reports</title>

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
							<h5 class="page-title"><i class="fa fa-bar-chart"></i>PERFORMANCE REPORT</h5>
							<div class="section-divider"></div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12 clear-padding-xs">
							<div class="col-lg-12">
								<div class="dash-item first-dash-item">
									<h6 class="item-title"><i class="fa fa-search"></i>MAKE SELECTION</h6>
									<div class="inner-item dash-search-form">
										<div class="col-md-3 col-sm-6">
											<label>COURSE CODE</label>
											<select>
												<option>MTH101</option>
												<option>MTH102</option>
												<option>MTH103</option>
												<option>MTH104</option>
											</select>
										</div>
										<div class="col-sm-3">
											<button type="submit" class="submit-btn"><i class="fa fa-search"></i>SELECT</button>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12">
							<div class="col-md-6">
								<div class="dash-item">
									<h6 class="item-title"><i class="fa fa-line-chart"></i>GRAPH REPORT</h6>
									<div class="inner-item">
										<div class="summary-chart">
											<canvas id="studentAttendenceLine"></canvas>
											<div class="chart-legends">
												<span class="red">ABSENT</span>
												<span class="orange">FAIL</span>
												<span class="green">PASS</span>
											</div>
											<div class="chart-title">
												<h6 class="bottom-title">STUDENT PERFORMANCE REPORT</h6>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="dash-item">
									<h6 class="item-title"><i class="fa fa-list"></i>TABLE REPORT</h6>
									<div class="inner-item">
										<div>
											<table id="attendenceDetailedTable" class="display responsive nowrap" cellspacing="0" width="100%">
												<thead>
													<tr>
														<th><i class="fa fa-puzzle-piece"></i>ROLL #</th>
														<th><i class="fa fa-cogs"></i>TYPE</th>
														<th><i class="fa fa-exclamation"></i>MARKS</th>
														<th><i class="fa fa-check"></i>STATUS</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>PTH05A01</td>
														<td>MTE</td>
														<td>45</td>
														<td>PASS</td>
													</tr>
													<tr>
														<td>PTH05A012</td>
														<td>MTE</td>
														<td>45</td>
														<td>PASS</td>
													</tr>
													<tr>
														<td>PTH05A03</td>
														<td>MTE</td>
														<td>45</td>
														<td>PASS</td>
													</tr>
													<tr>
														<td>PTH05A04</td>
														<td>MTE</td>
														<td>25</td>
														<td>FAIL</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
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