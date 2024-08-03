<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<body>
	<div class="tm-page-wrap mx-auto">
		<div class="position-relative">
			<div class="position-absolute tm-site-header">
				<div class="container-fluid position-relative">
					<div class="row">
						<div class="col-7 col-md-4">
							<a href="index.html"
								class="tm-bg-black text-center tm-logo-container"> <i
								class="fas fa-video tm-site-logo mb-3"></i>
								<h1 class="tm-site-name">Video nhạc</h1>
							</a>
						</div>
						<div class="col-5 col-md-8 ml-auto mr-0">
							<div class="tm-site-nav">
								<nav class="navbar navbar-expand-lg mr-0 ml-auto"
									id="tm-main-nav">
									<button
										class="navbar-toggler tm-bg-black py-2 px-3 mr-0 ml-auto collapsed"
										type="button" data-toggle="collapse" data-target="#navbar-nav"
										aria-controls="navbar-nav" aria-expanded="false"
										aria-label="Toggle navigation">
										<span> <i class="fas fa-bars tm-menu-closed-icon"></i>
											<i class="fas fa-times tm-menu-opened-icon"></i>
										</span>
									</button>
									<div class="collapse navbar-collapse tm-nav" id="navbar-nav">
										<ul class="navbar-nav text-uppercase">
											<li class="nav-item active"><a
												class="nav-link tm-nav-link" href="#">Videos <span
													class="sr-only">(current)</span></a></li>
											<li class="nav-item"><a class="nav-link tm-nav-link"
												href="about.html">Register</a></li>
											<li class="nav-item dropdown"><a
												class="nav-link tm-nav-link dropdown-toggle" href="#"
												id="userDropdown" role="button" data-toggle="dropdown"
												aria-haspopup="true" aria-expanded="false"> User Menu </a>
												<div class="dropdown-menu" aria-labelledby="userDropdown">
													<a class="dropdown-item" href="login.html">Login</a> <a
														class="dropdown-item" href="forgot-password.html">Forgot
														Password</a> <a class="dropdown-item" href="favorites.html">My
														Favorites</a> <a class="dropdown-item" href="history.html">History</a>
													<a class="dropdown-item" href="logout.html">Log out</a>
												</div></li>
										</ul>
									</div>

								</nav>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="tm-welcome-container text-center text-white">
				<div class="tm-welcome-container-inner">
					<p class="tm-welcome-text mb-1 text-white">Video Catalog is
						brought to you by TemplateMo.</p>
					<p class="tm-welcome-text mb-5 text-white">This is a full-width
						video banner.</p>
					<a href="#content"
						class="btn tm-btn-animate tm-btn-cta tm-icon-down"> <span>Discover</span>
					</a>
				</div>
			</div>

			<div id="tm-video-container">
				<video autoplay muted loop id="tm-video">
					<!-- <source src="video/sunset-timelapse-video.mp4" type="video/mp4"> -->
					<source src="teamplates/user/video/wheat-field.mp4"
						type="video/mp4">
				</video>
			</div>

			<i id="tm-video-control-button" class="fas fa-pause"></i>
		</div>