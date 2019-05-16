<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="single.*"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%> 
<!DOCTYPE html>
 <html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1"> 
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
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
<link href="/WaterMelon/assets/vendors/owl/css/owl.carousel.min.css"
	rel="stylesheet">
<link
	href="/WaterMelon/assets/vendors/perfect-scrollbar/css/perfect-scrollbar.css"
	rel="stylesheet">
<link href="/WaterMelon/assets/css/adonis.css" rel="stylesheet">
<link rel="stylesheet" href="/WaterMelon/assets/css/comment.css">
<%
String t_ID = "0";
	if(request.getAttribute("single")!=null){
	SingleDTO dto = (SingleDTO) request.getAttribute("single");
	t_ID = String.valueOf(dto.getT_ID());
	}

	request.setCharacterEncoding("utf-8");

%>
</head>
<div id="wrap" class="main-wrap">
	<div class="adonis-player-wrap" data-sticky-offset="150">
		<div id="adonis_jp_container" class="master-container-holder"
			role="application" aria-label="media player">
			<div id="adonis_jplayer_main" class="jp-jplayer"></div>
			<div class="adonis-player-horizontal">
				<div class="pl-e-15 pl-e-xl-50 pr-e-15 pr-e-xl-50">
					<div
						class="row adonis-player pt-2 pb-2 flex-nowrap justify-content-between align-items-center">
						<div class="col-sm-5 col-lg-3 col-xxl-3 d-none d-sm-block">
							<div class="media current-item">
								<div class="mr-3 song-poster sm">
									<img class="box-rounded-sm"
										src="/WaterMelon/assets/images/hot-song/hot-14.jpg" alt="">
								</div>
								<div class="des">
									<a href="#"><div class="jp-title h6 mb-1"
											aria-label="title">You are a Meanone</div></a>
									<div class="artist-name inactive-color">
										<a href="#" class="inactive-color">Ady Grammer</a>
									</div>
								</div>
							</div>
							<div class="jp-details">
								<div class="jp-title mt-2" aria-label="title">&nbsp;</div>
							</div>
						</div>
						<div
							class="col-auto col-lg-5 col-xxl-6 d-flex flex-column align-items-center">
							<div
								class="m-auto d-flex flex-row lh-0 player-controls align-items-center fs-3">
								<div class="current-item d-block d-sm-none">
									<div class="mr-3 song-poster sm">
										<img class="box-rounded-sm"
											src="/WaterMelon/assets/images/hot-song/hot-14.jpg" alt="">
									</div>
								</div>

								<div
									class="control-primary d-flex align-items-center justify-content-between">
									<a class="jp-previous mr-1" role="button" tabindex="0"><span
										class="adonis-icon icon-5x"><svg version="1.1"
												xmlns="http://www.w3.org/2000/svg" height="15"
												viewBox="0 0 58 32">
												<path
													d="M55.064 0.272l-25.2 14.192c-0.555 0.299-0.925 0.876-0.925 1.54s0.371 1.241 0.916 1.535l0.009 0.005c1.336 0.784 23.64 13.344 25.256 14.216 0.265 0.162 0.585 0.258 0.928 0.258 0.986 0 1.787-0.793 1.8-1.777v-28.433c0-0.004 0-0.009 0-0.014 0-0.999-0.809-1.808-1.808-1.808-0.362 0-0.7 0.107-0.983 0.29l0.007-0.004zM26.12 0.272c-1.112 0.624-23.304 13.12-25.192 14.192-0.555 0.299-0.925 0.876-0.925 1.54s0.371 1.241 0.916 1.535l0.009 0.005c1.36 0.8 23.64 13.344 25.248 14.216 0.265 0.161 0.586 0.257 0.928 0.257 0.987 0 1.79-0.792 1.808-1.775l0-0.002v-28.432c0-0.001 0-0.003 0-0.005 0-1.003-0.813-1.816-1.816-1.816-0.362 0-0.7 0.106-0.983 0.289l0.007-0.004z"></path></svg></span></a>
									<a class="jp-play ml-sm-3 mr-sm-3 fs-6" role="button"
										tabindex="0"> <span class="adonis-icon icon-play icon-2x"><svg
												version="1.1" xmlns="http://www.w3.org/2000/svg" width="18"
												height="20" viewBox="0 0 29 32"> <path
													d="M27.703 14.461l-24.945-14.187c-0.272-0.174-0.604-0.278-0.96-0.278-0.993 0-1.798 0.805-1.798 1.798 0 0.001 0 0.002 0 0.004v-0 28.434c0.004 0.982 0.801 1.776 1.783 1.776 0.338 0 0.653-0.094 0.922-0.257l-0.008 0.004c1.524-0.869 23.65-13.44 25.006-14.217 0.549-0.303 0.914-0.878 0.914-1.539s-0.366-1.236-0.905-1.534l-0.009-0.005z"></path></svg></span>
										<span class="adonis-icon icon-pause icon-2x"><svg
												version="1.1" xmlns="http://www.w3.org/2000/svg" height="20"
												viewBox="0 0 29 32">
												<path
													d="M19.2 0h8c0.884 0 1.6 0.716 1.6 1.6v28.8c0 0.884-0.716 1.6-1.6 1.6h-8c-0.884 0-1.6-0.716-1.6-1.6v-28.8c0-0.884 0.716-1.6 1.6-1.6z"></path>
												<path
													d="M1.6 0h8c0.884 0 1.6 0.716 1.6 1.6v28.8c0 0.884-0.716 1.6-1.6 1.6h-8c-0.884 0-1.6-0.716-1.6-1.6v-28.8c0-0.884 0.716-1.6 1.6-1.6z"></path></svg></span>
									</a> <a class="jp-next" role="button" tabindex="0"><span
										class="adonis-icon icon-5x"><svg version="1.1"
												xmlns="http://www.w3.org/2000/svg" height="15"
												viewBox="0 0 58 32">
												<path
													d="M28 14.464l-25.216-14.192c-0.276-0.179-0.614-0.286-0.976-0.286-0.999 0-1.808 0.809-1.808 1.808 0 0.005 0 0.010 0 0.015v-0.001 28.432c0.013 0.985 0.814 1.778 1.8 1.778 0.343 0 0.663-0.096 0.936-0.262l-0.008 0.005c1.6-0.872 23.896-13.432 25.256-14.216 0.559-0.298 0.934-0.877 0.934-1.544 0-0.66-0.367-1.235-0.908-1.531l-0.009-0.005zM56.944 14.464l-25.216-14.192c-0.276-0.179-0.614-0.286-0.976-0.286-0.999 0-1.808 0.809-1.808 1.808 0 0.005 0 0.010 0 0.015v-0.001 28.432c0.013 0.985 0.814 1.778 1.8 1.778 0.343 0 0.663-0.096 0.936-0.262l-0.008 0.005c1.6-0.872 23.888-13.432 25.256-14.216 0.55-0.303 0.917-0.879 0.917-1.54s-0.367-1.237-0.908-1.535l-0.009-0.005z"></path></svg></span></a>
								</div>


							</div>
							<div class="col-12 d-none d-xl-flex align-items-center">
								<div class="jp-current-time mr-3 jp-time" role="timer"
									aria-label="time"></div>
								<div class="jp-progress d-flex align-items-center mt-1 mb-2">
									<div class="jp-seek-bar">
										<div class="jp-play-bar"></div>
									</div>
								</div>
								<div class="jp-duration ml-3" role="timer" aria-label="duration"></div>
							</div>
						</div>
						<div
							class="col-auto col-lg-3 col-xxl-3 d-flex align-items-center justify-content-end pl-0 pl-sm-3">
							<div class="ml-sm-4 mr-2">
								<a class="toggle-off-canvas" data-target="#adonis-playlist"
									role="button" tabindex="0"><span
									class="adonis-icon icon-4x"><svg version="1.1"
											xmlns="http://www.w3.org/2000/svg" height="13"
											viewBox="0 0 59 32">
											<path
												d="M16 4.571h41.143c1.262 0 2.286-1.023 2.286-2.286s-1.023-2.286-2.286-2.286v0h-41.143c-1.262 0-2.286 1.023-2.286 2.286s1.023 2.286 2.286 2.286v0zM2.286 0c-1.262 0-2.286 1.023-2.286 2.286s1.023 2.286 2.286 2.286c1.262 0 2.286-1.023 2.286-2.286v0c0-1.262-1.023-2.286-2.286-2.286v0zM57.143 13.714h-41.143c-1.262 0-2.286 1.023-2.286 2.286s1.023 2.286 2.286 2.286v0h41.143c1.262 0 2.286-1.023 2.286-2.286s-1.023-2.286-2.286-2.286v0zM2.286 13.714c-1.262 0-2.286 1.023-2.286 2.286s1.023 2.286 2.286 2.286c1.262 0 2.286-1.023 2.286-2.286v0c0-1.262-1.023-2.286-2.286-2.286v0zM57.143 27.429h-41.143c-1.262 0-2.286 1.023-2.286 2.286s1.023 2.286 2.286 2.286v0h41.143c1.262 0 2.286-1.023 2.286-2.286s-1.023-2.286-2.286-2.286v0zM2.286 27.429c-1.262 0-2.286 1.023-2.286 2.286s1.023 2.286 2.286 2.286c1.262 0 2.286-1.023 2.286-2.286v0c0-1.262-1.023-2.286-2.286-2.286v0z"></path></svg></span></a>
							</div>
							<div
								class="jp-volume-controls flex-row align-items-center ml-3 d-none d-xl-flex">
								<a class="mr-3 adonis-mute-control" role="button" tabindex="0">
									<span class="adonis-icon icon-volume icon-3x"><svg
											version="1.1" xmlns="http://www.w3.org/2000/svg" height="13"
											viewBox="0 0 48 32">
											<path
												d="M31.76 9.056l-1.36 2.592c1.265 1.020 2.071 2.567 2.080 4.302v0.002c0 1.896-0.456 3.616-1.952 4.648l1.28 2.184c1.962-1.642 3.202-4.092 3.202-6.831 0-2.776-1.272-5.254-3.266-6.884l-0.016-0.013zM36.664 4.424l-1.664 2.288c2.479 2.331 4.027 5.627 4.040 9.286v0.002c-0.027 3.717-1.634 7.053-4.182 9.375l-0.010 0.009 1.728 2.2c3.058-2.92 4.96-7.028 4.96-11.581 0-0.001 0-0.002 0-0.003v0c-0.017-4.532-1.877-8.626-4.87-11.574l-0.002-0.002zM41.6 0l-1.848 2.168c3.497 3.563 5.665 8.442 5.696 13.826l0 0.006c-0.043 5.368-2.202 10.223-5.683 13.779l0.003-0.003 1.832 2.168c3.946-4.151 6.373-9.778 6.373-15.972s-2.427-11.821-6.383-15.982l0.009 0.010zM0 10.888v10.4c0 1.328 1.2 3.016 2.688 3.016h8.080v-16.616h-8.080c-1.488 0-2.688 1.912-2.688 3.2zM23.272 0.136l-11.272 7.4v16.984l11.272 7.48c1.48 0 3.608-1.072 3.608-2.4v-27.072c0-1.32-2.128-2.392-3.608-2.392z"></path></svg></span>
									<span class="adonis-icon icon-mute icon-3x"><svg
											version="1.1" height="13" xmlns="http://www.w3.org/2000/svg"
											viewBox="0 0 18.75 11.95">
											<g data-name="Layer 2">
											<g id="Group_4" data-name="Group 4">
											<path
												d="M18.75,8.12V9.61H17.26L15.38,7.73,13.49,9.61H12V8.12l1.88-1.89L12,4.35V2.86h1.49l1.89,1.88,1.88-1.88h1.49V4.35L16.87,6.23Z" />
											<g id="sound_2" data-name="sound 2">
											<path class="cls-1"
												d="M0,4V7.92A1.16,1.16,0,0,0,1,9.05H4V2.83H1C.45,2.83,0,3.54,0,4ZM8.73,0,4.51,2.78V9.14L8.73,12c.55,0,1.35-.4,1.35-.9V.9C10.08.4,9.28,0,8.73,0Z" /></g></g></g></svg></span>
								</a>
								<div class="jp-volume-bar d-flex align-items-center">
									<div class="jp-volume-bar-value"></div>
								</div>
							</div>
							<div class="align-items-center d-flex lh-0 ml-md-4">
								<a href="#" class="pl-2 pr-2 d-inline-block fs-2 inactive-color"><span
									class="adonis-icon icon-2x"><svg
											xmlns="http://www.w3.org/2000/svg" version="1.1">
											<use xlink:href="#icon-heart-blank"></use></svg></span></a>

							</div>
						</div>
					</div>
				</div>
				<!--./ container-fluid-->
				<div class="pl-e-15 pl-e-xl-50 pr-e-15 pr-e-xl-50 d-xl-none">
					<div class="row d-flex justify-content-center">
						<div class="col-12 d-flex align-items-center">
							<div class="jp-current-time mr-3 jp-time" role="timer"
								aria-label="time"></div>
							<div class="jp-progress d-flex align-items-center mt-1 mb-2">
								<div class="jp-seek-bar">
									<div class="jp-play-bar"></div>
								</div>
							</div>
							<div class="jp-duration ml-3" role="timer" aria-label="duration"></div>
						</div>
					</div>
				</div>
			</div>
			<div id="adonis-playlist"
				class="adonis-playlist off-canvas off-canvas-right d-flex flex-column">
				<div class="adonis-playlist-player adonis-player player-bg-yellow">
					<a class="close-offcanvas m-2" data-target="#adonis-playlist"
						href="#"><span class="adonis-icon icon-3x"><svg
								version="1.1" xmlns="http://www.w3.org/2000/svg" height="20"
								viewBox="0 0 24 24">
								<path
									d="M13.4 12l5.3-5.3c0.4-0.4 0.4-1 0-1.4s-1-0.4-1.4 0l-5.3 5.3-5.3-5.3c-0.4-0.4-1-0.4-1.4 0s-0.4 1 0 1.4l5.3 5.3-5.3 5.3c-0.4 0.4-0.4 1 0 1.4 0.2 0.2 0.4 0.3 0.7 0.3s0.5-0.1 0.7-0.3l5.3-5.3 5.3 5.3c0.2 0.2 0.5 0.3 0.7 0.3s0.5-0.1 0.7-0.3c0.4-0.4 0.4-1 0-1.4l-5.3-5.3z"></path></svg></span>
					</a>
					<div class="blurred-bg-wrap">
						<div class="blurred-bg"></div>
					</div>
					<div class="media current-item">
						<div class="song-poster mb-4 col-4 p-0">
							<img class="box-rounded-sm"
								src="/WaterMelon/assets/images/playlists/playlist-2.jpg" alt="">
						</div>
						<div class="player-details col-8 pr-0 pl-20 pl-e-lg-30">
							<h3 class="h2 mt-3 mb-3 jp-title">What Makes You Country</h3>
							<p class="artist-name">Adonis Music R&amp;B</p>
							<div class="controls d-flex flex-row justify-content-between">
								<div class="fs-3">
									<a class="jp-shuffle inactive-color mr-3 ml-0" role="button"
										tabindex="0"> <span class="adonis-icon icon-2x"><svg
												version="1.1" xmlns="http://www.w3.org/2000/svg" height="15"
												viewBox="0 0 38 32">
												<path
													d="M28.070 17.363c-0.284-0.188-0.634-0.3-1.009-0.3-0.305 0-0.593 0.074-0.846 0.205l0.010-0.005c-0.576 0.304-0.962 0.899-0.962 1.584 0 0 0 0 0 0v0 4.251h-3.609c-1.161-0.002-2.258-0.276-3.23-0.761l0.042 0.019c-0.233-0.117-0.507-0.186-0.797-0.186-0.699 0-1.304 0.397-1.604 0.977l-0.005 0.010c-0.118 0.23-0.187 0.503-0.187 0.791 0 0.7 0.408 1.305 0.999 1.59l0.011 0.005c1.392 0.704 3.033 1.118 4.77 1.123h3.611v3.549c-0 0.005-0 0.011-0 0.017 0 0.675 0.388 1.259 0.953 1.542l0.010 0.005c0.243 0.135 0.533 0.216 0.841 0.221l0.001 0c0.003 0 0.007 0 0.011 0 0.37 0 0.713-0.112 0.998-0.305l-0.006 0.004 8.722-5.634c0.481-0.32 0.794-0.86 0.794-1.474s-0.313-1.153-0.788-1.47l-0.006-0.004zM28.872 26.887v-4.732l3.609 2.366zM1.804 8.882h1.804c1.163 0.010 2.259 0.29 3.23 0.781l-0.042-0.019c0.237 0.125 0.519 0.198 0.818 0.198 0.986 0 1.784-0.799 1.784-1.784 0-0.699-0.402-1.304-0.988-1.597l-0.010-0.005c-1.398-0.702-3.046-1.116-4.79-1.123h-1.807c-0.057-0.006-0.122-0.010-0.189-0.010-0.986 0-1.784 0.799-1.784 1.784s0.799 1.784 1.784 1.784c0.067 0 0.132-0.004 0.197-0.011l-0.008 0.001zM21.694 8.882h3.609v4.271c-0 0.005-0 0.011-0 0.017 0 0.675 0.388 1.259 0.953 1.542l0.010 0.005c0.243 0.135 0.533 0.216 0.841 0.221l0.001 0c0.36-0.006 0.692-0.118 0.969-0.305l-0.006 0.004 8.682-5.694c0.486-0.32 0.802-0.862 0.802-1.479 0-0.002 0-0.003 0-0.005v0c-0.006-0.617-0.32-1.158-0.796-1.48l-0.006-0.004-8.682-5.674c-0.265-0.155-0.583-0.247-0.922-0.247s-0.658 0.092-0.931 0.252l0.009-0.005c-0.576 0.304-0.962 0.899-0.962 1.584 0 0 0 0 0 0v0 3.449h-3.609c-0.012-0-0.026-0-0.040-0-5.925 0-10.733 4.786-10.767 10.704v0.003c-0.068 3.912-3.255 7.058-7.177 7.058-0.022 0-0.043-0-0.064-0l0.003 0h-1.804c-0.986 0-1.784 0.799-1.784 1.784s0.799 1.784 1.784 1.784h1.804c0.024 0 0.053 0 0.081 0 5.897 0 10.687-4.741 10.766-10.619l0-0.007c0.011-3.956 3.221-7.158 7.178-7.158 0.021 0 0.042 0 0.063 0l-0.003-0zM28.912 5.093l3.609 2.366-3.609 2.366z"></path></svg></span>
									</a> <a class="jp-repeat inactive-color ml-1" role="button"
										tabindex="0"><span class="adonis-icon icon-3x"><svg
												version="1.1" xmlns="http://www.w3.org/2000/svg" height="15"
												viewBox="0 0 44 32">
												<path
													d="M32.122 4.45c-0.055-0.001-0.119-0.001-0.184-0.001-6.422 0-11.64 5.155-11.742 11.553l-0 0.010c-0.068 4.436-3.68 8.006-8.126 8.006-0.050 0-0.101-0-0.151-0.001l0.008 0c-0.037 0.001-0.080 0.001-0.123 0.001-4.446 0-8.058-3.57-8.126-8l-0-0.006c0.024-3.503 2.299-6.467 5.45-7.521l0.056-0.016v2.194c0.022 0.665 0.408 1.235 0.965 1.519l0.010 0.005c0.26 0.136 0.567 0.218 0.892 0.223l0.002 0c0.014 0 0.031 0.001 0.047 0.001 0.325 0 0.631-0.083 0.897-0.229l-0.010 0.005 7.335-4.45c0.526-0.308 0.874-0.87 0.874-1.514s-0.348-1.206-0.866-1.509l-0.008-0.004-7.335-4.45c-0.273-0.16-0.601-0.254-0.952-0.254-0.32 0-0.622 0.079-0.887 0.218l0.010-0.005c-0.56 0.299-0.935 0.879-0.935 1.547 0 0.006 0 0.012 0 0.019v-0.001 2.987c-5.27 1.124-9.173 5.717-9.224 11.23l-0 0.006c0.114 6.409 5.336 11.562 11.762 11.562 0.058 0 0.115-0 0.173-0.001l-0.009 0c0.049 0.001 0.107 0.001 0.164 0.001 6.426 0 11.649-5.152 11.762-11.551l0-0.011c0.224-4.387 3.836-7.859 8.259-7.859s8.035 3.472 8.258 7.839l0.001 0.020c-0.026 3.497-2.302 6.455-5.45 7.501l-0.056 0.016v-2.194c-0.001-0.667-0.375-1.246-0.925-1.54l-0.009-0.005c-0.268-0.157-0.59-0.25-0.935-0.25s-0.666 0.093-0.943 0.255l0.009-0.005-7.335 4.592c-0.528 0.302-0.877 0.862-0.877 1.503s0.35 1.201 0.869 1.499l0.008 0.004 7.335 4.45c0.272 0.166 0.601 0.264 0.953 0.264 0.008 0 0.016-0 0.024-0h-0.001c0.006 0 0.013 0 0.021 0 0.984 0 1.785-0.787 1.808-1.766l0-0.002v-3.088c5.257-1.133 9.145-5.725 9.183-11.231l0-0.004c-0.114-6.409-5.336-11.562-11.762-11.562-0.058 0-0.115 0-0.173 0.001l0.009-0zM12.841 4.978l2.032 1.239-2.032 1.239zM31.126 27.022l-2.032-1.239 2.032-1.239z"></path></svg></span></a>
								</div>
								<div class="lh-0 align-items-center d-flex">
									<a href="#" class="inactive-color fs-3"><span
										class="adonis-icon icon-2x"><svg
												xmlns="http://www.w3.org/2000/svg" version="1.1">
												<use xlink:href="#icon-heart-blank"></use></svg></span></a> <a href="#"
										class="inactive-color ml-3 current-track-menu"><span
										class="adonis-icon icon-5x"><svg version="1.1"
												xmlns="http://www.w3.org/2000/svg" height="26"
												viewBox="0 0 32 32">
												<path
													d="M5.681 12.808c-1.763 0-3.192 1.429-3.192 3.192s1.429 3.192 3.192 3.192c1.763 0 3.192-1.429 3.192-3.192v0c0-1.763-1.429-3.192-3.192-3.192v0zM16.322 12.808c-1.763 0-3.192 1.429-3.192 3.192s1.429 3.192 3.192 3.192c1.763 0 3.192-1.429 3.192-3.192v0c0-1.763-1.429-3.192-3.192-3.192v0zM26.963 12.808c-1.763 0-3.192 1.429-3.192 3.192s1.429 3.192 3.192 3.192c1.763 0 3.192-1.429 3.192-3.192v0c0-1.763-1.429-3.192-3.192-3.192v0z"></path></svg></span></a>
								</div>
							</div>
						</div>
					</div>
					<div class="d-flex fs-1 mt-3 media align-items-center controls">
						<div
							class="lh-0 d-flex playlist-player-control justify-content-between align-items-center col-4 p-0 ">
							<a class="jp-previous" role="button" tabindex="0"><span
								class="adonis-icon icon-4x"><svg version="1.1"
										xmlns="http://www.w3.org/2000/svg" height="13"
										viewBox="0 0 58 32">
										<path
											d="M55.064 0.272l-25.2 14.192c-0.555 0.299-0.925 0.876-0.925 1.54s0.371 1.241 0.916 1.535l0.009 0.005c1.336 0.784 23.64 13.344 25.256 14.216 0.265 0.162 0.585 0.258 0.928 0.258 0.986 0 1.787-0.793 1.8-1.777v-28.433c0-0.004 0-0.009 0-0.014 0-0.999-0.809-1.808-1.808-1.808-0.362 0-0.7 0.107-0.983 0.29l0.007-0.004zM26.12 0.272c-1.112 0.624-23.304 13.12-25.192 14.192-0.555 0.299-0.925 0.876-0.925 1.54s0.371 1.241 0.916 1.535l0.009 0.005c1.36 0.8 23.64 13.344 25.248 14.216 0.265 0.161 0.586 0.257 0.928 0.257 0.987 0 1.79-0.792 1.808-1.775l0-0.002v-28.432c0-0.001 0-0.003 0-0.005 0-1.003-0.813-1.816-1.816-1.816-0.362 0-0.7 0.106-0.983 0.289l0.007-0.004z"></path></svg></span>
							</a> <a class="jp-play fs-4" role="button" tabindex="0"> <span
								class="adonis-icon icon-play icon-2x"><svg version="1.1"
										xmlns="http://www.w3.org/2000/svg" height="19"
										viewBox="0 0 29 32">
										<path
											d="M27.703 14.461l-24.945-14.187c-0.272-0.174-0.604-0.278-0.96-0.278-0.993 0-1.798 0.805-1.798 1.798 0 0.001 0 0.002 0 0.004v-0 28.434c0.004 0.982 0.801 1.776 1.783 1.776 0.338 0 0.653-0.094 0.922-0.257l-0.008 0.004c1.524-0.869 23.65-13.44 25.006-14.217 0.549-0.303 0.914-0.878 0.914-1.539s-0.366-1.236-0.905-1.534l-0.009-0.005z"></path></svg></span>
								<span class="adonis-icon icon-pause icon-2x"><svg
										version="1.1" xmlns="http://www.w3.org/2000/svg" height="19"
										viewBox="0 0 29 32">
										<path
											d="M19.2 0h8c0.884 0 1.6 0.716 1.6 1.6v28.8c0 0.884-0.716 1.6-1.6 1.6h-8c-0.884 0-1.6-0.716-1.6-1.6v-28.8c0-0.884 0.716-1.6 1.6-1.6z"></path>
										<path
											d="M1.6 0h8c0.884 0 1.6 0.716 1.6 1.6v28.8c0 0.884-0.716 1.6-1.6 1.6h-8c-0.884 0-1.6-0.716-1.6-1.6v-28.8c0-0.884 0.716-1.6 1.6-1.6z"></path></svg></span>
							</a> <a class="jp-next" role="button" tabindex="0"><span
								class="adonis-icon icon-5x"><svg version="1.1"
										xmlns="http://www.w3.org/2000/svg" height="15"
										viewBox="0 0 58 32">
										<path
											d="M28 14.464l-25.216-14.192c-0.276-0.179-0.614-0.286-0.976-0.286-0.999 0-1.808 0.809-1.808 1.808 0 0.005 0 0.010 0 0.015v-0.001 28.432c0.013 0.985 0.814 1.778 1.8 1.778 0.343 0 0.663-0.096 0.936-0.262l-0.008 0.005c1.6-0.872 23.896-13.432 25.256-14.216 0.559-0.298 0.934-0.877 0.934-1.544 0-0.66-0.367-1.235-0.908-1.531l-0.009-0.005zM56.944 14.464l-25.216-14.192c-0.276-0.179-0.614-0.286-0.976-0.286-0.999 0-1.808 0.809-1.808 1.808 0 0.005 0 0.010 0 0.015v-0.001 28.432c0.013 0.985 0.814 1.778 1.8 1.778 0.343 0 0.663-0.096 0.936-0.262l-0.008 0.005c1.6-0.872 23.888-13.432 25.256-14.216 0.55-0.303 0.917-0.879 0.917-1.54s-0.367-1.237-0.908-1.535l-0.009-0.005z"></path></svg></span></a>
						</div>
						<div
							class="d-flex control-ext align-items-center col-8 pr-0 pl-20 pl-e-lg-30">
							<div class="jp-current-time mr-1 jp-time" role="timer"
								aria-label="time"></div>
							<div
								class="jp-progress d-flex ml-2 mr-2 jp-time d-flex align-items-center">
								<div class="jp-seek-bar">
									<div class="jp-play-bar"></div>
								</div>
							</div>
							<div class="jp-duration mr-1" role="timer" aria-label="duration"></div>
						</div>
					</div>
				</div>
				<div class="jp-playlist scroll-y">
					<div class="">
						<ul>
							<li>&nbsp;</li>
						</ul>
					</div>
				</div>
			</div>
			<!-- / #adonis-playlist -->
			<div class="jp-no-solution">
				<span>Update Required</span> To play the media you will need to
				either update your browser to a recent version or update your <a
					href="http://get.adobe.com/flashplayer/" target="_blank">Flash
					plugin</a>.
			</div>
		</div>
	</div>
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
							<a class="brand d-flex align-items-center" href="home.jsp"> <img
								src="../logo.png"></img>
							</a>
						</div>
					</div>
					<div
						class="col-auto col-xl-3 d-flex justify-content-end justify-content-lg-end align-items-center order-xl-3 align-items-stretch pl-0">
						<div class="d-sm-block">
							<a class="nav-link toggle-top-search" id="btn-search-4" href="#"><span
								class="adonis-icon icon-3x"><svg version="1.1"
										xmlns="http://www.w3.org/2000/svg" height="32"
										viewBox="0 0 30 32">
										<path
											d="M30.046 29.806l-7.127-7.287c2.109-2.395 3.397-5.558 3.397-9.021 0-3.721-1.486-7.094-3.896-9.56l0.003 0.003c-2.361-2.432-5.661-3.942-9.313-3.942s-6.953 1.51-9.31 3.939l-0.003 0.003c-2.388 2.462-3.86 5.824-3.86 9.53s1.472 7.068 3.863 9.533l-0.003-0.003c2.35 2.441 5.645 3.958 9.295 3.958 2.992 0 5.747-1.020 7.935-2.73l-0.028 0.021 7.207 7.383c0.232 0.225 0.548 0.364 0.896 0.368h0.001c0.344-0.001 0.656-0.142 0.881-0.368l0-0c0.252-0.237 0.409-0.573 0.409-0.945 0-0.34-0.131-0.65-0.345-0.881l0.001 0.001zM20.709 21.189c-1.906 1.978-4.577 3.206-7.536 3.206s-5.63-1.228-7.532-3.203l-0.003-0.003c-1.932-1.992-3.123-4.713-3.123-7.712s1.191-5.719 3.126-7.715l-0.003 0.003c1.906-1.978 4.577-3.206 7.536-3.206s5.63 1.228 7.532 3.203l0.003 0.003c1.932 1.992 3.123 4.713 3.123 7.712s-1.191 5.719-3.126 7.715l0.003-0.003z"></path></svg></span></a>
						</div>
						<div class="nav-item d-none d-md-block">
							<a class="nav-link notification-toggle has-notification" href="#"
								id="dropdownUsernotifications" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false"><span
								class="adonis-icon notification icon-4x"><svg
										version="1.1" xmlns="http://www.w3.org/2000/svg" height="24"
										viewBox="0 0 29 32">
										<path
											d="M19.286 25.607c-0.395 0-0.714 0.32-0.714 0.714v0 0c0 2.367-1.919 4.286-4.286 4.286s-4.286-1.919-4.286-4.286v0 0c0-0.395-0.32-0.714-0.714-0.714s-0.714 0.32-0.714 0.714v0 0c0 3.156 2.558 5.714 5.714 5.714s5.714-2.558 5.714-5.714v0 0c0-0.395-0.32-0.714-0.714-0.714v0zM27.857 23.464h-2.857v-9.179c0-5.917-4.797-10.714-10.714-10.714s-10.714 4.797-10.714 10.714v0 9.214h-2.857c-0.395 0-0.714 0.32-0.714 0.714s0.32 0.714 0.714 0.714v0h27.143c0.395 0 0.714-0.32 0.714-0.714s-0.32-0.714-0.714-0.714v0zM23.571 23.464h-18.571v-9.221c0.024-5.11 4.172-9.243 9.286-9.243 0 0 0 0 0 0v0c5.128 0 9.286 4.157 9.286 9.286v0zM14.286 2.857c0.789 0 1.429-0.64 1.429-1.429v0c0-0.789-0.64-1.429-1.429-1.429s-1.429 0.64-1.429 1.429v0c0 0.789 0.64 1.429 1.429 1.429v0z"></path></svg></span>
							<!--<span class="icon-bell fs-8"></span>--></a>
							<div
								class="dropdown-menu dropdown-menu-right p-4 notifications clearfix"
								role="menu">
								<h5>Notification</h5>
								<div class="media notification">
									<div class="user-thumb mr-3 rounded-thumb">
										<img src="/WaterMelon/assets/images/browse/browse-overview-6.jpg"
											alt="">
									</div>
									<div class="notification-desc">
										<p>
											New Album from <a href="#" class="active-color">Brenda
												Lee</a>
										</p>
										<p>
											<a href="#">Catch Me Outside</a>
										</p>
										<em class="inactive-color">2 Hours ago</em> <span
											class="adonis-icon close-notification icon-1x"><svg
												xmlns="http://www.w3.org/2000/svg" version="1.1" height="12"
												viewBox="0 0 24 24">
												<path
													d="M13.4 12l5.3-5.3c0.4-0.4 0.4-1 0-1.4s-1-0.4-1.4 0l-5.3 5.3-5.3-5.3c-0.4-0.4-1-0.4-1.4 0s-0.4 1 0 1.4l5.3 5.3-5.3 5.3c-0.4 0.4-0.4 1 0 1.4 0.2 0.2 0.4 0.3 0.7 0.3s0.5-0.1 0.7-0.3l5.3-5.3 5.3 5.3c0.2 0.2 0.5 0.3 0.7 0.3s0.5-0.1 0.7-0.3c0.4-0.4 0.4-1 0-1.4l-5.3-5.3z" /></svg></span>
									</div>
								</div>
								<div class="media notification">
									<div class="user-thumb mr-3 rounded-thumb">
										<img src="/WaterMelon/assets/images/playlists/playlist-15.jpg" alt="">
									</div>
									<div class="notification-desc">
										<p>
											New Album from <a href="#" class="active-color">Adm Smith</a>
										</p>
										<p>
											<a href="#">Catch Me Outside</a>
										</p>
										<em class="inactive-color">3 Hours ago</em> <span
											class="adonis-icon close-notification icon-1x"><svg
												xmlns="http://www.w3.org/2000/svg" version="1.1" height="12"
												viewBox="0 0 24 24">
												<path
													d="M13.4 12l5.3-5.3c0.4-0.4 0.4-1 0-1.4s-1-0.4-1.4 0l-5.3 5.3-5.3-5.3c-0.4-0.4-1-0.4-1.4 0s-0.4 1 0 1.4l5.3 5.3-5.3 5.3c-0.4 0.4-0.4 1 0 1.4 0.2 0.2 0.4 0.3 0.7 0.3s0.5-0.1 0.7-0.3l5.3-5.3 5.3 5.3c0.2 0.2 0.5 0.3 0.7 0.3s0.5-0.1 0.7-0.3c0.4-0.4 0.4-1 0-1.4l-5.3-5.3z" /></svg></span>
									</div>
								</div>
								<div class="media notification">
									<div class="user-thumb mr-3 rounded-thumb">
										<img src="/WaterMelon/assets/images/browse/browse-overview-5.jpg"
											alt="">
									</div>
									<div class="notification-desc">
										<p>
											New Album from <a href="#" class="active-color">Brenda
												Lee</a>
										</p>
										<p>
											<a href="#">Catch Me Outside</a>
										</p>
										<em class="inactive-color">5 Hours ago</em> <span
											class="adonis-icon close-notification icon-1x"><svg
												xmlns="http://www.w3.org/2000/svg" version="1.1" height="12"
												viewBox="0 0 24 24">
												<path
													d="M13.4 12l5.3-5.3c0.4-0.4 0.4-1 0-1.4s-1-0.4-1.4 0l-5.3 5.3-5.3-5.3c-0.4-0.4-1-0.4-1.4 0s-0.4 1 0 1.4l5.3 5.3-5.3 5.3c-0.4 0.4-0.4 1 0 1.4 0.2 0.2 0.4 0.3 0.7 0.3s0.5-0.1 0.7-0.3l5.3-5.3 5.3 5.3c0.2 0.2 0.5 0.3 0.7 0.3s0.5-0.1 0.7-0.3c0.4-0.4 0.4-1 0-1.4l-5.3-5.3z" /></svg></span>
									</div>
								</div>
							</div>
						</div>
						<div class="nav-item position-relative">
							<a class="nav-link dropdown-toggle w-nowrap pl-0 pr-0 pl-md-3"
								href="#" id="dropdownUserSettings" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false">
								<div class="flex-row d-inline-flex">
									<div class="user">
										<img class="rounded-circle"
											src="/WaterMelon/assets/images/user-thumb-1.jpg" alt="">
									</div>
									<span class="ml-2 mt-2 fs-1 d-none d-lg-block">Jont
										Henrry</span>
								</div>
							</a>
							<div
								class="dropdown-menu dropdown-menu-right user-settings-dropdown clearfix"
								aria-labelledby="dropdownUserSettings">
								<div class="settings-top">
									<div class="user-cover-image">
										<img src="/WaterMelon/assets/images/user/cover.jpg" alt="">
									</div>
									<div class="user-profile-image rounded-circle">
										<img src="/WaterMelon/assets/images/browse/browse-overview-6.jpg"
											alt="">
									</div>
								</div>
								<div class="settings-bottom">
									<h5 class="user-name text-center">Jont hennry</h5>
									<ul class="user-settings-menu list-unstyled">
										<li><a href="#" class="inactive-color"><span
												class="adonis-icon notification mr-3 icon-3x"><svg
														version="1.1" xmlns="http://www.w3.org/2000/svg"
														viewBox="0 0 32 32">
														<path
															d="M10 6c0-3.314 2.686-6 6-6s6 2.686 6 6c0 3.314-2.686 6-6 6s-6-2.686-6-6zM24.002 14h-1.107l-6.222 12.633 2.327-11.633-3-3-3 3 2.327 11.633-6.222-12.633h-1.107c-3.998 0-3.998 2.687-3.998 6v10h24v-10c0-3.313 0-6-3.998-6z"></path></svg></span>Your
												Profile</a></li>
										<li><a href="#" class="inactive-color"><span
												class="adonis-icon mr-3 icon-3x"><svg version="1.1"
														xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32">
														<path d="M30 19l-9 9-3-3-2 2 5 5 11-11z"></path>
														<path
															d="M14 24h10v-3.598c-2.101-1.225-4.885-2.066-8-2.321v-1.649c2.203-1.242 4-4.337 4-7.432 0-4.971 0-9-6-9s-6 4.029-6 9c0 3.096 1.797 6.191 4 7.432v1.649c-6.784 0.555-12 3.888-12 7.918h14v-2z"></path></svg></span>Following</a>
										</li>
										<li><a href="#" class="inactive-color"><span
												class="adonis-icon mr-3 icon-2x"><svg version="1.1"
														xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32">
														<path
															d="M0 0h8v8h-8zM12 2h20v4h-20zM0 12h8v8h-8zM12 14h20v4h-20zM0 24h8v8h-8zM12 26h20v4h-20z"></path></svg></span>
												Wish list</a></li>
										<li><a href="#" class="inactive-color"><span
												class="adonis-icon mr-3 icon-4x"><svg fill="#000000"
														viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
														<path
															d="M7 18c-1.1 0-1.99.9-1.99 2S5.9 22 7 22s2-.9 2-2-.9-2-2-2zM1 2v2h2l3.6 7.59-1.35 2.45c-.16.28-.25.61-.25.96 0 1.1.9 2 2 2h12v-2H7.42c-.14 0-.25-.11-.25-.25l.03-.12.9-1.63h7.45c.75 0 1.41-.41 1.75-1.03l3.58-6.49c.08-.14.12-.31.12-.48 0-.55-.45-1-1-1H5.21l-.94-2H1zm16 16c-1.1 0-1.99.9-1.99 2s.89 2 1.99 2 2-.9 2-2-.9-2-2-2z" />
														<path d="M0 0h24v24H0z" fill="none" /></svg></span>Purchased</a></li>
										<li><a href="#" class="inactive-color"><span
												class="adonis-icon mr-3 icon-2x"><svg version="1.1"
														xmlns="http://www.w3.org/2000/svg" height="32"
														viewBox="0 0 32 32">
														<path
															d="M24 20v-4h-10v-4h10v-4l6 6zM22 18v8h-10v6l-12-6v-26h22v10h-2v-8h-16l8 4v18h8v-6z"></path></svg></span>Logout</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
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
											<img class="retina box-rounded-md"
												src="${a_imgDir}"
												alt="">
										</div>
										<div class="absolute-info">
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
										</div>
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
							<h6 class="inactive-color"><%=t_ID%></h6>
							<h1> ${single.musicName}</h1>
							<p class="mb-2">
								By: ${single.artistName} <a href="#">  </a>  
							</p>
							<div class="separator mb-4 mt-4">
								<span class="separator-md"></span>
							</div>
							<p class="mb-2">${single.time}</p>
							<p class="mb-2">  </p>
							<div class="adonis-player-wrap bg-transparent mb-4"></div>
							<div class="about">
								<h4></h4>
								<p></p>
							</div>
						</div>
					</div>

					<div class="pb-4"></div>
				</section>
				<section class="album-bottom-content">
					<div class="row">
						<div class="col-md-9 order-md-2 flex-column-content-md"
							style="width: 1200px; height: 1000px;">
							<div class="comments-container"
								style="width: 1200px; height: 1000px;">
								<h1>Comments</h1>
								<br>
								<br>

								<ul id="comments-list" class="comments-list">
									<li>
										<!-- Respuestas de los comentarios -->
										<div style="width: 1000px;">
											<ul class="comments-list reply-list">
												<!-- <li>
                        Avatar
                        
                        Contenedor del Comentario
                        <div class="comment-box">
                            <div class="comment-head">
                                <h6 class="comment-name"><a href="http://creaticode.com/blog">Lorena Rojero</a></h6>
                                <span>hace 10 minutos</span>
                                <i class="fa fa-reply"></i>
                                <i class="fa fa-heart"></i>
                            </div>
                            <div class="comment-content">
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit omnis animi et iure laudantium vitae, praesentium optio, sapiente distinctio illo?
                            </div>
                        </div>
                    </li> -->

												<li style="margin-left: 1100px;">
													<!-- Contenedor del Comentario -->
													<div class="comment-box" style="width: 1100px;">
														<div class="comment-head">
															<h6 class="comment-name by-author">
																<a href="http://creaticode.com/blog">Agustin Ortiz</a>
															</h6>
															<span>hace 10 minutos</span> <i class="fa fa-reply"></i>
															<i class="fa fa-heart"></i>
														</div>
														<div class="comment-content">Lorem ipsum dolor sit
															amet, consectetur adipisicing elit. Velit omnis animi et
															iure laudantium vitae, praesentium optio, sapiente
															distinctio illo?</div>
													</div>
												</li>

												<li style="margin-left: 1100px;">
													<!-- Contenedor del Comentario -->
													<div class="comment-box" style="width: 1100px;">
														<div class="comment-head">
															<h6 class="comment-name by-author">
																<a href="http://creaticode.com/blog">Agustin Ortiz</a>
															</h6>
															<span>hace 10 minutos</span> <i class="fa fa-reply"></i>
															<i class="fa fa-heart"></i>
														</div>
														<div class="comment-content">Lorem ipsum dolor sit
															amet, consectetur adipisicing elit. Velit omnis animi et
															iure laudantium vitae, praesentium optio, sapiente
															distinctio illo?</div>
													</div>
												</li>

												<li style="margin-left: 1100px;">
													<!-- Contenedor del Comentario -->
													<div class="comment-box" style="width: 1100px;">
														<div class="comment-head">
															<h6 class="comment-name by-author">
																<a href="http://creaticode.com/blog">Agustin Ortiz</a>
															</h6>
															<span>hace 10 minutos</span> <i class="fa fa-reply"></i>
															<i class="fa fa-heart"></i>
														</div>
														<div class="comment-content">Lorem ipsum dolor sit
															amet, consectetur adipisicing elit. Velit omnis animi et
															iure laudantium vitae, praesentium optio, sapiente
															distinctio illo?</div>
													</div>
												</li>

											</ul>
										</div>
									</li>

									<!-- <li>
                <div class="comment-main-level">
                    Avatar
                    
                    Contenedor del Comentario
                    <div class="comment-box">
                        <div class="comment-head">
                            <h6 class="comment-name"><a href="http://creaticode.com/blog">Lorena Rojero</a></h6>
                            <span>hace 10 minutos</span>
                            <i class="fa fa-reply"></i>
                            <i class="fa fa-heart"></i>
                        </div>
                        <div class="comment-content">
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit omnis animi et iure laudantium vitae, praesentium optio, sapiente distinctio illo?
                        </div>
                    </div>

                </div>
            </li> -->

								</ul>
								<div class="form-group">
									<div>
										<textarea class="form-control"
											style="width: 1100px; height: 80px"></textarea>
									</div>
									<br>
									<div class="button" style="margin-left: 420px;">
										<input type="button" value="comment">
									</div>


								</div>
							</div>
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
									<img src="/WaterMelon/assets/images/hot-song/hot-2.jpg" alt="">
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
									<img src="/WaterMelon/assets/images/hot-song/hot-1.jpg" alt="">
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
									<img src="/WaterMelon/assets/images/hot-song/hot-3.jpg" alt="">
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
									<img src="/WaterMelon/assets/images/hot-song/hot-4.jpg" alt="">
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
									<img src="/WaterMelon/assets/images/hot-song/hot-5.jpg" alt="">
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
									<img src="/WaterMelon/assets/images/hot-song/hot-6.jpg" alt="">
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
									<img src="/WaterMelon/assets/images/hot-song/hot-7.jpg" alt="">
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
									<img src="/WaterMelon/assets/images/hot-song/hot-8.jpg" alt="">
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
									<img src="/WaterMelon/assets/images/hot-song/hot-8.jpg" alt="">
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
									<img src="/WaterMelon/assets/images/hot-song/hot-9.jpg" alt="">
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
									<img src="/WaterMelon/assets/images/hot-song/hot-10.jpg" alt="">
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
									<img src="/WaterMelon/assets/images/hot-song/hot-11.jpg" alt="">
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
									<img src="/WaterMelon/assets/images/hot-song/hot-12.jpg" alt="">
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
									<img src="/WaterMelon/assets/images/hot-song/hot-13.jpg" alt="">
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
									<img src="/WaterMelon/assets/images/hot-song/hot-14.jpg" alt="">
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
									<img src="/WaterMelon/assets/images/hot-song/hot-15.jpg" alt="">
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
									<img src="/WaterMelon/assets/images/hot-song/hot-1.jpg" alt="">
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
									<img src="/WaterMelon/assets/images/hot-song/hot-3.jpg" alt="">
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
									<img src="/WaterMelon/assets/images/hot-song/hot-2.jpg" alt="">
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
									<img src="/WaterMelon/assets/images/hot-song/hot-4.jpg" alt="">
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
									<img src="/WaterMelon/assets/images/hot-song/hot-5.jpg" alt="">
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
									<img src="/WaterMelon/assets/images/hot-song/hot-1.jpg" alt="">
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
									<img src="/WaterMelon/assets/images/hot-song/hot-2.jpg" alt="">
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
									<img src="/WaterMelon/assets/images/hot-song/hot-4.jpg" alt="">
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
									<img src="/WaterMelon/assets/images/hot-song/hot-5.jpg" alt="">
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
									<img src="/WaterMelon/assets/images/hot-song/hot-4.jpg" alt="">
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
										src="/WaterMelon/assets/images/new-releases/new-releases-44.jpg"
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
										src="/WaterMelon/assets/images/new-releases/new-releases-43.jpg"
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
										src="/WaterMelon/assets/images/new-releases/new-releases-42.jpg"
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
										src="/WaterMelon/assets/images/new-releases/new-releases-41.jpg"
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
										src="/WaterMelon/assets/images/new-releases/new-releases-40.jpg"
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
										src="/WaterMelon/assets/images/new-releases/new-releases-39.jpg"
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
										src="/WaterMelon/assets/images/new-releases/new-releases-38.jpg"
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
										src="/WaterMelon/assets/images/new-releases/new-releases-37.jpg"
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
										src="/WaterMelon/assets/images/new-releases/new-releases-36.jpg"
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
										src="/WaterMelon/assets/images/new-releases/new-releases-35.jpg"
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
										src="/WaterMelon/assets/images/new-releases/new-releases-34.jpg"
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
										src="/WaterMelon/assets/images/new-releases/new-releases-33.jpg"
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
										src="/WaterMelon/assets/images/new-releases/new-releases-32.jpg"
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
										src="/WaterMelon/assets/images/new-releases/new-releases-31.jpg"
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
										src="/WaterMelon/assets/images/new-releases/new-releases-30.jpg"
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
										src="/WaterMelon/assets/images/new-releases/new-releases-29.jpg"
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
										src="/WaterMelon/assets/images/new-releases/new-releases-28.jpg"
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
										src="/WaterMelon/assets/images/new-releases/new-releases-27.jpg"
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
										src="/WaterMelon/assets/images/new-releases/new-releases-26.jpg"
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
										src="/WaterMelon/assets/images/new-releases/new-releases-25.jpg"
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
										src="/WaterMelon/assets/images/new-releases/new-releases-24.jpg"
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
										src="/WaterMelon/assets/images/new-releases/new-releases-23.jpg"
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
										src="/WaterMelon/assets/images/new-releases/new-releases-22.jpg"
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
										src="/WaterMelon/assets/images/new-releases/new-releases-21.jpg"
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
										src="/WaterMelon/assets/images/new-releases/new-releases-20.jpg"
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
										src="/WaterMelon/assets/images/new-releases/new-releases-19.jpg"
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
										src="/WaterMelon/assets/images/new-releases/new-releases-18.jpg"
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
										src="/WaterMelon/assets/images/new-releases/new-releases-17.jpg"
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