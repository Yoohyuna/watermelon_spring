<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%
	String albumName = (String) request.getAttribute("albumName");
	System.out.println(albumName + "앨범이름");
	String a_content = (String) request.getAttribute("a_content");
	String a_imgDir = (String) request.getAttribute("a_imgDir");
	int albumID = (Integer) request.getAttribute("albumID");
	//System.out.println("a_content="+a_content);
%>


<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Adonis Demo-03 | Single Playlist</title>

<link rel="apple-touch-icon" sizes="180x180"
	href="/WaterMelon/assets/icon/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="/WaterMelon/assets/icon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="/WaterMelon/assets/icon/favicon-16x16.png">
<link rel="manifest" href="/WaterMelon/assets/icon/site.webmanifest">

<!-- Bootstrap core CSS -->
<link href="/WaterMelon/assets/vendors/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,700"
	rel="stylesheet">
<link href="/WaterMelon/assets/vendors/owl/css/owl.carousel.min.css"
	rel="stylesheet">
<link
	href="/WaterMelon/assets/vendors/perfect-scrollbar/css/perfect-scrollbar.css"
	rel="stylesheet">
<link href="/WaterMelon/assets/css/adonis.css" rel="stylesheet">

</head>
<div id="wrap" class="main-wrap">

	<div id="site-header">
		<div id="primary-menu-offcanvas"
			class="off-canvas off-canvas-left d-flex flex-column">
			<div class="m-2">
				<a class="close-offcanvas-main-menu" href="#"
					data-target="#primary-menu-offcanvas"> <span
					class="adonis-icon icon-5x"><svg version="1.1"
							xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
							<path
								d="M13.4 12l5.3-5.3c0.4-0.4 0.4-1 0-1.4s-1-0.4-1.4 0l-5.3 5.3-5.3-5.3c-0.4-0.4-1-0.4-1.4 0s-0.4 1 0 1.4l5.3 5.3-5.3 5.3c-0.4 0.4-0.4 1 0 1.4 0.2 0.2 0.4 0.3 0.7 0.3s0.5-0.1 0.7-0.3l5.3-5.3 5.3 5.3c0.2 0.2 0.5 0.3 0.7 0.3s0.5-0.1 0.7-0.3c0.4-0.4 0.4-1 0-1.4l-5.3-5.3z"></path></svg></span>
				</a>
			</div>
			<div
				class="side-nav-container d-flex flex-column align-items-center ml-auto mr-auto position-relative">
				<ul class="side-nav adonis-effect" data-animation="menuTwo"
					id="site-side-nav" data-level="1" data-animation-item="> li > a">
					<li class="nav-item"><a class="nav-link" href="home.html">Home</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="radio.html">Radio</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="library.html">Library</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="news.html">News</a>
					</li>
					<li class="nav-item has-dropdown"><a class="nav-link" href="#"
						data-level="2">Shop <span class="adonis-icon icon-sm"><svg
									xmlns="http://www.w3.org/2000/svg" version="1.1" height="10">
									<use xlink:href="#arrow-right" /></svg></span></a>
						<ul class="sub-level">
							<li><a href="#" class="go-back" data-level="1">Back</a></li>
							<li><a href="store.html">Main Shop</a></li>
							<li><a href="store-genre.html">Shop Genre</a></li>
							<li><a href="single-product.html">Single Shop Item</a></li>
						</ul></li>
					<li class="nav-item has-dropdown"><a class="nav-link" href="#"
						data-level="2">Browse <span class="adonis-icon icon-sm"><svg
									xmlns="http://www.w3.org/2000/svg" version="1.1" height="10">
									<use xlink:href="#arrow-right" /></svg></span></a>
						<ul class="sub-level">
							<li><a href="#" class="go-back" data-level="1">Back</a></li>
							<li><a href="all-albums.html">All Albums</a></li>
							<li><a href="single-album.html">Single Album</a></li>
							<li><a href="single-playlist.html">Single Playlist</a></li>
							<li><a href="single-artist.html">Single Artist</a></li>
						</ul></li>
					<li class="nav-item has-dropdown"><a class="nav-link" href="#"
						data-level="2">Genres <span class="adonis-icon icon-sm"><svg
									xmlns="http://www.w3.org/2000/svg" version="1.1" height="10">
									<use xlink:href="#arrow-right" /></svg></span></a>
						<ul class="sub-level">
							<li><a href="#" class="go-back" data-level="1">Back</a></li>
							<li><a href="genre-classical.html">Classical</a></li>
							<li><a href="genre-classical.html">Pop</a></li>
							<li><a href="genre-classical.html">Under Ground</a></li>
							<li><a href="genre-classical.html">Metal</a></li>
							<li><a href="genre-classical.html">Rock</a></li>
							<li><a href="genre-classical.html">Jazz</a></li>
							<li><a href="genre-classical.html">Country</a></li>
							<li><a href="genre-classical.html">World</a></li>
							<li><a href="genre-classical.html">All genres</a></li>
						</ul></li>
					<li class="nav-item has-dropdown"><a class="nav-link" href="#"
						data-level="2">Charts <span
							class="adonis-highlight-active fs-1">hot</span><span
							class="adonis-icon icon-sm"><svg
									xmlns="http://www.w3.org/2000/svg" version="1.1" height="10">
									<use xlink:href="#arrow-right" /></svg></span></a>
						<ul class="sub-level">
							<li><a href="#" class="go-back" data-level="1">Back</a></li>
							<li><a href="top-artists.html">Top Artists</a></li>
							<li><a href="weekly-top-ten.html">Weekly Top 10</a></li>
							<li><a href="weekly-top-ten.html">USA Top 10</a></li>
							<li><a href="hot-songs.html">Hot Songs</a></li>
						</ul></li>
					<li class="nav-item has-dropdown"><a class="nav-link" href="#"
						data-level="2">More<span class="adonis-icon icon-sm"><svg
									xmlns="http://www.w3.org/2000/svg" version="1.1" height="10">
									<use xlink:href="#arrow-right" /></svg></span></a>
						<ul class="sub-level">
							<li><a href="#" class="go-back" data-level="1">Back</a></li>
							<li><a href="#">About us</a></li>
							<li><a href="#">Help &amp; Support</a></li>
							<li><a href="#">Contact</a></li>
							<li><a href="#">Terms and Privacy</a></li>
							<li><a href="#">Artist Originals</a></li>
							<li><a href="#">Advertise</a></li>
						</ul></li>
				</ul>
			</div>
			<footer class="p-3">
				<div class="social-icons">
					<ul class="list-inline horizon-list fs-3">
						<li><a href="#"><span class="adonis-icon icon-1x"><svg
										version="1.1" xmlns="http://www.w3.org/2000/svg" height="15"
										viewBox="0 0 32 32">
										<path
											d="M19 6h5v-6h-5c-3.86 0-7 3.14-7 7v3h-4v6h4v16h6v-16h5l1-6h-6v-3c0-0.542 0.458-1 1-1z"></path></svg></span></a></li>
						<li><a href="#"><span class="adonis-icon icon-1x"><svg
										version="1.1" xmlns="http://www.w3.org/2000/svg" height="15"
										viewBox="0 0 32 32">
										<path
											d="M32 7.075c-1.175 0.525-2.444 0.875-3.769 1.031 1.356-0.813 2.394-2.1 2.887-3.631-1.269 0.75-2.675 1.3-4.169 1.594-1.2-1.275-2.906-2.069-4.794-2.069-3.625 0-6.563 2.938-6.563 6.563 0 0.512 0.056 1.012 0.169 1.494-5.456-0.275-10.294-2.888-13.531-6.862-0.563 0.969-0.887 2.1-0.887 3.3 0 2.275 1.156 4.287 2.919 5.463-1.075-0.031-2.087-0.331-2.975-0.819 0 0.025 0 0.056 0 0.081 0 3.181 2.263 5.838 5.269 6.437-0.55 0.15-1.131 0.231-1.731 0.231-0.425 0-0.831-0.044-1.237-0.119 0.838 2.606 3.263 4.506 6.131 4.563-2.25 1.762-5.075 2.813-8.156 2.813-0.531 0-1.050-0.031-1.569-0.094 2.913 1.869 6.362 2.95 10.069 2.95 12.075 0 18.681-10.006 18.681-18.681 0-0.287-0.006-0.569-0.019-0.85 1.281-0.919 2.394-2.075 3.275-3.394z"></path></svg></span></a></li>
						<li><a href="#"><span class="adonis-icon icon-1x"><svg
										version="1.1" xmlns="http://www.w3.org/2000/svg" height="15"
										viewBox="0 0 32 32">
										<path
											d="M16 0c-8.8 0-16 7.2-16 16s7.2 16 16 16 16-7.2 16-16-7.119-16-16-16zM23.363 23.119c-0.319 0.481-0.881 0.637-1.363 0.319-3.762-2.319-8.481-2.8-14.081-1.519-0.563 0.163-1.037-0.238-1.2-0.719-0.162-0.563 0.237-1.038 0.719-1.2 6.081-1.363 11.363-0.8 15.519 1.762 0.563 0.238 0.644 0.875 0.406 1.356zM25.281 18.719c-0.4 0.563-1.119 0.8-1.681 0.4-4.319-2.637-10.881-3.438-15.919-1.837-0.638 0.163-1.362-0.163-1.519-0.8-0.162-0.637 0.162-1.363 0.8-1.519 5.838-1.762 13.037-0.881 18 2.163 0.475 0.238 0.719 1.038 0.319 1.594zM25.438 14.238c-5.119-3.037-13.681-3.363-18.563-1.838-0.8 0.238-1.6-0.238-1.838-0.963-0.237-0.8 0.237-1.6 0.963-1.838 5.681-1.681 15.038-1.363 20.962 2.162 0.719 0.4 0.962 1.363 0.563 2.081-0.406 0.556-1.363 0.794-2.087 0.394z"></path></svg></span></a></li>
						<li><a href="#"><span class="adonis-icon icon-3x"><svg
										version="1.1" xmlns="http://www.w3.org/2000/svg" height="15"
										viewBox="0 0 39 32">
										<path
											d="M22.856 0h-6.856c-8.837 0-16 7.163-16 16s7.163 16 16 16v0h6.856c8.837 0 16-7.163 16-16s-7.163-16-16-16v0zM22.816 30.4h-6.776c-7.953 0-14.4-6.447-14.4-14.4v0 0c0-7.953 6.447-14.4 14.4-14.4v0h6.776c7.953 0 14.4 6.447 14.4 14.4v0 0c0 7.953-6.447 14.4-14.4 14.4v0zM26.64 16.496s0-0.064 0-0.096v-0.040l-0.104-0.112-0.12-0.112-9.728-5.6c-0.113-0.064-0.247-0.102-0.391-0.102-0.223 0-0.424 0.091-0.569 0.238l-0 0-0.072 0.088s-0.048 0.040-0.064 0.072 0 0 0 0.048c-0.068 0.112-0.109 0.247-0.112 0.391v11.129c0 0.442 0.358 0.8 0.8 0.8v0 0c0.166-0.006 0.318-0.062 0.442-0.154l-0.002 0.002 9.68-5.6 0.12-0.112c0.038-0.036 0.072-0.075 0.102-0.118l0.002-0.002s0 0 0 0 0-0.064 0-0.096c0.019-0.043 0.035-0.094 0.047-0.146l0.001-0.006c0.004-0.023 0.006-0.049 0.006-0.076s-0.002-0.053-0.006-0.079l0 0.003c0.004-0.023 0.006-0.049 0.006-0.076s-0.002-0.053-0.006-0.079l0 0.003c-0.006-0.062-0.017-0.119-0.034-0.174l0.002 0.006zM17.040 21.008v-8.416l7.264 4.208z"></path></svg></span></a></li>
						<li><a href="#"><span class="adonis-icon icon-1x"><svg
										version="1.1" xmlns="http://www.w3.org/2000/svg" height="15"
										viewBox="0 0 32 32">
										<path
											d="M16 2.881c4.275 0 4.781 0.019 6.462 0.094 1.563 0.069 2.406 0.331 2.969 0.55 0.744 0.288 1.281 0.638 1.837 1.194 0.563 0.563 0.906 1.094 1.2 1.838 0.219 0.563 0.481 1.412 0.55 2.969 0.075 1.688 0.094 2.194 0.094 6.463s-0.019 4.781-0.094 6.463c-0.069 1.563-0.331 2.406-0.55 2.969-0.288 0.744-0.637 1.281-1.194 1.837-0.563 0.563-1.094 0.906-1.837 1.2-0.563 0.219-1.413 0.481-2.969 0.55-1.688 0.075-2.194 0.094-6.463 0.094s-4.781-0.019-6.463-0.094c-1.563-0.069-2.406-0.331-2.969-0.55-0.744-0.288-1.281-0.637-1.838-1.194-0.563-0.563-0.906-1.094-1.2-1.837-0.219-0.563-0.481-1.413-0.55-2.969-0.075-1.688-0.094-2.194-0.094-6.463s0.019-4.781 0.094-6.463c0.069-1.563 0.331-2.406 0.55-2.969 0.288-0.744 0.638-1.281 1.194-1.838 0.563-0.563 1.094-0.906 1.838-1.2 0.563-0.219 1.412-0.481 2.969-0.55 1.681-0.075 2.188-0.094 6.463-0.094zM16 0c-4.344 0-4.887 0.019-6.594 0.094-1.7 0.075-2.869 0.35-3.881 0.744-1.056 0.412-1.95 0.956-2.837 1.85-0.894 0.888-1.438 1.781-1.85 2.831-0.394 1.019-0.669 2.181-0.744 3.881-0.075 1.713-0.094 2.256-0.094 6.6s0.019 4.887 0.094 6.594c0.075 1.7 0.35 2.869 0.744 3.881 0.413 1.056 0.956 1.95 1.85 2.837 0.887 0.887 1.781 1.438 2.831 1.844 1.019 0.394 2.181 0.669 3.881 0.744 1.706 0.075 2.25 0.094 6.594 0.094s4.888-0.019 6.594-0.094c1.7-0.075 2.869-0.35 3.881-0.744 1.050-0.406 1.944-0.956 2.831-1.844s1.438-1.781 1.844-2.831c0.394-1.019 0.669-2.181 0.744-3.881 0.075-1.706 0.094-2.25 0.094-6.594s-0.019-4.887-0.094-6.594c-0.075-1.7-0.35-2.869-0.744-3.881-0.394-1.063-0.938-1.956-1.831-2.844-0.887-0.887-1.781-1.438-2.831-1.844-1.019-0.394-2.181-0.669-3.881-0.744-1.712-0.081-2.256-0.1-6.6-0.1v0z"></path>
										<path
											d="M16 7.781c-4.537 0-8.219 3.681-8.219 8.219s3.681 8.219 8.219 8.219 8.219-3.681 8.219-8.219c0-4.537-3.681-8.219-8.219-8.219zM16 21.331c-2.944 0-5.331-2.387-5.331-5.331s2.387-5.331 5.331-5.331c2.944 0 5.331 2.387 5.331 5.331s-2.387 5.331-5.331 5.331z"></path>
										<path
											d="M26.462 7.456c0 1.060-0.859 1.919-1.919 1.919s-1.919-0.859-1.919-1.919c0-1.060 0.859-1.919 1.919-1.919s1.919 0.859 1.919 1.919z"></path></svg></span></a></li>
					</ul>
				</div>
				<div class="copyright">Copyright &copy; 2018 IconikTech. All
					rights reserved.</div>
			</footer>
		</div>
		<div class="site-header">
			<div
				class="master-container-fluid header-inner mb-3 mb-md-4 mt-3 absolute-header">
				<div class="row justify-content-between">
					<div class="col-auto col-xl-3 d-flex align-items-center pr-0">
						<div class="brand">
							<a class="brand d-flex align-items-center"
								href="/WaterMelon/demo-03-html/home.jsp"> <img
								src="/WaterMelon/logo.png"></img>
							</a>
						</div>
					</div>
					<div
						class="col-auto col-xl-3 d-flex justify-content-end justify-content-lg-end align-items-center order-xl-3 align-items-stretch pl-0">

					
					</div>
				</div>
			</div>
		</div>
	</div>
	<c:set var="album" value="${album}" />
	<div id="site-content">
		<div id="site-content-inner">
			<div class="album-cover-bg blur-bottom artist-bg-1"></div>
			<div class="master-container-fluid">
				<section class="album-top-content">
					<div class="album-spacer"></div>
					<div class="row">
						<div class="col-xl-3 flex-column-sidebar-xl album-poster">
							<div class="text-center text-md-left">
								<div class="album-image">
									<div class="music-img-box d-inline-block">
										<div class="img-box">
											<img class="retina box-rounded-md" src="<%=a_imgDir%>"
												data-2x="../assets/images/single/single-2@2x.jpg" alt="">
										</div>
										<!-- <div class="absolute-info">
											<a
												class="btn btn-60-60 btn-primary absolute-center adonis-album-button round-btn text-light"
												data-album-id="1" role="button" tabindex="0"> <span
												class="adonis-icon icon-play icon-2x"><svg
														xmlns="http://www.w3.org/2000/svg" version="1.1">
														<use xlink:href="#icon-brand-play"></use></svg></span> <span
												class="adonis-icon icon-pause icon-2x"><svg
														version="1.1" xmlns="http://www.w3.org/2000/svg"
														height="20" viewBox="0 0 29 32">
														<path
															d="M19.2 0h8c0.884 0 1.6 0.716 1.6 1.6v28.8c0 0.884-0.716 1.6-1.6 1.6h-8c-0.884 0-1.6-0.716-1.6-1.6v-28.8c0-0.884 0.716-1.6 1.6-1.6z"></path>
														<path
															d="M1.6 0h8c0.884 0 1.6 0.716 1.6 1.6v28.8c0 0.884-0.716 1.6-1.6 1.6h-8c-0.884 0-1.6-0.716-1.6-1.6v-28.8c0-0.884 0.716-1.6 1.6-1.6z"></path></svg></span>
											</a>
										</div> -->
									</div>
								</div>
								<div class="pb-4 d-inline-block">
									<span class="adonis-icon pr-2 icon-2x"><svg
											version="1.1" xmlns="http://www.w3.org/2000/svg"
											viewBox="0 0 37 32">
											<path
												d="M27.379 0c-3.478 0.417-6.509 2.067-8.695 4.492l-0.011 0.012c-2.204-2.428-5.231-4.075-8.638-4.498l-0.068-0.007c-6.232 0-9.966 3.641-9.966 9.756 0.377 3.717 2.096 6.973 4.658 9.327l0.011 0.010 13.001 12.534c0.225 0.231 0.539 0.374 0.886 0.374 0.009 0 0.017-0 0.026-0l-0.001 0c0.004 0 0.010 0 0.015 0 0.35 0 0.667-0.143 0.895-0.373l0-0 13.187-12.511c0-0.187 4.668-4.365 4.668-9.36 0-6.115-3.734-9.756-9.966-9.756zM30.763 17.179l-12.090 11.647-12.114-11.67c-2.066-1.882-3.481-4.446-3.89-7.334l-0.008-0.065c0-5.859 3.968-7.002 7.306-7.002s6.605 3.361 7.679 4.668c0.253 0.283 0.619 0.46 1.027 0.46s0.774-0.177 1.026-0.458l0.001-0.001c1.074-1.284 4.668-4.668 7.679-4.668s7.282 1.237 7.282 7.002c0 3.805-3.851 7.352-3.898 7.422z"></path></svg></span>
									<span class="pr-2">1256</span> <span
										class="adonis-icon pr-2 icon-1x"><svg version="1.1"
											xmlns="http://www.w3.org/2000/svg" viewBox="0 0 27 32">
											<path
												d="M2.594 0.275c-0.257-0.166-0.571-0.265-0.908-0.265-0.932 0-1.688 0.756-1.688 1.688 0 0.028 0.001 0.055 0.002 0.082l-0-0.004v13.246l16.702-6.219zM26.030 14.49l-4.184-2.541-21.846 8.102v10.154c-0.001 0.024-0.002 0.051-0.002 0.079 0 0.927 0.752 1.679 1.679 1.679 0.319 0 0.617-0.089 0.871-0.243l-0.007 0.004c1.501-0.888 22.21-13.433 23.489-14.214 0.52-0.316 0.863-0.88 0.863-1.524s-0.342-1.207-0.855-1.519l-0.008-0.004z"></path></svg></span>
									<span>125K</span>
								</div>
							</div>
						</div>
						<div class="col-xl-9 flex-column-content-xl">

							<h6 class="inactive-color">ALBUM</h6>
							<h1>${album.albumName}</h1>
							<p class="mb-2">
								By: <a href="#">Bradberry</a> Classical
							</p>

							<div class="separator mb-4 mt-4">
								<span class="separator-md"></span>
							</div>
							<p class="mb-2">14 Songs - 30 minutes</p>
							<p class="mb-2">Released on November 12, 2017</p>
							<div class="adonis-player-wrap bg-transparent mb-4"></div>
							<div class="about">
								<h4>About this album</h4>
								<p>${album.a_content}</p>

							</div>
						</div>

					</div>


					<div class="pb-4"></div>

				</section>
				<section class="album-bottom-content">
					<div class="row">
						<div class="col-md-9 order-md-2 flex-column-content-md">
							<main id="main">
							<ul class="adonis-album-list pb-5">
								<li>
									<div class="item-number h6 inactive-color">#</div>
									<div class="item-title h6 inactive-color">Song</div>
									<div class="item-genre h6 inactive-color">Genre</div>
									<div class="item-duration h6 inactive-color">Time</div>
									<div class="item-tools">
										<span class="adonis-icon h6 inactive-color icon-1x"><svg
												version="1.1" xmlns="http://www.w3.org/2000/svg"
												viewBox="0 0 37 32">
												<path
													d="M27.379 0c-3.478 0.417-6.509 2.067-8.695 4.492l-0.011 0.012c-2.204-2.428-5.231-4.075-8.638-4.498l-0.068-0.007c-6.232 0-9.966 3.641-9.966 9.756 0.377 3.717 2.096 6.973 4.658 9.327l0.011 0.010 13.001 12.534c0.225 0.231 0.539 0.374 0.886 0.374 0.009 0 0.017-0 0.026-0l-0.001 0c0.004 0 0.010 0 0.015 0 0.35 0 0.667-0.143 0.895-0.373l0-0 13.187-12.511c0-0.187 4.668-4.365 4.668-9.36 0-6.115-3.734-9.756-9.966-9.756zM30.763 17.179l-12.090 11.647-12.114-11.67c-2.066-1.882-3.481-4.446-3.89-7.334l-0.008-0.065c0-5.859 3.968-7.002 7.306-7.002s6.605 3.361 7.679 4.668c0.253 0.283 0.619 0.46 1.027 0.46s0.774-0.177 1.026-0.458l0.001-0.001c1.074-1.284 4.668-4.668 7.679-4.668s7.282 1.237 7.282 7.002c0 3.805-3.851 7.352-3.898 7.422z"></path></svg></span>
									</div>
								</li>

								<c:forEach var="article" items="${article}" varStatus="status">
									<li class="item hover-bg-item">
										<div class="item-number">
											<span class="hover-hide">${status.index+1}</span> <span
												class="hover-show adonis-icon"> <svg version="1.1"
													xmlns="http://www.w3.org/2000/svg" width="14"
													viewBox="0 0 27 32"> <path
														d="M2.594 0.275c-0.257-0.166-0.571-0.265-0.908-0.265-0.932 0-1.688 0.756-1.688 1.688 0 0.028 0.001 0.055 0.002 0.082l-0-0.004v13.246l16.702-6.219zM26.030 14.49l-4.184-2.541-21.846 8.102v10.154c-0.001 0.024-0.002 0.051-0.002 0.079 0 0.927 0.752 1.679 1.679 1.679 0.319 0 0.617-0.089 0.871-0.243l-0.007 0.004c1.501-0.888 22.21-13.433 23.489-14.214 0.52-0.316 0.863-0.88 0.863-1.524s-0.342-1.207-0.855-1.519l-0.008-0.004z"></path> </svg>
											</span>
										</div>
										<div class="item-title"><a href="#" onclick="location.href='/WaterMelon/single.water?t_ID=${article.t_ID}&albumID=${article.albumID}&artistID=${article.artistID}'">${article.musicName}</a></div>
										<div class="item-genre">${article.genreName}</div>
										<div class="item-duration">
											<span class="hover-hide">${article.time}</span>
										</div>
										<div class="item-tools">
											<div class="hover-show d-flex flex-nowrap hover-tools">
												<span class="adonis-icon icon-1x" style="cursor: pointer" onclick="location.href='/WaterMelon/listIdCheck.water?t_ID=${article.t_ID}&albumID=${albumID}'"><svg version="1.1"
														xmlns="http://www.w3.org/2000/svg" viewBox="0 0 37 32">
													<path
															d="M27.379 0c-3.478 0.417-6.509 2.067-8.695 4.492l-0.011 0.012c-2.204-2.428-5.231-4.075-8.638-4.498l-0.068-0.007c-6.232 0-9.966 3.641-9.966 9.756 0.377 3.717 2.096 6.973 4.658 9.327l0.011 0.010 13.001 12.534c0.225 0.231 0.539 0.374 0.886 0.374 0.009 0 0.017-0 0.026-0l-0.001 0c0.004 0 0.010 0 0.015 0 0.35 0 0.667-0.143 0.895-0.373l0-0 13.187-12.511c0-0.187 4.668-4.365 4.668-9.36 0-6.115-3.734-9.756-9.966-9.756zM30.763 17.179l-12.090 11.647-12.114-11.67c-2.066-1.882-3.481-4.446-3.89-7.334l-0.008-0.065c0-5.859 3.968-7.002 7.306-7.002s6.605 3.361 7.679 4.668c0.253 0.283 0.619 0.46 1.027 0.46s0.774-0.177 1.026-0.458l0.001-0.001c1.074-1.284 4.668-4.668 7.679-4.668s7.282 1.237 7.282 7.002c0 3.805-3.851 7.352-3.898 7.422z"></path></svg></span>
											</div>
										</div>
										<div class="hover-bg gradient-adonis"></div>
									</li>
								</c:forEach>


							</ul>
							</main>
						</div>
						<div class="col-md-3 order-md-1 flex-column-sidebar-md sidebar">

						</div>
					</div>
				</section>
			</div>
		</div>
		<!--/#site-content-inner-->
		<div class="section-loader preloader negative-overlay">
			<div class="preloader-overlay"></div>
		</div>
	</div>
	<!--/#site-content-->
	<div class="off-canvas-overlay"></div>
	<div class="preloader site-preloader">
		<div class="preloader-overlay"></div>
		<div class="position-absolute center-center">
			<span class="shadow"></span>
			<div class="icons">
				<span class="animate-loading"><span
					class="adonis-icon icon-5x"><svg
							xmlns="http://www.w3.org/2000/svg" version="1.1">
							<use xlink:href="#icon-brand-play-gradient"></use></svg></span></span><span
					class="adonis-icon icon-5x"><svg
						xmlns="http://www.w3.org/2000/svg" version="1.1">
						<use xlink:href="#icon-brand-play"></use></svg></span>
			</div>
		</div>
	</div>
</div>
<!-- /#wrap -->
<div id="search-box-4">
	<button id="btn-search-close" class="btn btn-blank btn--search-close"
		aria-label="Close search form">
		<span class="adonis-icon color-active"><svg id="icon-cross"
				viewBox="0 0 24 24" width="5vmin"> <path
					d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z"></path> </svg></span>
	</button>
	<div class="search-inner search-inner-up d-flex align-items-center">
		<div class="master-container-fluid d-flex align-items-center">
			<form class="search-form">
				<input class="search-input" name="search" type="search"
					placeholder="Start typing..." autocomplete="off" spellcheck="false">
			</form>
		</div>
	</div>
	<div class="search-inner search-inner-down dark-theme">
		<div class="master-container-fluid pt-3 pt-md-4 d-flex flex-column">
			<div class="navbar-expand mb-2 mb-md-4 scroll-x">
				<ul class="nav moving-border flex-nowrap" role="tablist">
					<li class="menu-item active"><a
						class="nav-link active m-item fs-7 pr-3 pl-0"
						id="search-tab-songs" data-toggle="tab"
						href="#search-content-songs" role="tab"
						aria-controls="search-content-songs" aria-selected="true">Songs</a>
					</li>
					<li class="menu-item"><a
						class="nav-link m-item fs-7 pr-3 pl-3" id="search-tab-albums"
						data-toggle="tab" href="#search-content-albums" role="tab"
						aria-controls="search-content-albums" aria-selected="true">Albums</a>
					</li>
					<li class="menu-item"><a
						class="nav-link m-item fs-7 pr-3 pl-3" id="search-tab-playlists"
						data-toggle="tab" href="#search-content-playlists" role="tab"
						aria-controls="search-content-playlists" aria-selected="true">Playlists</a>
					</li>
					<li class="menu-item"><a
						class="nav-link m-item fs-7 pr-3 pl-3" id="search-tab-artists"
						data-toggle="tab" href="#search-content-artists" role="tab"
						aria-controls="search-content-artists" aria-selected="true">Artists</a>
					</li>
				</ul>
				<hr class="border-hr">
			</div>
			<div class="tab-content scroll-y">
				<div class="tab-pane fade show active" id="search-content-songs"
					role="tabpanel" aria-labelledby="search-tab-songs">
					<div class="row auto-cols-row" data-item-width="330"
						data-item-max-width="630">
						<div class="col-auto">
							<div class="img-box-horizontal music-img-box h-g-bg">
								<div class="img-box img-box-sm box-rounded-sm">
									<img src="../assets/images/hot-song/hot-2.jpg" alt="">
								</div>
								<div class="des">
									<h6 class="title">
										<a href="#">Country girl shake it for me</a>
									</h6>
									<p class="sub-title">
										<a href="#">Bing Crosby</a>
									</p>
								</div>
								<div
									class="hover-state d-flex justify-content-between align-items-center">
									<span class="pointer play-btn-dark box-rounded-sm"><i
										class="play-icon"></i></span>
									<div class="d-flex align-items-center">
										<span class="adonis-icon text-light pointer mr-2 icon-2x"><svg
												xmlns="http://www.w3.org/2000/svg" version="1.1">
												<use xlink:href="#icon-heart-blank" /></svg></span> <span
											class="pointer dropdown-menu-toggle"><span
											class="icon-dot-nav-horizontal text-light"></span></span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-auto">
							<div class="img-box-horizontal music-img-box h-g-bg">
								<div class="img-box img-box-sm box-rounded-sm">
									<img src="../assets/images/hot-song/hot-1.jpg" alt="">
								</div>
								<div class="des">
									<h6 class="title">
										<a href="#">The Separation</a>
									</h6>
									<p class="sub-title">
										<a href="#">Rachel Platten</a>
									</p>
								</div>
								<div
									class="hover-state d-flex justify-content-between align-items-center">
									<span class="pointer play-btn-dark box-rounded-sm"><i
										class="play-icon"></i></span>
									<div class="d-flex align-items-center">
										<span class="adonis-icon text-light pointer mr-2 icon-2x"><svg
												xmlns="http://www.w3.org/2000/svg" version="1.1">
												<use xlink:href="#icon-heart-blank" /></svg></span> <span
											class="pointer dropdown-menu-toggle"><span
											class="icon-dot-nav-horizontal text-light"></span></span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-auto">
							<div class="img-box-horizontal music-img-box h-g-bg">
								<div class="img-box img-box-sm box-rounded-sm">
									<img src="../assets/images/hot-song/hot-3.jpg" alt="">
								</div>
								<div class="des">
									<h6 class="title">
										<a href="#">Stirring of a fool</a>
									</h6>
									<p class="sub-title">
										<a href="#">Rachel Platten</a>
									</p>
								</div>
								<div
									class="hover-state d-flex justify-content-between align-items-center">
									<span class="pointer play-btn-dark box-rounded-sm"><i
										class="play-icon"></i></span>
									<div class="d-flex align-items-center">
										<span class="adonis-icon text-light pointer mr-2 icon-2x"><svg
												xmlns="http://www.w3.org/2000/svg" version="1.1">
												<use xlink:href="#icon-heart-blank" /></svg></span> <span
											class="pointer dropdown-menu-toggle"><span
											class="icon-dot-nav-horizontal text-light"></span></span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-auto">
							<div class="img-box-horizontal music-img-box h-g-bg">
								<div class="img-box img-box-sm box-rounded-sm">
									<img src="../assets/images/hot-song/hot-4.jpg" alt="">
								</div>
								<div class="des">
									<h6 class="title">
										<a href="#">Nothings into Somethings</a>
									</h6>
									<p class="sub-title">
										<a href="#">Rachel Platten</a>
									</p>
								</div>
								<div
									class="hover-state d-flex justify-content-between align-items-center">
									<span class="pointer play-btn-dark box-rounded-sm"><i
										class="play-icon"></i></span>
									<div class="d-flex align-items-center">
										<span class="adonis-icon text-light pointer mr-2 icon-2x"><svg
												xmlns="http://www.w3.org/2000/svg" version="1.1">
												<use xlink:href="#icon-heart-blank" /></svg></span> <span
											class="pointer dropdown-menu-toggle"><span
											class="icon-dot-nav-horizontal text-light"></span></span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-auto">
							<div class="img-box-horizontal music-img-box h-g-bg">
								<div class="img-box img-box-sm box-rounded-sm">
									<img src="../assets/images/hot-song/hot-5.jpg" alt="">
								</div>
								<div class="des">
									<h6 class="title">
										<a href="#">Let You Down</a>
									</h6>
									<p class="sub-title">
										<a href="#">Rachel Platten</a>
									</p>
								</div>
								<div
									class="hover-state d-flex justify-content-between align-items-center">
									<span class="pointer play-btn-dark box-rounded-sm"><i
										class="play-icon"></i></span>
									<div class="d-flex align-items-center">
										<span class="adonis-icon text-light pointer mr-2 icon-2x"><svg
												xmlns="http://www.w3.org/2000/svg" version="1.1">
												<use xlink:href="#icon-heart-blank" /></svg></span> <span
											class="pointer dropdown-menu-toggle"><span
											class="icon-dot-nav-horizontal text-light"></span></span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-auto">
							<div class="img-box-horizontal music-img-box h-g-bg">
								<div class="img-box img-box-sm box-rounded-sm">
									<img src="../assets/images/hot-song/hot-6.jpg" alt="">
								</div>
								<div class="des">
									<h6 class="title">
										<a href="#">Nothings into Somethings</a>
									</h6>
									<p class="sub-title">
										<a href="#">Sam Hunt</a>
									</p>
								</div>
								<div
									class="hover-state d-flex justify-content-between align-items-center">
									<span class="pointer play-btn-dark box-rounded-sm"><i
										class="play-icon"></i></span>
									<div class="d-flex align-items-center">
										<span class="adonis-icon text-light pointer mr-2 icon-2x"><svg
												xmlns="http://www.w3.org/2000/svg" version="1.1">
												<use xlink:href="#icon-heart-blank" /></svg></span> <span
											class="pointer dropdown-menu-toggle"><span
											class="icon-dot-nav-horizontal text-light"></span></span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-auto">
							<div class="img-box-horizontal music-img-box h-g-bg">
								<div class="img-box img-box-sm box-rounded-sm">
									<img src="../assets/images/hot-song/hot-7.jpg" alt="">
								</div>
								<div class="des">
									<h6 class="title">
										<a href="#">O Come, All Ye Faithful</a>
									</h6>
									<p class="sub-title">
										<a href="#">Kesha</a>
									</p>
								</div>
								<div
									class="hover-state d-flex justify-content-between align-items-center">
									<span class="pointer play-btn-dark box-rounded-sm"><i
										class="play-icon"></i></span>
									<div class="d-flex align-items-center">
										<span class="adonis-icon text-light pointer mr-2 icon-2x"><svg
												xmlns="http://www.w3.org/2000/svg" version="1.1">
												<use xlink:href="#icon-heart-blank" /></svg></span> <span
											class="pointer dropdown-menu-toggle"><span
											class="icon-dot-nav-horizontal text-light"></span></span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-auto">
							<div class="img-box-horizontal music-img-box h-g-bg">
								<div class="img-box img-box-sm box-rounded-sm">
									<img src="../assets/images/hot-song/hot-8.jpg" alt="">
								</div>
								<div class="des">
									<h6 class="title">
										<a href="#">Fetty Wap Ft Monty</a>
									</h6>
									<p class="sub-title">
										<a href="#">Rachel Platten</a>
									</p>
								</div>
								<div
									class="hover-state d-flex justify-content-between align-items-center">
									<span class="pointer play-btn-dark box-rounded-sm"><i
										class="play-icon"></i></span>
									<div class="d-flex align-items-center">
										<span class="adonis-icon text-light pointer mr-2 icon-2x"><svg
												xmlns="http://www.w3.org/2000/svg" version="1.1">
												<use xlink:href="#icon-heart-blank" /></svg></span> <span
											class="pointer dropdown-menu-toggle"><span
											class="icon-dot-nav-horizontal text-light"></span></span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-auto">
							<div class="img-box-horizontal music-img-box h-g-bg">
								<div class="img-box img-box-sm box-rounded-sm">
									<img src="../assets/images/hot-song/hot-8.jpg" alt="">
								</div>
								<div class="des">
									<h6 class="title">
										<a href="#">Fetty Wap Ft Monty</a>
									</h6>
									<p class="sub-title">
										<a href="#">Rachel Platten</a>
									</p>
								</div>
								<div
									class="hover-state d-flex justify-content-between align-items-center">
									<span class="pointer play-btn-dark box-rounded-sm"><i
										class="play-icon"></i></span>
									<div class="d-flex align-items-center">
										<span class="adonis-icon text-light pointer mr-2 icon-2x"><svg
												xmlns="http://www.w3.org/2000/svg" version="1.1">
												<use xlink:href="#icon-heart-blank" /></svg></span> <span
											class="pointer dropdown-menu-toggle"><span
											class="icon-dot-nav-horizontal text-light"></span></span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-auto">
							<div class="img-box-horizontal music-img-box h-g-bg">
								<div class="img-box img-box-sm box-rounded-sm">
									<img src="../assets/images/hot-song/hot-9.jpg" alt="">
								</div>
								<div class="des">
									<h6 class="title">
										<a href="#">Do You Hear What I Hear</a>
									</h6>
									<p class="sub-title">
										<a href="#">Band Aid</a>
									</p>
								</div>
								<div
									class="hover-state d-flex justify-content-between align-items-center">
									<span class="pointer play-btn-dark box-rounded-sm"><i
										class="play-icon"></i></span>
									<div class="d-flex align-items-center">
										<span class="adonis-icon text-light pointer mr-2 icon-2x"><svg
												xmlns="http://www.w3.org/2000/svg" version="1.1">
												<use xlink:href="#icon-heart-blank" /></svg></span> <span
											class="pointer dropdown-menu-toggle"><span
											class="icon-dot-nav-horizontal text-light"></span></span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-auto">
							<div class="img-box-horizontal music-img-box h-g-bg">
								<div class="img-box img-box-sm box-rounded-sm">
									<img src="../assets/images/hot-song/hot-10.jpg" alt="">
								</div>
								<div class="des">
									<h6 class="title">
										<a href="#">Look What You Made Me Do</a>
									</h6>
									<p class="sub-title">
										<a href="#">Rachel Platten</a>
									</p>
								</div>
								<div
									class="hover-state d-flex justify-content-between align-items-center">
									<span class="pointer play-btn-dark box-rounded-sm"><i
										class="play-icon"></i></span>
									<div class="d-flex align-items-center">
										<span class="adonis-icon text-light pointer mr-2 icon-2x"><svg
												xmlns="http://www.w3.org/2000/svg" version="1.1">
												<use xlink:href="#icon-heart-blank" /></svg></span> <span
											class="pointer dropdown-menu-toggle"><span
											class="icon-dot-nav-horizontal text-light"></span></span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-auto">
							<div class="img-box-horizontal music-img-box h-g-bg">
								<div class="img-box img-box-sm box-rounded-sm">
									<img src="../assets/images/hot-song/hot-11.jpg" alt="">
								</div>
								<div class="des">
									<h6 class="title">
										<a href="#">Carol of the Bells</a>
									</h6>
									<p class="sub-title">
										<a href="#">Rachel Platten</a>
									</p>
								</div>
								<div
									class="hover-state d-flex justify-content-between align-items-center">
									<span class="pointer play-btn-dark box-rounded-sm"><i
										class="play-icon"></i></span>
									<div class="d-flex align-items-center">
										<span class="adonis-icon text-light pointer mr-2 icon-2x"><svg
												xmlns="http://www.w3.org/2000/svg" version="1.1">
												<use xlink:href="#icon-heart-blank" /></svg></span> <span
											class="pointer dropdown-menu-toggle"><span
											class="icon-dot-nav-horizontal text-light"></span></span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-auto">
							<div class="img-box-horizontal music-img-box h-g-bg">
								<div class="img-box img-box-sm box-rounded-sm">
									<img src="../assets/images/hot-song/hot-12.jpg" alt="">
								</div>
								<div class="des">
									<h6 class="title">
										<a href="#">Carol of the Bells</a>
									</h6>
									<p class="sub-title">
										<a href="#">Rachel Platten</a>
									</p>
								</div>
								<div
									class="hover-state d-flex justify-content-between align-items-center">
									<span class="pointer play-btn-dark box-rounded-sm"><i
										class="play-icon"></i></span>
									<div class="d-flex align-items-center">
										<span class="adonis-icon text-light pointer mr-2 icon-2x"><svg
												xmlns="http://www.w3.org/2000/svg" version="1.1">
												<use xlink:href="#icon-heart-blank" /></svg></span> <span
											class="pointer dropdown-menu-toggle"><span
											class="icon-dot-nav-horizontal text-light"></span></span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-auto">
							<div class="img-box-horizontal music-img-box h-g-bg">
								<div class="img-box img-box-sm box-rounded-sm">
									<img src="../assets/images/hot-song/hot-13.jpg" alt="">
								</div>
								<div class="des">
									<h6 class="title">
										<a href="#">You're A Mean One, Mr. Grinch</a>
									</h6>
									<p class="sub-title">
										<a href="#">Darius Rucker</a>
									</p>
								</div>
								<div
									class="hover-state d-flex justify-content-between align-items-center">
									<span class="pointer play-btn-dark box-rounded-sm"><i
										class="play-icon"></i></span>
									<div class="d-flex align-items-center">
										<span class="adonis-icon text-light pointer mr-2 icon-2x"><svg
												xmlns="http://www.w3.org/2000/svg" version="1.1">
												<use xlink:href="#icon-heart-blank" /></svg></span> <span
											class="pointer dropdown-menu-toggle"><span
											class="icon-dot-nav-horizontal text-light"></span></span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-auto">
							<div class="img-box-horizontal music-img-box h-g-bg">
								<div class="img-box img-box-sm box-rounded-sm">
									<img src="../assets/images/hot-song/hot-14.jpg" alt="">
								</div>
								<div class="des">
									<h6 class="title">
										<a href="#">Joy To The World</a>
									</h6>
									<p class="sub-title">
										<a href="#">Pentatonix</a>
									</p>
								</div>
								<div
									class="hover-state d-flex justify-content-between align-items-center">
									<span class="pointer play-btn-dark box-rounded-sm"><i
										class="play-icon"></i></span>
									<div class="d-flex align-items-center">
										<span class="adonis-icon text-light pointer mr-2 icon-2x"><svg
												xmlns="http://www.w3.org/2000/svg" version="1.1">
												<use xlink:href="#icon-heart-blank" /></svg></span> <span
											class="pointer dropdown-menu-toggle"><span
											class="icon-dot-nav-horizontal text-light"></span></span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-auto">
							<div class="img-box-horizontal music-img-box h-g-bg">
								<div class="img-box img-box-sm box-rounded-sm">
									<img src="../assets/images/hot-song/hot-15.jpg" alt="">
								</div>
								<div class="des">
									<h6 class="title">
										<a href="#">Something Just Like This</a>
									</h6>
									<p class="sub-title">
										<a href="#">Demi Lovato</a>
									</p>
								</div>
								<div
									class="hover-state d-flex justify-content-between align-items-center">
									<span class="pointer play-btn-dark box-rounded-sm"><i
										class="play-icon"></i></span>
									<div class="d-flex align-items-center">
										<span class="adonis-icon text-light pointer mr-2 icon-2x"><svg
												xmlns="http://www.w3.org/2000/svg" version="1.1">
												<use xlink:href="#icon-heart-blank" /></svg></span> <span
											class="pointer dropdown-menu-toggle"><span
											class="icon-dot-nav-horizontal text-light"></span></span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-auto">
							<div class="img-box-horizontal music-img-box h-g-bg">
								<div class="img-box img-box-sm box-rounded-sm">
									<img src="../assets/images/hot-song/hot-1.jpg" alt="">
								</div>
								<div class="des">
									<h6 class="title">
										<a href="#">The Separation</a>
									</h6>
									<p class="sub-title">
										<a href="#">Rachel Platten</a>
									</p>
								</div>
								<div
									class="hover-state d-flex justify-content-between align-items-center">
									<span class="pointer play-btn-dark box-rounded-sm"><i
										class="play-icon"></i></span>
									<div class="d-flex align-items-center">
										<span class="adonis-icon text-light pointer mr-2 icon-2x"><svg
												xmlns="http://www.w3.org/2000/svg" version="1.1">
												<use xlink:href="#icon-heart-blank" /></svg></span> <span
											class="pointer dropdown-menu-toggle"><span
											class="icon-dot-nav-horizontal text-light"></span></span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-auto">
							<div class="img-box-horizontal music-img-box h-g-bg">
								<div class="img-box img-box-sm box-rounded-sm">
									<img src="../assets/images/hot-song/hot-3.jpg" alt="">
								</div>
								<div class="des">
									<h6 class="title">
										<a href="#">Stirring of a fool</a>
									</h6>
									<p class="sub-title">
										<a href="#">Rachel Platten</a>
									</p>
								</div>
								<div
									class="hover-state d-flex justify-content-between align-items-center">
									<span class="pointer play-btn-dark box-rounded-sm"><i
										class="play-icon"></i></span>
									<div class="d-flex align-items-center">
										<span class="adonis-icon text-light pointer mr-2 icon-2x"><svg
												xmlns="http://www.w3.org/2000/svg" version="1.1">
												<use xlink:href="#icon-heart-blank" /></svg></span> <span
											class="pointer dropdown-menu-toggle"><span
											class="icon-dot-nav-horizontal text-light"></span></span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-auto">
							<div class="img-box-horizontal music-img-box h-g-bg">
								<div class="img-box img-box-sm box-rounded-sm">
									<img src="../assets/images/hot-song/hot-2.jpg" alt="">
								</div>
								<div class="des">
									<h6 class="title">
										<a href="#">Country girl shake it for me</a>
									</h6>
									<p class="sub-title">
										<a href="#">Bing Crosby</a>
									</p>
								</div>
								<div
									class="hover-state d-flex justify-content-between align-items-center">
									<span class="pointer play-btn-dark box-rounded-sm"><i
										class="play-icon"></i></span>
									<div class="d-flex align-items-center">
										<span class="adonis-icon text-light pointer mr-2 icon-2x"><svg
												xmlns="http://www.w3.org/2000/svg" version="1.1">
												<use xlink:href="#icon-heart-blank" /></svg></span> <span
											class="pointer dropdown-menu-toggle"><span
											class="icon-dot-nav-horizontal text-light"></span></span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-auto">
							<div class="img-box-horizontal music-img-box h-g-bg">
								<div class="img-box img-box-sm box-rounded-sm">
									<img src="../assets/images/hot-song/hot-4.jpg" alt="">
								</div>
								<div class="des">
									<h6 class="title">
										<a href="#">Nothings into Somethings</a>
									</h6>
									<p class="sub-title">
										<a href="#">Rachel Platten</a>
									</p>
								</div>
								<div
									class="hover-state d-flex justify-content-between align-items-center">
									<span class="pointer play-btn-dark box-rounded-sm"><i
										class="play-icon"></i></span>
									<div class="d-flex align-items-center">
										<span class="adonis-icon text-light pointer mr-2 icon-2x"><svg
												xmlns="http://www.w3.org/2000/svg" version="1.1">
												<use xlink:href="#icon-heart-blank" /></svg></span> <span
											class="pointer dropdown-menu-toggle"><span
											class="icon-dot-nav-horizontal text-light"></span></span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-auto">
							<div class="img-box-horizontal music-img-box h-g-bg">
								<div class="img-box img-box-sm box-rounded-sm">
									<img src="../assets/images/hot-song/hot-5.jpg" alt="">
								</div>
								<div class="des">
									<h6 class="title">
										<a href="#">Let You Down</a>
									</h6>
									<p class="sub-title">
										<a href="#">Rachel Platten</a>
									</p>
								</div>
								<div
									class="hover-state d-flex justify-content-between align-items-center">
									<span class="pointer play-btn-dark box-rounded-sm"><i
										class="play-icon"></i></span>
									<div class="d-flex align-items-center">
										<span class="adonis-icon text-light pointer mr-2 icon-2x"><svg
												xmlns="http://www.w3.org/2000/svg" version="1.1">
												<use xlink:href="#icon-heart-blank" /></svg></span> <span
											class="pointer dropdown-menu-toggle"><span
											class="icon-dot-nav-horizontal text-light"></span></span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-auto">
							<div class="img-box-horizontal music-img-box h-g-bg">
								<div class="img-box img-box-sm box-rounded-sm">
									<img src="../assets/images/hot-song/hot-1.jpg" alt="">
								</div>
								<div class="des">
									<h6 class="title">
										<a href="#">The Separation</a>
									</h6>
									<p class="sub-title">
										<a href="#">Rachel Platten</a>
									</p>
								</div>
								<div
									class="hover-state d-flex justify-content-between align-items-center">
									<span class="pointer play-btn-dark box-rounded-sm"><i
										class="play-icon"></i></span>
									<div class="d-flex align-items-center">
										<span class="adonis-icon text-light pointer mr-2 icon-2x"><svg
												xmlns="http://www.w3.org/2000/svg" version="1.1">
												<use xlink:href="#icon-heart-blank" /></svg></span> <span
											class="pointer dropdown-menu-toggle"><span
											class="icon-dot-nav-horizontal text-light"></span></span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-auto">
							<div class="img-box-horizontal music-img-box h-g-bg">
								<div class="img-box img-box-sm box-rounded-sm">
									<img src="../assets/images/hot-song/hot-2.jpg" alt="">
								</div>
								<div class="des">
									<h6 class="title">
										<a href="#">Country girl shake it for me</a>
									</h6>
									<p class="sub-title">
										<a href="#">Bing Crosby</a>
									</p>
								</div>
								<div
									class="hover-state d-flex justify-content-between align-items-center">
									<span class="pointer play-btn-dark box-rounded-sm"><i
										class="play-icon"></i></span>
									<div class="d-flex align-items-center">
										<span class="adonis-icon text-light pointer mr-2 icon-2x"><svg
												xmlns="http://www.w3.org/2000/svg" version="1.1">
												<use xlink:href="#icon-heart-blank" /></svg></span> <span
											class="pointer dropdown-menu-toggle"><span
											class="icon-dot-nav-horizontal text-light"></span></span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-auto">
							<div class="img-box-horizontal music-img-box h-g-bg">
								<div class="img-box img-box-sm box-rounded-sm">
									<img src="../assets/images/hot-song/hot-4.jpg" alt="">
								</div>
								<div class="des">
									<h6 class="title">
										<a href="#">Nothings into Somethings</a>
									</h6>
									<p class="sub-title">
										<a href="#">Rachel Platten</a>
									</p>
								</div>
								<div
									class="hover-state d-flex justify-content-between align-items-center">
									<span class="pointer play-btn-dark box-rounded-sm"><i
										class="play-icon"></i></span>
									<div class="d-flex align-items-center">
										<span class="adonis-icon text-light pointer mr-2 icon-2x"><svg
												xmlns="http://www.w3.org/2000/svg" version="1.1">
												<use xlink:href="#icon-heart-blank" /></svg></span> <span
											class="pointer dropdown-menu-toggle"><span
											class="icon-dot-nav-horizontal text-light"></span></span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-auto">
							<div class="img-box-horizontal music-img-box h-g-bg">
								<div class="img-box img-box-sm box-rounded-sm">
									<img src="../assets/images/hot-song/hot-5.jpg" alt="">
								</div>
								<div class="des">
									<h6 class="title">
										<a href="#">Let You Down</a>
									</h6>
									<p class="sub-title">
										<a href="#">Rachel Platten</a>
									</p>
								</div>
								<div
									class="hover-state d-flex justify-content-between align-items-center">
									<span class="pointer play-btn-dark box-rounded-sm"><i
										class="play-icon"></i></span>
									<div class="d-flex align-items-center">
										<span class="adonis-icon text-light pointer mr-2 icon-2x"><svg
												xmlns="http://www.w3.org/2000/svg" version="1.1">
												<use xlink:href="#icon-heart-blank" /></svg></span> <span
											class="pointer dropdown-menu-toggle"><span
											class="icon-dot-nav-horizontal text-light"></span></span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-auto">
							<div class="img-box-horizontal music-img-box h-g-bg">
								<div class="img-box img-box-sm box-rounded-sm">
									<img src="../assets/images/hot-song/hot-4.jpg" alt="">
								</div>
								<div class="des">
									<h6 class="title">
										<a href="#">Nothings into Somethings</a>
									</h6>
									<p class="sub-title">
										<a href="#">Rachel Platten</a>
									</p>
								</div>
								<div
									class="hover-state d-flex justify-content-between align-items-center">
									<span class="pointer play-btn-dark box-rounded-sm"><i
										class="play-icon"></i></span>
									<div class="d-flex align-items-center">
										<span class="adonis-icon text-light pointer mr-2 icon-2x"><svg
												xmlns="http://www.w3.org/2000/svg" version="1.1">
												<use xlink:href="#icon-heart-blank" /></svg></span> <span
											class="pointer dropdown-menu-toggle"><span
											class="icon-dot-nav-horizontal text-light"></span></span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-pane fade" id="search-content-albums"
					role="tabpanel" aria-labelledby="search-tab-albums">
					<div class="row auto-cols-row" data-item-width="150"
						data-item-max-width="200">
						<div class="col-auto">
							<div class="music-img-box mb-e-30 mb-e-lg-40">
								<div class="img-box box-rounded-sm">
									<img class="retina"
										src="../assets/images/new-releases/new-releases-44.jpg"
										data-2x="assets/images/new-releases/new-releases-44@2x.jpg"
										alt="">
									<div class="hover-state">
										<div class="absolute-bottom-left pl-e-20 pb-e-20">
											<span class="pointer play-btn-dark round-btn"><i
												class="play-icon"></i></span>
										</div>
										<div class="absolute-top-right pr-e-20 pt-e-20">
											<span class="pointer dropdown-menu-toggle"><span
												class="adonis-icon icon-4x"><svg
														xmlns="http://www.w3.org/2000/svg" version="1.1">
														<use xlink:href="#icon-horizontal-dots"></use></svg></span></span>
										</div>
									</div>
								</div>
								<h6 class="title">
									<a href="#">Roll n Peace Remix</a>
								</h6>
								<p class="sub-title category">
									<a href="#">Imagine</a>
								</p>
							</div>
						</div>
						<div class="col-auto">
							<div class="music-img-box mb-e-30 mb-e-lg-40">
								<div class="img-box box-rounded-sm">
									<img class="retina"
										src="../assets/images/new-releases/new-releases-43.jpg"
										data-2x="assets/images/new-releases/new-releases-43@2x.jpg"
										alt="">
									<div class="hover-state">
										<div class="absolute-bottom-left pl-e-20 pb-e-20">
											<span class="pointer play-btn-dark round-btn"><i
												class="play-icon"></i></span>
										</div>
										<div class="absolute-top-right pr-e-20 pt-e-20">
											<span class="pointer dropdown-menu-toggle"><span
												class="adonis-icon icon-4x"><svg
														xmlns="http://www.w3.org/2000/svg" version="1.1">
														<use xlink:href="#icon-horizontal-dots"></use></svg></span></span>
										</div>
									</div>
								</div>
								<h6 class="title">
									<a href="#">Roll n Peace Remix</a>
								</h6>
								<p class="sub-title category">
									<a href="#">Imagine</a>
								</p>
							</div>
						</div>
						<div class="col-auto">
							<div class="music-img-box mb-e-30 mb-e-lg-40">
								<div class="img-box box-rounded-sm">
									<img class="retina"
										src="../assets/images/new-releases/new-releases-42.jpg"
										data-2x="assets/images/new-releases/new-releases-42@2x.jpg"
										alt="">
									<div class="hover-state">
										<div class="absolute-bottom-left pl-e-20 pb-e-20">
											<span class="pointer play-btn-dark round-btn"><i
												class="play-icon"></i></span>
										</div>
										<div class="absolute-top-right pr-e-20 pt-e-20">
											<span class="pointer dropdown-menu-toggle"><span
												class="adonis-icon icon-4x"><svg
														xmlns="http://www.w3.org/2000/svg" version="1.1">
														<use xlink:href="#icon-horizontal-dots"></use></svg></span></span>
										</div>
									</div>
								</div>
								<h6 class="title">
									<a href="#">Roll n Peace Remix</a>
								</h6>
								<p class="sub-title category">
									<a href="#">Imagine</a>
								</p>
							</div>
						</div>
						<div class="col-auto">
							<div class="music-img-box mb-e-30 mb-e-lg-40">
								<div class="img-box box-rounded-sm">
									<img class="retina"
										src="../assets/images/new-releases/new-releases-41.jpg"
										data-2x="assets/images/new-releases/new-releases-41@2x.jpg"
										alt="">
									<div class="hover-state">
										<div class="absolute-bottom-left pl-e-20 pb-e-20">
											<span class="pointer play-btn-dark round-btn"><i
												class="play-icon"></i></span>
										</div>
										<div class="absolute-top-right pr-e-20 pt-e-20">
											<span class="pointer dropdown-menu-toggle"><span
												class="adonis-icon icon-4x"><svg
														xmlns="http://www.w3.org/2000/svg" version="1.1">
														<use xlink:href="#icon-horizontal-dots"></use></svg></span></span>
										</div>
									</div>
								</div>
								<h6 class="title">
									<a href="#">Roll n Peace Remix</a>
								</h6>
								<p class="sub-title category">
									<a href="#">Imagine</a>
								</p>
							</div>
						</div>
						<div class="col-auto">
							<div class="music-img-box mb-e-30 mb-e-lg-40">
								<div class="img-box box-rounded-sm">
									<img class="retina"
										src="../assets/images/new-releases/new-releases-40.jpg"
										data-2x="assets/images/new-releases/new-releases-40@2x.jpg"
										alt="">
									<div class="hover-state">
										<div class="absolute-bottom-left pl-e-20 pb-e-20">
											<span class="pointer play-btn-dark round-btn"><i
												class="play-icon"></i></span>
										</div>
										<div class="absolute-top-right pr-e-20 pt-e-20">
											<span class="pointer dropdown-menu-toggle"><span
												class="adonis-icon icon-4x"><svg
														xmlns="http://www.w3.org/2000/svg" version="1.1">
														<use xlink:href="#icon-horizontal-dots"></use></svg></span></span>
										</div>
									</div>
								</div>
								<h6 class="title">
									<a href="#">Roll n Peace Remix</a>
								</h6>
								<p class="sub-title category">
									<a href="#">Imagine</a>
								</p>
							</div>
						</div>
						<div class="col-auto">
							<div class="music-img-box mb-e-30 mb-e-lg-40">
								<div class="img-box box-rounded-sm">
									<img class="retina"
										src="../assets/images/new-releases/new-releases-39.jpg"
										data-2x="assets/images/new-releases/new-releases-39@2x.jpg"
										alt="">
									<div class="hover-state">
										<div class="absolute-bottom-left pl-e-20 pb-e-20">
											<span class="pointer play-btn-dark round-btn"><i
												class="play-icon"></i></span>
										</div>
										<div class="absolute-top-right pr-e-20 pt-e-20">
											<span class="pointer dropdown-menu-toggle"><span
												class="adonis-icon icon-4x"><svg
														xmlns="http://www.w3.org/2000/svg" version="1.1">
														<use xlink:href="#icon-horizontal-dots"></use></svg></span></span>
										</div>
									</div>
								</div>
								<h6 class="title">
									<a href="#">Roll n Peace Remix</a>
								</h6>
								<p class="sub-title category">
									<a href="#">Imagine</a>
								</p>
							</div>
						</div>
						<div class="col-auto">
							<div class="music-img-box mb-e-30 mb-e-lg-40">
								<div class="img-box box-rounded-sm">
									<img class="retina"
										src="../assets/images/new-releases/new-releases-38.jpg"
										data-2x="assets/images/new-releases/new-releases-38@2x.jpg"
										alt="">
									<div class="hover-state">
										<div class="absolute-bottom-left pl-e-20 pb-e-20">
											<span class="pointer play-btn-dark round-btn"><i
												class="play-icon"></i></span>
										</div>
										<div class="absolute-top-right pr-e-20 pt-e-20">
											<span class="pointer dropdown-menu-toggle"><span
												class="adonis-icon icon-4x"><svg
														xmlns="http://www.w3.org/2000/svg" version="1.1">
														<use xlink:href="#icon-horizontal-dots"></use></svg></span></span>
										</div>
									</div>
								</div>
								<h6 class="title">
									<a href="#">Roll n Peace Remix</a>
								</h6>
								<p class="sub-title category">
									<a href="#">Imagine</a>
								</p>
							</div>
						</div>
						<div class="col-auto">
							<div class="music-img-box mb-e-30 mb-e-lg-40">
								<div class="img-box box-rounded-sm">
									<img class="retina"
										src="../assets/images/new-releases/new-releases-37.jpg"
										data-2x="assets/images/new-releases/new-releases-37@2x.jpg"
										alt="">
									<div class="hover-state">
										<div class="absolute-bottom-left pl-e-20 pb-e-20">
											<span class="pointer play-btn-dark round-btn"><i
												class="play-icon"></i></span>
										</div>
										<div class="absolute-top-right pr-e-20 pt-e-20">
											<span class="pointer dropdown-menu-toggle"><span
												class="adonis-icon icon-4x"><svg
														xmlns="http://www.w3.org/2000/svg" version="1.1">
														<use xlink:href="#icon-horizontal-dots"></use></svg></span></span>
										</div>
									</div>
								</div>
								<h6 class="title">
									<a href="#">Roll n Peace Remix</a>
								</h6>
								<p class="sub-title category">
									<a href="#">Imagine</a>
								</p>
							</div>
						</div>
						<div class="col-auto">
							<div class="music-img-box mb-e-30 mb-e-lg-40">
								<div class="img-box box-rounded-sm">
									<img class="retina"
										src="../assets/images/new-releases/new-releases-36.jpg"
										data-2x="assets/images/new-releases/new-releases-36@2x.jpg"
										alt="">
									<div class="hover-state">
										<div class="absolute-bottom-left pl-e-20 pb-e-20">
											<span class="pointer play-btn-dark round-btn"><i
												class="play-icon"></i></span>
										</div>
										<div class="absolute-top-right pr-e-20 pt-e-20">
											<span class="pointer dropdown-menu-toggle"><span
												class="adonis-icon icon-4x"><svg
														xmlns="http://www.w3.org/2000/svg" version="1.1">
														<use xlink:href="#icon-horizontal-dots"></use></svg></span></span>
										</div>
									</div>
								</div>
								<h6 class="title">
									<a href="#">Roll n Peace Remix</a>
								</h6>
								<p class="sub-title category">
									<a href="#">Imagine</a>
								</p>
							</div>
						</div>
						<div class="col-auto">
							<div class="music-img-box mb-e-30 mb-e-lg-40">
								<div class="img-box box-rounded-sm">
									<img class="retina"
										src="../assets/images/new-releases/new-releases-35.jpg"
										data-2x="assets/images/new-releases/new-releases-35@2x.jpg"
										alt="">
									<div class="hover-state">
										<div class="absolute-bottom-left pl-e-20 pb-e-20">
											<span class="pointer play-btn-dark round-btn"><i
												class="play-icon"></i></span>
										</div>
										<div class="absolute-top-right pr-e-20 pt-e-20">
											<span class="pointer dropdown-menu-toggle"><span
												class="adonis-icon icon-4x"><svg
														xmlns="http://www.w3.org/2000/svg" version="1.1">
														<use xlink:href="#icon-horizontal-dots"></use></svg></span></span>
										</div>
									</div>
								</div>
								<h6 class="title">
									<a href="#">Roll n Peace Remix</a>
								</h6>
								<p class="sub-title category">
									<a href="#">Imagine</a>
								</p>
							</div>
						</div>
						<div class="col-auto">
							<div class="music-img-box mb-e-30 mb-e-lg-40">
								<div class="img-box box-rounded-sm">
									<img class="retina"
										src="../assets/images/new-releases/new-releases-34.jpg"
										data-2x="assets/images/new-releases/new-releases-34@2x.jpg"
										alt="">
									<div class="hover-state">
										<div class="absolute-bottom-left pl-e-20 pb-e-20">
											<span class="pointer play-btn-dark round-btn"><i
												class="play-icon"></i></span>
										</div>
										<div class="absolute-top-right pr-e-20 pt-e-20">
											<span class="pointer dropdown-menu-toggle"><span
												class="adonis-icon icon-4x"><svg
														xmlns="http://www.w3.org/2000/svg" version="1.1">
														<use xlink:href="#icon-horizontal-dots"></use></svg></span></span>
										</div>
									</div>
								</div>
								<h6 class="title">
									<a href="#">Roll n Peace Remix</a>
								</h6>
								<p class="sub-title category">
									<a href="#">Imagine</a>
								</p>
							</div>
						</div>
						<div class="col-auto">
							<div class="music-img-box mb-e-30 mb-e-lg-40">
								<div class="img-box box-rounded-sm">
									<img class="retina"
										src="../assets/images/new-releases/new-releases-33.jpg"
										data-2x="assets/images/new-releases/new-releases-33@2x.jpg"
										alt="">
									<div class="hover-state">
										<div class="absolute-bottom-left pl-e-20 pb-e-20">
											<span class="pointer play-btn-dark round-btn"><i
												class="play-icon"></i></span>
										</div>
										<div class="absolute-top-right pr-e-20 pt-e-20">
											<span class="pointer dropdown-menu-toggle"><span
												class="adonis-icon icon-4x"><svg
														xmlns="http://www.w3.org/2000/svg" version="1.1">
														<use xlink:href="#icon-horizontal-dots"></use></svg></span></span>
										</div>
									</div>
								</div>
								<h6 class="title">
									<a href="#">Roll n Peace Remix</a>
								</h6>
								<p class="sub-title category">
									<a href="#">Imagine</a>
								</p>
							</div>
						</div>
						<div class="col-auto">
							<div class="music-img-box mb-e-30 mb-e-lg-40">
								<div class="img-box box-rounded-sm">
									<img class="retina"
										src="../assets/images/new-releases/new-releases-32.jpg"
										data-2x="assets/images/new-releases/new-releases-32@2x.jpg"
										alt="">
									<div class="hover-state">
										<div class="absolute-bottom-left pl-e-20 pb-e-20">
											<span class="pointer play-btn-dark round-btn"><i
												class="play-icon"></i></span>
										</div>
										<div class="absolute-top-right pr-e-20 pt-e-20">
											<span class="pointer dropdown-menu-toggle"><span
												class="adonis-icon icon-4x"><svg
														xmlns="http://www.w3.org/2000/svg" version="1.1">
														<use xlink:href="#icon-horizontal-dots"></use></svg></span></span>
										</div>
									</div>
								</div>
								<h6 class="title">
									<a href="#">Roll n Peace Remix</a>
								</h6>
								<p class="sub-title category">
									<a href="#">Imagine</a>
								</p>
							</div>
						</div>
						<div class="col-auto">
							<div class="music-img-box mb-e-30 mb-e-lg-40">
								<div class="img-box box-rounded-sm">
									<img class="retina"
										src="../assets/images/new-releases/new-releases-31.jpg"
										data-2x="assets/images/new-releases/new-releases-31@2x.jpg"
										alt="">
									<div class="hover-state">
										<div class="absolute-bottom-left pl-e-20 pb-e-20">
											<span class="pointer play-btn-dark round-btn"><i
												class="play-icon"></i></span>
										</div>
										<div class="absolute-top-right pr-e-20 pt-e-20">
											<span class="pointer dropdown-menu-toggle"><span
												class="adonis-icon icon-4x"><svg
														xmlns="http://www.w3.org/2000/svg" version="1.1">
														<use xlink:href="#icon-horizontal-dots"></use></svg></span></span>
										</div>
									</div>
								</div>
								<h6 class="title">
									<a href="#">Roll n Peace Remix</a>
								</h6>
								<p class="sub-title category">
									<a href="#">Imagine</a>
								</p>
							</div>
						</div>
						<div class="col-auto">
							<div class="music-img-box mb-e-30 mb-e-lg-40">
								<div class="img-box box-rounded-sm">
									<img class="retina"
										src="../assets/images/new-releases/new-releases-30.jpg"
										data-2x="assets/images/new-releases/new-releases-30@2x.jpg"
										alt="">
									<div class="hover-state">
										<div class="absolute-bottom-left pl-e-20 pb-e-20">
											<span class="pointer play-btn-dark round-btn"><i
												class="play-icon"></i></span>
										</div>
										<div class="absolute-top-right pr-e-20 pt-e-20">
											<span class="pointer dropdown-menu-toggle"><span
												class="adonis-icon icon-4x"><svg
														xmlns="http://www.w3.org/2000/svg" version="1.1">
														<use xlink:href="#icon-horizontal-dots"></use></svg></span></span>
										</div>
									</div>
								</div>
								<h6 class="title">
									<a href="#">Roll n Peace Remix</a>
								</h6>
								<p class="sub-title category">
									<a href="#">Imagine</a>
								</p>
							</div>
						</div>
						<div class="col-auto">
							<div class="music-img-box mb-e-30 mb-e-lg-40">
								<div class="img-box box-rounded-sm">
									<img class="retina"
										src="../assets/images/new-releases/new-releases-29.jpg"
										data-2x="assets/images/new-releases/new-releases-29@2x.jpg"
										alt="">
									<div class="hover-state">
										<div class="absolute-bottom-left pl-e-20 pb-e-20">
											<span class="pointer play-btn-dark round-btn"><i
												class="play-icon"></i></span>
										</div>
										<div class="absolute-top-right pr-e-20 pt-e-20">
											<span class="pointer dropdown-menu-toggle"><span
												class="adonis-icon icon-4x"><svg
														xmlns="http://www.w3.org/2000/svg" version="1.1">
														<use xlink:href="#icon-horizontal-dots"></use></svg></span></span>
										</div>
									</div>
								</div>
								<h6 class="title">
									<a href="#">Roll n Peace Remix</a>
								</h6>
								<p class="sub-title category">
									<a href="#">Imagine</a>
								</p>
							</div>
						</div>
						<div class="col-auto">
							<div class="music-img-box mb-e-30 mb-e-lg-40">
								<div class="img-box box-rounded-sm">
									<img class="retina"
										src="../assets/images/new-releases/new-releases-28.jpg"
										data-2x="assets/images/new-releases/new-releases-28@2x.jpg"
										alt="">
									<div class="hover-state">
										<div class="absolute-bottom-left pl-e-20 pb-e-20">
											<span class="pointer play-btn-dark round-btn"><i
												class="play-icon"></i></span>
										</div>
										<div class="absolute-top-right pr-e-20 pt-e-20">
											<span class="pointer dropdown-menu-toggle"><span
												class="adonis-icon icon-4x"><svg
														xmlns="http://www.w3.org/2000/svg" version="1.1">
														<use xlink:href="#icon-horizontal-dots"></use></svg></span></span>
										</div>
									</div>
								</div>
								<h6 class="title">
									<a href="#">Roll n Peace Remix</a>
								</h6>
								<p class="sub-title category">
									<a href="#">Imagine</a>
								</p>
							</div>
						</div>
						<div class="col-auto">
							<div class="music-img-box mb-e-30 mb-e-lg-40">
								<div class="img-box box-rounded-sm">
									<img class="retina"
										src="../assets/images/new-releases/new-releases-27.jpg"
										data-2x="assets/images/new-releases/new-releases-27@2x.jpg"
										alt="">
									<div class="hover-state">
										<div class="absolute-bottom-left pl-e-20 pb-e-20">
											<span class="pointer play-btn-dark round-btn"><i
												class="play-icon"></i></span>
										</div>
										<div class="absolute-top-right pr-e-20 pt-e-20">
											<span class="pointer dropdown-menu-toggle"><span
												class="adonis-icon icon-4x"><svg
														xmlns="http://www.w3.org/2000/svg" version="1.1">
														<use xlink:href="#icon-horizontal-dots"></use></svg></span></span>
										</div>
									</div>
								</div>
								<h6 class="title">
									<a href="#">Roll n Peace Remix</a>
								</h6>
								<p class="sub-title category">
									<a href="#">Imagine</a>
								</p>
							</div>
						</div>
						<div class="col-auto">
							<div class="music-img-box mb-e-30 mb-e-lg-40">
								<div class="img-box box-rounded-sm">
									<img class="retina"
										src="../assets/images/new-releases/new-releases-26.jpg"
										data-2x="assets/images/new-releases/new-releases-26@2x.jpg"
										alt="">
									<div class="hover-state">
										<div class="absolute-bottom-left pl-e-20 pb-e-20">
											<span class="pointer play-btn-dark round-btn"><i
												class="play-icon"></i></span>
										</div>
										<div class="absolute-top-right pr-e-20 pt-e-20">
											<span class="pointer dropdown-menu-toggle"><span
												class="adonis-icon icon-4x"><svg
														xmlns="http://www.w3.org/2000/svg" version="1.1">
														<use xlink:href="#icon-horizontal-dots"></use></svg></span></span>
										</div>
									</div>
								</div>
								<h6 class="title">
									<a href="#">Roll n Peace Remix</a>
								</h6>
								<p class="sub-title category">
									<a href="#">Imagine</a>
								</p>
							</div>
						</div>
						<div class="col-auto">
							<div class="music-img-box mb-e-30 mb-e-lg-40">
								<div class="img-box box-rounded-sm">
									<img class="retina"
										src="../assets/images/new-releases/new-releases-25.jpg"
										data-2x="assets/images/new-releases/new-releases-25@2x.jpg"
										alt="">
									<div class="hover-state">
										<div class="absolute-bottom-left pl-e-20 pb-e-20">
											<span class="pointer play-btn-dark round-btn"><i
												class="play-icon"></i></span>
										</div>
										<div class="absolute-top-right pr-e-20 pt-e-20">
											<span class="pointer dropdown-menu-toggle"><span
												class="adonis-icon icon-4x"><svg
														xmlns="http://www.w3.org/2000/svg" version="1.1">
														<use xlink:href="#icon-horizontal-dots"></use></svg></span></span>
										</div>
									</div>
								</div>
								<h6 class="title">
									<a href="#">Roll n Peace Remix</a>
								</h6>
								<p class="sub-title category">
									<a href="#">Imagine</a>
								</p>
							</div>
						</div>
						<div class="col-auto">
							<div class="music-img-box mb-e-30 mb-e-lg-40">
								<div class="img-box box-rounded-sm">
									<img class="retina"
										src="../assets/images/new-releases/new-releases-24.jpg"
										data-2x="assets/images/new-releases/new-releases-24@2x.jpg"
										alt="">
									<div class="hover-state">
										<div class="absolute-bottom-left pl-e-20 pb-e-20">
											<span class="pointer play-btn-dark round-btn"><i
												class="play-icon"></i></span>
										</div>
										<div class="absolute-top-right pr-e-20 pt-e-20">
											<span class="pointer dropdown-menu-toggle"><span
												class="adonis-icon icon-4x"><svg
														xmlns="http://www.w3.org/2000/svg" version="1.1">
														<use xlink:href="#icon-horizontal-dots"></use></svg></span></span>
										</div>
									</div>
								</div>
								<h6 class="title">
									<a href="#">Roll n Peace Remix</a>
								</h6>
								<p class="sub-title category">
									<a href="#">Imagine</a>
								</p>
							</div>
						</div>
						<div class="col-auto">
							<div class="music-img-box mb-e-30 mb-e-lg-40">
								<div class="img-box box-rounded-sm">
									<img class="retina"
										src="../assets/images/new-releases/new-releases-23.jpg"
										data-2x="assets/images/new-releases/new-releases-23@2x.jpg"
										alt="">
									<div class="hover-state">
										<div class="absolute-bottom-left pl-e-20 pb-e-20">
											<span class="pointer play-btn-dark round-btn"><i
												class="play-icon"></i></span>
										</div>
										<div class="absolute-top-right pr-e-20 pt-e-20">
											<span class="pointer dropdown-menu-toggle"><span
												class="adonis-icon icon-4x"><svg
														xmlns="http://www.w3.org/2000/svg" version="1.1">
														<use xlink:href="#icon-horizontal-dots"></use></svg></span></span>
										</div>
									</div>
								</div>
								<h6 class="title">
									<a href="#">Roll n Peace Remix</a>
								</h6>
								<p class="sub-title category">
									<a href="#">Imagine</a>
								</p>
							</div>
						</div>
						<div class="col-auto">
							<div class="music-img-box mb-e-30 mb-e-lg-40">
								<div class="img-box box-rounded-sm">
									<img class="retina"
										src="../assets/images/new-releases/new-releases-22.jpg"
										data-2x="assets/images/new-releases/new-releases-22@2x.jpg"
										alt="">
									<div class="hover-state">
										<div class="absolute-bottom-left pl-e-20 pb-e-20">
											<span class="pointer play-btn-dark round-btn"><i
												class="play-icon"></i></span>
										</div>
										<div class="absolute-top-right pr-e-20 pt-e-20">
											<span class="pointer dropdown-menu-toggle"><span
												class="adonis-icon icon-4x"><svg
														xmlns="http://www.w3.org/2000/svg" version="1.1">
														<use xlink:href="#icon-horizontal-dots"></use></svg></span></span>
										</div>
									</div>
								</div>
								<h6 class="title">
									<a href="#">Roll n Peace Remix</a>
								</h6>
								<p class="sub-title category">
									<a href="#">Imagine</a>
								</p>
							</div>
						</div>
						<div class="col-auto">
							<div class="music-img-box mb-e-30 mb-e-lg-40">
								<div class="img-box box-rounded-sm">
									<img class="retina"
										src="../assets/images/new-releases/new-releases-21.jpg"
										data-2x="assets/images/new-releases/new-releases-21@2x.jpg"
										alt="">
									<div class="hover-state">
										<div class="absolute-bottom-left pl-e-20 pb-e-20">
											<span class="pointer play-btn-dark round-btn"><i
												class="play-icon"></i></span>
										</div>
										<div class="absolute-top-right pr-e-20 pt-e-20">
											<span class="pointer dropdown-menu-toggle"><span
												class="adonis-icon icon-4x"><svg
														xmlns="http://www.w3.org/2000/svg" version="1.1">
														<use xlink:href="#icon-horizontal-dots"></use></svg></span></span>
										</div>
									</div>
								</div>
								<h6 class="title">
									<a href="#">Roll n Peace Remix</a>
								</h6>
								<p class="sub-title category">
									<a href="#">Imagine</a>
								</p>
							</div>
						</div>
						<div class="col-auto">
							<div class="music-img-box mb-e-30 mb-e-lg-40">
								<div class="img-box box-rounded-sm">
									<img class="retina"
										src="../assets/images/new-releases/new-releases-20.jpg"
										data-2x="assets/images/new-releases/new-releases-20@2x.jpg"
										alt="">
									<div class="hover-state">
										<div class="absolute-bottom-left pl-e-20 pb-e-20">
											<span class="pointer play-btn-dark round-btn"><i
												class="play-icon"></i></span>
										</div>
										<div class="absolute-top-right pr-e-20 pt-e-20">
											<span class="pointer dropdown-menu-toggle"><span
												class="adonis-icon icon-4x"><svg
														xmlns="http://www.w3.org/2000/svg" version="1.1">
														<use xlink:href="#icon-horizontal-dots"></use></svg></span></span>
										</div>
									</div>
								</div>
								<h6 class="title">
									<a href="#">Roll n Peace Remix</a>
								</h6>
								<p class="sub-title category">
									<a href="#">Imagine</a>
								</p>
							</div>
						</div>
						<div class="col-auto">
							<div class="music-img-box mb-e-30 mb-e-lg-40">
								<div class="img-box box-rounded-sm">
									<img class="retina"
										src="../assets/images/new-releases/new-releases-19.jpg"
										data-2x="assets/images/new-releases/new-releases-19@2x.jpg"
										alt="">
									<div class="hover-state">
										<div class="absolute-bottom-left pl-e-20 pb-e-20">
											<span class="pointer play-btn-dark round-btn"><i
												class="play-icon"></i></span>
										</div>
										<div class="absolute-top-right pr-e-20 pt-e-20">
											<span class="pointer dropdown-menu-toggle"><span
												class="adonis-icon icon-4x"><svg
														xmlns="http://www.w3.org/2000/svg" version="1.1">
														<use xlink:href="#icon-horizontal-dots"></use></svg></span></span>
										</div>
									</div>
								</div>
								<h6 class="title">
									<a href="#">Roll n Peace Remix</a>
								</h6>
								<p class="sub-title category">
									<a href="#">Imagine</a>
								</p>
							</div>
						</div>
						<div class="col-auto">
							<div class="music-img-box mb-e-30 mb-e-lg-40">
								<div class="img-box box-rounded-sm">
									<img class="retina"
										src="../assets/images/new-releases/new-releases-18.jpg"
										data-2x="assets/images/new-releases/new-releases-18@2x.jpg"
										alt="">
									<div class="hover-state">
										<div class="absolute-bottom-left pl-e-20 pb-e-20">
											<span class="pointer play-btn-dark round-btn"><i
												class="play-icon"></i></span>
										</div>
										<div class="absolute-top-right pr-e-20 pt-e-20">
											<span class="pointer dropdown-menu-toggle"><span
												class="adonis-icon icon-4x"><svg
														xmlns="http://www.w3.org/2000/svg" version="1.1">
														<use xlink:href="#icon-horizontal-dots"></use></svg></span></span>
										</div>
									</div>
								</div>
								<h6 class="title">
									<a href="#">Roll n Peace Remix</a>
								</h6>
								<p class="sub-title category">
									<a href="#">Imagine</a>
								</p>
							</div>
						</div>
						<div class="col-auto">
							<div class="music-img-box mb-e-30 mb-e-lg-40">
								<div class="img-box box-rounded-sm">
									<img class="retina"
										src="../assets/images/new-releases/new-releases-17.jpg"
										data-2x="assets/images/new-releases/new-releases-17@2x.jpg"
										alt="">
									<div class="hover-state">
										<div class="absolute-bottom-left pl-e-20 pb-e-20">
											<span class="pointer play-btn-dark round-btn"><i
												class="play-icon"></i></span>
										</div>
										<div class="absolute-top-right pr-e-20 pt-e-20">
											<span class="pointer dropdown-menu-toggle"><span
												class="adonis-icon icon-4x"><svg
														xmlns="http://www.w3.org/2000/svg" version="1.1">
														<use xlink:href="#icon-horizontal-dots"></use></svg></span></span>
										</div>
									</div>
								</div>
								<h6 class="title">
									<a href="#">Roll n Peace Remix</a>
								</h6>
								<p class="sub-title category">
									<a href="#">Imagine</a>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-pane fade" id="search-content-artists"
					role="tabpanel" aria-labelledby="search-tab-artists"></div>
				<div class="tab-pane fade" id="search-content-playlists"
					role="tabpanel" aria-labelledby="search-tab-playlists"></div>
			</div>
		</div>
	</div>
</div>
<!-- /search -->

<svg xmlns="http://www.w3.org/2000/svg" version="1.1"
	class="adonis-svg-library">
    <symbol id="icon-horizontal-dots" viewBox="0 0 32 32">
        <path
		d="M5.681 12.808c-1.763 0-3.192 1.429-3.192 3.192s1.429 3.192 3.192 3.192c1.763 0 3.192-1.429 3.192-3.192v0c0-1.763-1.429-3.192-3.192-3.192v0zM16.322 12.808c-1.763 0-3.192 1.429-3.192 3.192s1.429 3.192 3.192 3.192c1.763 0 3.192-1.429 3.192-3.192v0c0-1.763-1.429-3.192-3.192-3.192v0zM26.963 12.808c-1.763 0-3.192 1.429-3.192 3.192s1.429 3.192 3.192 3.192c1.763 0 3.192-1.429 3.192-3.192v0c0-1.763-1.429-3.192-3.192-3.192v0z"></path>
    </symbol>
    <symbol id="arrow-right" viewBox="0 0 42 42">
        <polygon
		points="42,20 22,20 22,0 20,0 20,20 0,20 0,22 20,22 20,42 22,42 22,22 42,22 " />
    </symbol>
    <symbol id="arrow-left" viewBox="0 0 24 24">
        <path
		d="M10.4 12l5.3-5.3c0.4-0.4 0.4-1 0-1.4s-1-0.4-1.4 0l-6 6c-0.4 0.4-0.4 1 0 1.4l6 6c0.2 0.2 0.5 0.3 0.7 0.3s0.5-0.1 0.7-0.3c0.4-0.4 0.4-1 0-1.4l-5.3-5.3z" />
    </symbol>
    <symbol id="icon-see-all-arrow-right" viewBox="0 0 24 24">
        <path
		d="M20.9 12.4c0.1-0.2 0.1-0.5 0-0.8-0.1-0.1-0.1-0.2-0.2-0.3l-6-6c-0.4-0.4-1-0.4-1.4 0s-0.4 1 0 1.4l4.3 4.3h-13.6c-0.6 0-1 0.4-1 1s0.4 1 1 1h13.6l-4.3 4.3c-0.4 0.4-0.4 1 0 1.4 0.2 0.2 0.5 0.3 0.7 0.3s0.5-0.1 0.7-0.3l6-6c0.1-0.1 0.2-0.2 0.2-0.3z"></path>
    </symbol>
    <symbol id="icon-heart-blank" viewBox="0 0 37 32">
        <path
		d="M27.379 0c-3.478 0.417-6.509 2.067-8.695 4.492l-0.011 0.012c-2.204-2.428-5.231-4.075-8.638-4.498l-0.068-0.007c-6.232 0-9.966 3.641-9.966 9.756 0.377 3.717 2.096 6.973 4.658 9.327l0.011 0.010 13.001 12.534c0.225 0.231 0.539 0.374 0.886 0.374 0.009 0 0.017-0 0.026-0l-0.001 0c0.004 0 0.010 0 0.015 0 0.35 0 0.667-0.143 0.895-0.373l0-0 13.187-12.511c0-0.187 4.668-4.365 4.668-9.36 0-6.115-3.734-9.756-9.966-9.756zM30.763 17.179l-12.090 11.647-12.114-11.67c-2.066-1.882-3.481-4.446-3.89-7.334l-0.008-0.065c0-5.859 3.968-7.002 7.306-7.002s6.605 3.361 7.679 4.668c0.253 0.283 0.619 0.46 1.027 0.46s0.774-0.177 1.026-0.458l0.001-0.001c1.074-1.284 4.668-4.668 7.679-4.668s7.282 1.237 7.282 7.002c0 3.805-3.851 7.352-3.898 7.422z"></path>
    </symbol>
    <symbol id="icon-close-notification" viewBox="0 0 24 24">
        <path
		d="M13.4 12l5.3-5.3c0.4-0.4 0.4-1 0-1.4s-1-0.4-1.4 0l-5.3 5.3-5.3-5.3c-0.4-0.4-1-0.4-1.4 0s-0.4 1 0 1.4l5.3 5.3-5.3 5.3c-0.4 0.4-0.4 1 0 1.4 0.2 0.2 0.4 0.3 0.7 0.3s0.5-0.1 0.7-0.3l5.3-5.3 5.3 5.3c0.2 0.2 0.5 0.3 0.7 0.3s0.5-0.1 0.7-0.3c0.4-0.4 0.4-1 0-1.4l-5.3-5.3z"></path>
    </symbol>
    <symbol id="icon-brand-play-gradient" viewBox="0 0 27 32">
        <linearGradient id="iconGradientAdonis" x1="0" y1="0" x2="100%"
		y2="0">
	<stop offset="0%" stop-color="#b08cf9"></stop>
	<stop offset="100%" stop-color="#91a5f4"></stop></linearGradient>
        <defs>
	<linearGradient x1="0" y1="0" x2="100%" y2="0">
	<stop offset="0%" stop-color="#b08cf9"></stop>
	<stop offset="100%" stop-color="#91a5f4"></stop></linearGradient></defs>
	<path fill="url(#iconGradientAdonis)"
		d="M2.594 0.275c-0.257-0.166-0.571-0.265-0.908-0.265-0.932 0-1.688 0.756-1.688 1.688 0 0.028 0.001 0.055 0.002 0.082l-0-0.004v13.246l16.702-6.219zM26.030 14.49l-4.184-2.541-21.846 8.102v10.154c-0.001 0.024-0.002 0.051-0.002 0.079 0 0.927 0.752 1.679 1.679 1.679 0.319 0 0.617-0.089 0.871-0.243l-0.007 0.004c1.501-0.888 22.21-13.433 23.489-14.214 0.52-0.316 0.863-0.88 0.863-1.524s-0.342-1.207-0.855-1.519l-0.008-0.004z"></path>
    </symbol>
    <symbol id="icon-brand-play" viewBox="0 0 27 32">
        <path
		d="M2.594 0.275c-0.257-0.166-0.571-0.265-0.908-0.265-0.932 0-1.688 0.756-1.688 1.688 0 0.028 0.001 0.055 0.002 0.082l-0-0.004v13.246l16.702-6.219zM26.030 14.49l-4.184-2.541-21.846 8.102v10.154c-0.001 0.024-0.002 0.051-0.002 0.079 0 0.927 0.752 1.679 1.679 1.679 0.319 0 0.617-0.089 0.871-0.243l-0.007 0.004c1.501-0.888 22.21-13.433 23.489-14.214 0.52-0.316 0.863-0.88 0.863-1.524s-0.342-1.207-0.855-1.519l-0.008-0.004z"></path>
    </symbol>
    <symbol id="icon-users" viewBox="0 0 32 32">
        <path
		d="M14.496 22c4.136 0 7.504-4.096 7.504-9.128s-3.368-9.12-7.504-9.12c-2.195 0.041-4.134 1.105-5.363 2.735l-0.013 0.017c-1.323 1.704-2.121 3.874-2.121 6.23 0 0.060 0 0.12 0.002 0.179l-0-0.009c0 5 3.4 9.096 7.496 9.096zM14.496 5.752c3.040 0 5.504 3.2 5.504 7.12s-2.464 7.128-5.504 7.128-5.496-3.2-5.496-7.128 2.464-7.12 5.496-7.12zM20.8 21c-0.552 0-1 0.448-1 1s0.448 1 1 1v0c3.422 0.005 6.195 2.778 6.2 6.2v0c0 0.442-0.358 0.8-0.8 0.8v0h-23.4c-0.442 0-0.8-0.358-0.8-0.8v0c0.005-3.422 2.778-6.195 6.2-6.2h0c0.552 0 1-0.448 1-1s-0.448-1-1-1v0c-4.527 0.005-8.195 3.673-8.2 8.2v0c0 1.546 1.254 2.8 2.8 2.8v0h23.4c1.546 0 2.8-1.254 2.8-2.8v0c-0.005-4.527-3.673-8.195-8.2-8.2h-0zM15.2 2.64c0.647-0.4 1.432-0.637 2.271-0.64h0.001c3.032 0 5.496 3.2 5.496 7.128 0.001 0.047 0.001 0.102 0.001 0.158 0 0.678-0.073 1.339-0.213 1.975l0.011-0.061c-0.017 0.068-0.026 0.146-0.026 0.227 0 0.471 0.325 0.865 0.763 0.972l0.007 0.001c0.035 0.004 0.075 0.006 0.116 0.006s0.081-0.002 0.121-0.006l-0.005 0c0.477-0.006 0.873-0.344 0.967-0.793l0.001-0.007c0.183-0.749 0.288-1.61 0.288-2.494 0-0.006 0-0.012-0-0.019v0.001c0-4.992-3.4-9.088-7.496-9.088-1.215 0.004-2.35 0.345-3.316 0.936l0.028-0.016c-0.37 0.152-0.626 0.51-0.626 0.927 0 0.552 0.448 1 1 1 0.23 0 0.443-0.078 0.612-0.209l-0.002 0.002zM24 17.040c-0.552 0-1 0.448-1 1s0.448 1 1 1v0c3.326 0.053 6.002 2.761 6.002 6.095 0 0.059-0.001 0.118-0.003 0.177l0-0.009c-0.001 0.119-0.027 0.232-0.074 0.333l0.002-0.005c-0.052 0.118-0.083 0.256-0.083 0.401 0 0.407 0.241 0.758 0.589 0.917l0.006 0.003c0.114 0.056 0.249 0.088 0.391 0.088 0.006 0 0.012-0 0.018-0h-0.001c0.414-0.011 0.764-0.27 0.91-0.633l0.002-0.007c0.152-0.333 0.24-0.723 0.24-1.133 0-0.004 0-0.008-0-0.012v0.001c0.001-0.048 0.002-0.104 0.002-0.161 0-4.438-3.571-8.042-7.997-8.095l-0.005-0z"></path>
    </symbol>
    <symbol id="icon-songs-3" viewBox="0 0 32 32">
        <path
		d="M31.286 0.469c-0.363-0.305-0.818-0.469-1.285-0.469-0.115 0-0.232 0.010-0.348 0.031l-17.002 3c-0.956 0.168-1.652 0.998-1.652 1.969v17.17c-1.015-0.736-2.332-1.17-3.794-1.17-0.85 0-1.7 0.141-2.529 0.416-1.898 0.633-3.42 1.902-4.176 3.484-0.584 1.223-0.659 2.553-0.214 3.746 0.761 2.038 2.923 3.354 5.508 3.354 0.85 0 1.7-0.139 2.528-0.416 1.897-0.631 3.419-1.9 4.175-3.48 0.325-0.682 0.477-1.396 0.483-2.104h0.018v-16c0.115 0 0.232-0.010 0.348-0.029l16.655-2.939v12.138c-1.016-0.736-2.332-1.17-3.795-1.17-0.85 0-1.701 0.141-2.529 0.416-1.898 0.633-3.42 1.902-4.174 3.484-0.584 1.223-0.66 2.553-0.215 3.746 0.762 2.038 2.922 3.354 5.508 3.354 0.85 0 1.701-0.139 2.529-0.416 1.896-0.631 3.418-1.9 4.174-3.48 0.326-0.682 0.477-1.396 0.484-2.104h0.018v-21c0-0.59-0.262-1.152-0.715-1.531zM7.688 29.688c-2.396 0.799-4.873 0.018-5.529-1.74-0.658-1.76 0.751-3.834 3.146-4.633 2.396-0.799 4.873-0.020 5.529 1.74 0.659 1.759-0.75 3.834-3.146 4.633zM26.653 26.688c-2.398 0.799-4.875 0.018-5.531-1.74-0.658-1.76 0.752-3.834 3.146-4.633 2.398-0.799 4.875-0.020 5.531 1.74 0.659 1.759-0.749 3.834-3.146 4.633zM29.96 5l-17.002 3v-3l17.002-3v3z"></path>
    </symbol>
    <symbol id="icon-plus" viewBox="0 0 24 24">
        <path
		d="M19 11h-6v-6c0-0.6-0.4-1-1-1s-1 0.4-1 1v6h-6c-0.6 0-1 0.4-1 1s0.4 1 1 1h6v6c0 0.6 0.4 1 1 1s1-0.4 1-1v-6h6c0.6 0 1-0.4 1-1s-0.4-1-1-1z"></path>
    </symbol>
    <symbol id="icon-bag" viewBox="0 0 26 32">
        <path
		d="M23.77 8.909c-0.027-0.493-0.422-0.886-0.913-0.909l-0.002-0h-4.57v-2.003c0-3.302-2.458-5.997-5.485-5.997s-5.485 2.694-5.485 5.997v2.003h-4.57c-0.494 0.023-0.889 0.416-0.915 0.906l-0 0.002-1.83 22.003c-0.003 0.030-0.005 0.066-0.005 0.102 0 0.251 0.089 0.482 0.237 0.662l-0.001-0.002c0.164 0.198 0.41 0.324 0.684 0.326h23.77c0.273-0.004 0.516-0.13 0.677-0.325l0.001-0.002c0.15-0.179 0.241-0.413 0.241-0.667 0-0.033-0.002-0.066-0.005-0.099l0 0.004zM9.146 5.997c-0.002-0.049-0.004-0.107-0.004-0.164 0-2.057 1.617-3.736 3.649-3.835l0.009-0c2.041 0.1 3.658 1.779 3.658 3.836 0 0.058-0.001 0.115-0.004 0.172l0-0.008v2.003h-7.309zM1.92 29.997l1.664-20h3.738v2.278c-0.558 0.369-0.922 0.994-0.922 1.704 0 0.009 0 0.017 0 0.026v-0.001c-0.001 0.024-0.002 0.051-0.002 0.079 0 1.029 0.81 1.87 1.828 1.918l0.004 0c1.019-0.052 1.826-0.89 1.826-1.918 0-0.028-0.001-0.056-0.002-0.083l0 0.004c0-0.011 0-0.023 0-0.036 0-0.703-0.358-1.323-0.902-1.687l-0.007-0.005v-2.278h7.309v2.278c-0.551 0.369-0.909 0.988-0.909 1.692 0 0.013 0 0.025 0 0.038l-0-0.002c-0.001 0.024-0.002 0.051-0.002 0.079 0 1.027 0.807 1.866 1.821 1.918l0.005 0c1.022-0.048 1.832-0.889 1.832-1.918 0-0.028-0.001-0.055-0.002-0.083l0 0.004c0-0.008 0-0.019 0-0.029 0-0.707-0.361-1.33-0.908-1.695l-0.007-0.005v-2.278h3.738l1.658 20z"></path>
    </symbol>
</svg>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->

<script src="/WaterMelon/assets/vendors/jquery/jquery.min.js"></script>
<script src="/WaterMelon/assets/vendors/bootstrap/js/popper.min.js"></script>
<script src="/WaterMelon/assets/vendors/bootstrap/js/bootstrap.min.js"></script>
<script src="/WaterMelon/assets/vendors/imagesloaded/imagesloaded.pkgd.min.js"></script>
<script src="/WaterMelon/assets/vendors/jplayer/jquery.jplayer.min.js"></script>
<script src="/WaterMelon/assets/vendors/jplayer/jplayer.playlist.js"></script>
<script src="/WaterMelon/assets/vendors/owl/js/owl.carousel.min.js"></script>
<script src="/WaterMelon/assets/vendors/anime/anime.min.js"></script>
<script
	src="/WaterMelon/assets/vendors/perfect-scrollbar/js/perfect-scrollbar.min.js"></script>
<script src="/WaterMelon/assets/vendors/masonry/masonry.pkgd.min.js"></script>
<script src="/WaterMelon/assets/vendors/history/jquery.history.js"></script>
<script src="/WaterMelon/assets/js/bootstrap-hover-menu.js"></script>
<script src="/WaterMelon/assets/js/player.js"></script>
<script src="/WaterMelon/assets/js/viewport.js"></script>
<script src="/WaterMelon/assets/js/effects.js"></script>
<script src="/WaterMelon/assets/js/dropdown-menu.js"></script>
<script src="/WaterMelon/assets/js/app.js"></script>
</body>
</html>