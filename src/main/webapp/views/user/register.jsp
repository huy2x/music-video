<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Register</title>
<%@ include file="/common/head.jsp"%>


<!--

TemplateMo 552 Video Catalog

https://templatemo.c	om/tm-552-video-catalog

-->
</head>

<body>
	<%@ include file="/common/header.jsp"%>

	<div class="container-fluid px-0">
		<div class="mx-auto tm-content-container">
			<div class="row mt-3 mb-5 pb-3">
				<div class="col-lg-12 col-12 mb-5">
					<div class="mx-auto tm-about-text-container px-3">
						<center>
							<h2 class="tm-page-title mb-4 tm-text-primary">Register</h2>
							<center>
					</div>
				</div>
			</div>
			<div class="mx-auto pb-3 tm-about-text-container px-3">
				<div class="row">
					<div class="col-lg-12 col-12 mb-5">
						<form id="register-form" action="register" method="POST"
							class="tm-contact-form">
							<div class="form-group">
								<input type="username" name="username"
									class="form-control rounded-0" placeholder="Username"
									required="" />
							</div>
							<div class="form-group">
								<input type="password" name="password"
									class="form-control rounded-0" placeholder="Password"
									required="" />
							</div>
							<div class="form-group">
								<input type="password" name="cfmPass"
									class="form-control rounded-0" placeholder="Comform Password"
									required="" />
							</div>
							<div class="form-group">
								<input type="email" name="email"
									class="form-control rounded-0" placeholder="Email"
									required="" />
							</div>


							<div class="form-group">
								<center>
									<button type="submit"
										class="btn btn-primary tm-btn-animate tm-btn-submit tm-icon-submit">
										<span>Submit</span>
									</button>
								</center>
							</div>
						</form>
					</div>

				</div>
			</div>
		</div>



	</div>
	<!-- Subscribe form and footer links -->
	<%@ include file="/common/footer.jsp"%>

</body>

</html>