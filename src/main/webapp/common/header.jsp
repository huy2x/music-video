<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<body>
	<div class="tm-page-wrap mx-auto">
		<div class="position-relative">
			<div class="position-absolute tm-site-header">
				<div class="container-fluid position-relative">
					<div class="row">
						<div class="col-7 col-md-4">
							<a href="index"
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

											<!-- Hiển thị nút Register nếu chưa đăng nhập -->
										
												<ul class="navbar-nav ml-auto mb-2 mb-lg-0">
													<c:choose>
														<c:when test="${not empty sessionScope.currentUser}">
															<li class="nav-item"><a
																class="nav-link nav-link-1 active" aria-current="page"
																href="index">Home</a></li>
															<li class="nav-item"><a class="nav-link nav-link-1"
																href="favorites">My Favorites</a></li>
															<li class="nav-item"><a class="nav-link nav-link-2"
																href="history">History</a></li>
															<li class="nav-item"><a class="nav-link nav-link-3"
																href="logout">Log out</a></li>
														</c:when>
														<c:otherwise>
															<li class="nav-item"><a class="nav-link nav-link-2"
																href="videos">Videos</a></li>
															<li class="nav-item"><a class="nav-link nav-link-3"
																href="register">Register</a></li>
															<li class="nav-item"><a class="nav-link nav-link-4"
																href="login">Login</a></li>
															<li class="nav-item"><a class="nav-link nav-link-5"
																href="forgot-password">Forgot password</a></li>
														</c:otherwise>
													</c:choose>
												</ul>
											
									</div>
									</li>
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
				<source src="teamplates/user/video/wheat-field.mp4" type="video/mp4">
			</video>
		</div>

		<i id="tm-video-control-button" class="fas fa-pause"></i>
	</div>