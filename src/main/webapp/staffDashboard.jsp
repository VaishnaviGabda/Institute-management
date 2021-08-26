<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>

        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="author" content="">
        <title>staff Dashboard</title>

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
								<a href="staff-profile.jsp"><i class="fa fa-users"></i>USER PROFILE</a>
							</li>
							<li>
								<a href="staff-change-pass.jsp"><i class="fa fa-key"></i> CHANGE PASSWORD</a>
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
						<a href="staffDashboard.jsp"><i class="fa fa-home menu-icon"></i> HOME</a>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<i class="fa fa-users menu-icon"></i> STUDENTS <span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li>							
								<a href="staff-add-student.jsp"><i class="fa fa-caret-right"></i>ADD</a>
							</li>
							<li>
								<a href="staff-student-list.jsp"><i class="fa fa-caret-right"></i>ALL STUDENT  </a>
							</li>
						</ul>
						<div class="clearfix"></div>
					</li>
					<li class="dropdown">
						<a href="staff-add-class.jsp"><i class="fa fa-graduation-cap menu-icon"></i> COURSES 	</a>
						<div class="clearfix"></div>
					</li>
					<li class="dropdown">
						<a href="staff-add-subject.jsp"><i class="fa fa-book menu-icon"></i> EXAMINATION </a>
						<div class="clearfix"></div>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<i class="fa fa-user-secret menu-icon"></i> QUESTION BANK <span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li>							
								<a href="staff-add-question.jsp"><i class="fa fa-caret-right"></i>ADD</a>
							</li>
							<li>
								<a href="staff-all-questions.jsp"><i class="fa fa-caret-right"></i>ALL QUESSTIONS</a>
							</li>
						</ul>
						<div class="clearfix"></div>
					</li>
					<li class="dropdown">
						<a href="staff-marks-report.jsp"><i class="fa fa-address-card menu-icon"></i> REPORTS </a>
						<div class="clearfix"></div>
					</li>
				</ul>
			</div>
			
			<!-- MAIN CONTENT -->
			<div class="main-content" id="content-wrapper">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12 clear-padding-xs">
							<h5 class="page-title"><i class="fa fa-home"></i>staff Dashboard</h5>
							<div class="section-divider"></div>
							<div class="dashboard-stats">
								<div class="col-sm-6 col-md-4">
									<div class="stat-item">
										<div class="stats">
											<div class="col-xs-8 count">
												<h1>199</h1>
												<p>STUDENTS</p>
											</div>
											<div class="col-xs-4 icon">
												<i class="fa fa-users ex-icon"></i>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="status">
											<p class="text-ex"><i class="fa fa-pencil-square-o"></i>10 Registrations Pending</p>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
								<div class="clearfix visible-sm"></div>
								<div class="col-sm-6 col-md-4">
									<div class="stat-item">
										<div class="stats">
											<div class="col-xs-8 count">
												<h1>900</h1>
												<p>EXAMINATIONS</p>
											</div>
											<div class="col-xs-4 icon">
												<i class="fa fa-flag look-icon"></i>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="status">
											<p class="text-look"><i class="fa fa-clock-o"></i>1 Exam tomorrow</p>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
								<div class="col-sm-6 col-md-4">
									<div class="stat-item">
										<div class="stats">
											<div class="col-xs-8 count">
												<h1>799</h1>
												<p>RESULTS</p>
											</div>
											<div class="col-xs-4 icon">
												<i class="fa fa-envelope-o success-icon"></i>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="status">
											<p class="text-success"><i class="fa fa-folder-open-o"></i>10 Results Pending</p>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12 clear-padding-xs">
							<div class="col-sm-8">
								<div>
									<div class="my-msg dash-item">
										<h6 class="item-title"><i class="fa fa-bar-chart"></i>STUDENT ATTENDENCE TREND</h6>
										<div class="inner-item">
											<div class="summary-chart">
												<canvas id="studentAttendenceLine" height="100px"></canvas>
												<div class="chart-legends">
													<span class="red">ABSENT</span>
													<span class="orange">ON LEAVE</span>
													<span class="green">PRESENT</span>
												</div>
												<div class="chart-title">
													<h6 class="bottom-title">STUDENT ATTENDENCE TREND</h6>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-4">
								<div>
									<div class="my-msg dash-item">
										<h6 class="item-title"><i class="fa fa-calendar"></i>TODAY'S TASK</h6>
										<div class="inner-item">
											<div class="timetable-item">
												<div class="col-xs-3 clear-padding">
													<p><span class="time">10 AM</span></p>
												</div>
												<div class="col-xs-9">
													<p class="title">Teacher Meeting</p>
													<p class="sent-by"><i class="fa fa-map-marker"></i> ROOM NO - 601</p>
												</div>
												<div class="clearfix"></div>
											</div>
											<div class="timetable-item">
												<div class="col-xs-3 clear-padding">
													<p><span class="time">11 AM</span></p>
												</div>
												<div class="col-xs-9">
													<p class="title">Campus Tour</p>
													<p class="sent-by"><i class="fa fa-map-marker"></i> CAMPUS</p>
													
												</div>
												<div class="clearfix"></div>
											</div>
											<div class="timetable-item">
												<div class="col-xs-3 clear-padding">
													<p><span class="time">12 PM</span></p>
												</div>
												<div class="col-xs-9">
													<p class="title">Parent Meeting</p>
													<p class="sent-by"><i class="fa fa-map-marker"></i> ROOM NO - 601</p>
													
												</div>
												<div class="clearfix"></div>
											</div>
											<div class="timetable-item">
												<div class="col-xs-3 clear-padding">
													<p><span class="time">01 PM</span></p>
												</div>
												<div class="col-xs-9">
													<p class="title">Guest Lecture</p>
													<p class="sent-by"><i class="fa fa-map-marker"></i> ROOM NO - 601</p>
													
												</div>
												<div class="clearfix"></div>
											</div>
											<div class="timetable-item">
												<div class="col-xs-3 clear-padding">
													<p><span class="time">02 PM</span></p>
												</div>
												<div class="col-xs-9">
													<p class="title">Teacher Meeting</p>
													<p class="sent-by"><i class="fa fa-map-marker"></i> ROOM NO - 601</p>
												</div>
												<div class="clearfix"></div>
											</div>
											
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12 clear-padding-xs">
							<div class="col-sm-8">
								<div>
									<div class="my-msg dash-item">
										<h6 class="item-title"><i class="fa fa-bar-chart"></i>TODAY'S STUDENT ATTENDENCE</h6>
										<div class="inner-item">
											<div class="summary-chart">
												<canvas id="studentAttendenceBar" height="100px"></canvas>
												<div class="chart-legends">
													<span class="red">ABSENT</span>
													<span class="orange">ON LEAVE</span>
													<span class="green">PRESENT</span>
												</div>
												<div class="chart-title">
													<h6 class="bottom-title">STUDENT ATTENDENCE BAR</h6>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<div>
									<div class="my-msg dash-item">
										<h6 class="item-title"><i class="fa fa-pie-chart"></i>TEACHER ATTENDENCE</h6>
										<div class="chart-item">
											<canvas id="studentPie" height = 250px></canvas>
											<div class="chart-legends">
												<span class="red">ABSENT</span>
												<span class="orange">PRESENT</span>
												<span class="green">LEAVE</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12 clear-padding-xs">
							<div class="col-md-12">
								<div class="my-msg dash-item">
									<h6 class="item-title"><i class="fa fa-bullhorn"></i>ANNOUNCEMENTS</h6>
									<div class="inner-item dashboard-tabs">
										<ul class="nav nav-tabs">
											<li class="active">
												<a  href="#1" data-toggle="tab"><i class="fa fa-graduation-cap"></i><span>ACADEMICS</span></a>
											</li>
											<li>								
												<a href="#2" data-toggle="tab"><i class="fa fa-users"></i><span>ADMISSIONS</span></a>
											</li>
											<li>								
												<a href="#3" data-toggle="tab"><i class="fa fa-trophy"></i><span>SPORTS</span></a>
											</li>
										</ul>
										<div class="tab-content">
											<div class="tab-pane active" id="1">
												<div class="announcement-item">
													<h5>Guest lecture on fine arts by Smith.<span class="new">New</span></h5>
													<h6><i class="fa fa-clock-o"></i>06-24-2017, 13:34</h6>
													<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
													<div class="posted-by">
														<p>Thanks,</p>
														<h6>John Doe, Principal</h6>
													</div>
												</div>
												<div class="announcement-item">
													<h5>Guest lecture on fine arts by Smith</h5>
													<h6><i class="fa fa-clock-o"></i>06-24-2017, 13:34</h6>
													<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
													<div class="posted-by">
														<p>Thanks,</p>
														<h6>John Doe, Principal</h6>
													</div>
												</div>
											</div>
											<div class="tab-pane" id="2">
												<div class="announcement-item">
													<h5>2</h5>
												</div>
											</div>
											<div class="tab-pane" id="3">
												<div class="announcement-item">
													<h5>3</h5>
												</div>
											</div>
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