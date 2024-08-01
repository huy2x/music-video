<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Nhạc suyyyyy</title>
<%@ include file="/common/head.jsp"%>

<!--

TemplateMo 552 Video Catalog

https://templatemo.com/tm-552-video-catalog

-->
</head>

<body>
	<%@ include file="/common/header.jsp"%>

	<div class="container-fluid">
		<div id="content" class="mx-auto tm-content-container">
			<main>
				<div class="row">
					<div class="col-12">
						<h2 class="tm-page-title mb-4">List Video</h2>
						<div class="tm-categories-container mb-5">
							<h3 class="tm-text-primary tm-categories-text">Categories:</h3>
							<ul class="nav tm-category-list">
								<li class="nav-item tm-category-item"><a href="#"
									class="nav-link tm-category-link active">All</a></li>
								<li class="nav-item tm-category-item"><a href="#"
									class="nav-link tm-category-link">Drone Shots</a></li>
								<li class="nav-item tm-category-item"><a href="#"
									class="nav-link tm-category-link">Nature</a></li>
								<li class="nav-item tm-category-item"><a href="#"
									class="nav-link tm-category-link">Actions</a></li>
								<li class="nav-item tm-category-item"><a href="#"
									class="nav-link tm-category-link">Featured</a></li>
							</ul>
						</div>
					</div>
				</div>

				<div class="row tm-catalog-item-list">
					<div class="col-lg-4 col-md-6 col-sm-12 tm-catalog-item">
						<div class="position-relative tm-thumbnail-container">
							<img src="teamplates/user/img/tn-01.jpg" alt="Image"
								class="img-fluid tm-catalog-item-img"> <a
								href="video-page.html" class="position-absolute tm-img-overlay">
								<i class="fas fa-play tm-overlay-icon"></i>
							</a>
						</div>
						<div class="p-4 tm-bg-gray tm-catalog-item-description">
							<h3 class="tm-text-primary mb-3 tm-catalog-item-title">Aenean
								aliquet sapien</h3>
							<p class="tm-catalog-item-text">
								Video thumbnail has a link to another HTML page. Categories <span
									class="tm-text-secondary">do not need</span> any JS. They are
								just separated HTML pages. Paging is at the bottom to extend the
								list as long as you want. This can be a large catalog.
							</p>
						</div>
					</div>
					<div class="col-lg-4 col-md-6 col-sm-12 tm-catalog-item">
						<div class="position-relative tm-thumbnail-container">
							<img src="teamplates/user/img/tn-02.jpg" alt="Image"
								class="img-fluid tm-catalog-item-img"> <a
								href="video-page.html" class="position-absolute tm-img-overlay">
								<i class="fas fa-play tm-overlay-icon"></i>
							</a>
						</div>
						<div class="p-4 tm-bg-gray tm-catalog-item-description">
							<h3 class="tm-text-primary mb-3 tm-catalog-item-title">Mauris
								in odio vel odio</h3>
							<p class="tm-catalog-item-text">
								You may need TemplateMo for a quick chat or send an email if you
								have any question about this CSS template. <span
									class="tm-text-secondary">font-family: 'Source Sans
									Pro', sans-serif; for this template.</span>
							</p>
						</div>
					</div>
					

				<!-- Catalog Paging Buttons -->
				<div>
					<ul class="nav tm-paging-links">
						<li class="nav-item active"><a href="#"
							class="nav-link tm-paging-link">1</a></li>
						<li class="nav-item"><a href="#"
							class="nav-link tm-paging-link">2</a></li>
						<li class="nav-item"><a href="#"
							class="nav-link tm-paging-link">3</a></li>
						<li class="nav-item"><a href="#"
							class="nav-link tm-paging-link">4</a></li>
						<li class="nav-item"><a href="#"
							class="nav-link tm-paging-link">></a></li>
					</ul>
				</div>
			</main>

			<!-- Subscribe form and footer links -->
		<%@ include file="/common/footer.jsp" %>
</body>

</html>