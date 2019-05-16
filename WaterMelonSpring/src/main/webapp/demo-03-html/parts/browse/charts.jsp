<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="site-content">
		<div id="site-content-inner">

			<div class="master-container-fluid">
				<div class="row">
					<div class="col-md-9 order-md-2 flex-column-content-md">
						<main id="main" class="fluid-reverse-r">
						<div class="title-box">
							<h6 class="sub-title inactive-color">Latest</h6>
							<h2 class="title h3-md">Hot Songs</h2>
						</div>


						<div class="adonis-carousel music-img-box-cont-sm adonis-animate"
							data-animation="slideUp" data-animation-item=".item"
							data-auto-width="yes" data-loop="no" data-dots="yes"
							data-responsive-width="0:80%|400:1350"
					>

							<div class="gutter-30">
								<div class="owl-carousel owl-theme-adonis">
							
									
									
									<div class="item">
										<c:forEach var="article" items="${article}" begin="1" end="7">
											<div
												class="img-box-horizontal music-img-box h-g-bg h-d-shadow">
												<div class="img-box img-box-sm box-rounded-sm">
													<img src="${article.a_imgDir}" alt="">
												</div>
												<div class="des">
													<h6 class="title">
														<a href="#">${article.musicName}</a>
													</h6>
													<p class="sub-title">
														<a href="#">${article.artistName}</a>
													</p>
												</div>
												<div
													class="hover-state d-flex justify-content-between align-items-center">
													<span class="pointer play-btn-dark box-rounded-sm"><i
														class="play-icon"></i></span>
													<div class="d-flex align-items-center">
														<span class="adonis-icon text-light pointer mr-2 icon-2x"><svg
																xmlns="http://www.w3.org/2000/svg" version="1.1">
																<use xlink:href="#icon-heart-blank"></use></svg></span> <span
															class="pointer dropdown-menu-toggle"><span
															class="icon-dot-nav-horizontal text-light"></span></span>
													</div>
												</div>
											</div>
										</c:forEach>
									</div>
									
								<div class="item">
										<c:forEach var="article" items="${article}" begin="8" end="14">
											<div
												class="img-box-horizontal music-img-box h-g-bg h-d-shadow">
												<div class="img-box img-box-sm box-rounded-sm">
													<img src="${article.a_imgDir}" alt="">
												</div>
												<div class="des">
													<h6 class="title">
														<a href="#">${article.musicName}</a>
													</h6>
													<p class="sub-title">
														<a href="#">${article.artistName}</a>
													</p>
												</div>
												<div
													class="hover-state d-flex justify-content-between align-items-center">
													<span class="pointer play-btn-dark box-rounded-sm"><i
														class="play-icon"></i></span>
													<div class="d-flex align-items-center">
														<span class="adonis-icon text-light pointer mr-2 icon-2x"><svg
																xmlns="http://www.w3.org/2000/svg" version="1.1">
																<use xlink:href="#icon-heart-blank"></use></svg></span> <span
															class="pointer dropdown-menu-toggle"><span
															class="icon-dot-nav-horizontal text-light"></span></span>
													</div>
												</div>
											</div>
										</c:forEach>
									</div>
									
									
									<div class="item">
										<c:forEach var="article" items="${article}" begin="15" end="21">
											<div
												class="img-box-horizontal music-img-box h-g-bg h-d-shadow">
												<div class="img-box img-box-sm box-rounded-sm">
													<img src="${article.a_imgDir}" alt="">
												</div>
												<div class="des">
													<h6 class="title">
														<a href="#">${article.musicName}</a>
													</h6>
													<p class="sub-title">
														<a href="#">${article.artistName}</a>
													</p>
												</div>
												<div
													class="hover-state d-flex justify-content-between align-items-center">
													<span class="pointer play-btn-dark box-rounded-sm"><i
														class="play-icon"></i></span>
													<div class="d-flex align-items-center">
														<span class="adonis-icon text-light pointer mr-2 icon-2x"><svg
																xmlns="http://www.w3.org/2000/svg" version="1.1">
																<use xlink:href="#icon-heart-blank"></use></svg></span> <span
															class="pointer dropdown-menu-toggle"><span
															class="icon-dot-nav-horizontal text-light"></span></span>
													</div>
												</div>
											</div>
										</c:forEach>
									</div>
									
									
									<div class="item">
										<c:forEach var="article" items="${article}" begin="22" end="28">
											<div
												class="img-box-horizontal music-img-box h-g-bg h-d-shadow">
												<div class="img-box img-box-sm box-rounded-sm">
													<img src="${article.a_imgDir}" alt="">
												</div>
												<div class="des">
													<h6 class="title">
														<a href="#">${article.musicName}</a>
													</h6>
													<p class="sub-title">
														<a href="#">${article.artistName}</a>
													</p>
												</div>
												<div
													class="hover-state d-flex justify-content-between align-items-center">
													<span class="pointer play-btn-dark box-rounded-sm"><i
														class="play-icon"></i></span>
													<div class="d-flex align-items-center">
														<span class="adonis-icon text-light pointer mr-2 icon-2x"><svg
																xmlns="http://www.w3.org/2000/svg" version="1.1">
																<use xlink:href="#icon-heart-blank"></use></svg></span> <span
															class="pointer dropdown-menu-toggle"><span
															class="icon-dot-nav-horizontal text-light"></span></span>
													</div>
												</div>
											</div>
										</c:forEach>
									</div>
									
									<div class="item">
										<c:forEach var="article" items="${article}" begin="29" end="35">
											<div
												class="img-box-horizontal music-img-box h-g-bg h-d-shadow">
												<div class="img-box img-box-sm box-rounded-sm">
													<img src="${article.a_imgDir}" alt="">
												</div>
												<div class="des">
													<h6 class="title">
														<a href="#">${article.musicName}</a>
													</h6>
													<p class="sub-title">
														<a href="#">${article.artistName}</a>
													</p>
												</div>
												<div
													class="hover-state d-flex justify-content-between align-items-center">
													<span class="pointer play-btn-dark box-rounded-sm"><i
														class="play-icon"></i></span>
													<div class="d-flex align-items-center">
														<span class="adonis-icon text-light pointer mr-2 icon-2x"><svg
																xmlns="http://www.w3.org/2000/svg" version="1.1">
																<use xlink:href="#icon-heart-blank"></use></svg></span> <span
															class="pointer dropdown-menu-toggle"><span
															class="icon-dot-nav-horizontal text-light"></span></span>
													</div>
												</div>
											</div>
										</c:forEach>
									</div>
									
									
								</div>
							</div>
						</div>
						<div class="pt-e-20 pt-e-lg-40"></div>
						</main>
					</div>
				</div>
			</div>

		</div>
		<!--/#site-content-inner-->
		<div class="section-loader preloader negative-overlay">
			<div class="preloader-overlay"></div>
		</div>
	</div>
	<!--/#site-content-->



</body>
</html>