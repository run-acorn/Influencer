<%@page import="kr.smhrd.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<title>Home 03</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="resources/images/icons/favicon.png" />

<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<!-- 
	<link rel="stylesheet" type="text/css" href="resources/vendor/animsition/css/animsition.min.css">
	 -->
<!--===============================================================================================-->


<link rel="stylesheet" type="text/css"
	href="resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/slick/slick.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="resources/css/util.css">
<link rel="stylesheet" type="text/css" href="resources/css/main.css">
<link rel="stylesheet" type="text/css" href="resources/css/custom.css">
<link rel="stylesheet" type="text/css" href="resources/css/main1.css">
<!--===============================================================================================-->

<!--  jq -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />

</head>
<body class="animsition">

	<div>
		
		
		<!-- Header -->
		<header class="header-v3">
			<!-- Header desktop -->
			<div class="container-menu-desktop trans-03">
				<div class="wrap-menu-desktop">
					<nav class="limiter-menu-desktop p-l-45">

						<!-- Logo desktop -->
						<a href="${cpath}/" class="logo"> <img
							src="resources/images/icons/logo-02.png" alt="IMG-LOGO">

						</a>

						<!-- Menu desktop -->
						<div class="menu-desktop">




							<div class="search ">
								
								<form action="${cpath}/bagSearch.do" method="get">
									<input class="mainLoginInput jejumyeongjo maininput1 " type="text" name="bag_brand" placeholder="&#61442; ">
								
									<input type="submit" id="input-search">
                 					 <a href="#" onclick="jQuery('#input-search').click()"> </a>
             
								</form>

							</div>
							<button id="popup_open_btn"
								class="file-import w-btn-outline w-btn-skin-outline hover-1">
								사진으로 검색!</button>




						</div>

						<c:if test="${empty mvo}">

							<div class="log-div2">


								<form action="${cpath}/goboard.do" method="post">
									<button type="submit" class="mainsub">게시판가기</button>
								</form>

								<button class="logbtn" id="logbtn">Login</button>

								<button class="joinbtn" id="joinbtn">Join</button>


							</div>


						</c:if>


						<c:if test="${!empty mvo}">

							<div class="log-div">

								<p class="MainP1 mainnick">${mvo.nick}님 환영합니다!</p>

								<button onclick='location.href="${cpath}/logout.do"'
									class="logoutbtn mainnick">로그아웃</button>
									
									<button onclick='location.href="${cpath}/goboard.do"'
									class="logoutbtn mainnick3">게시판</button>
									
									

								<div class="dropdown">
							<div id=myMainBar2 class="dropbtn">My Menu</div>
							<ul class="dropdown-content">
							
								<li class="myBarList2">
									<a class="myBar" href="${cpath}/goMyWrite.do">내가 쓴 글</a>
								</li>
							
								<li class="myBarList2">
									<a href="#Changepw_Modal" rel="modal:open" id="Change_Pw" class="myBar">  비밀번호 변경 </a></a>
								</li>
								
								<li class="myBarList2">
									<a href="#Changenick" rel="modal:open" id="Change_Nick" class="myBar"> 닉네임 변경 </a>
								</li>
								
								<li class="myBarList2">
									<a href="#delete_Member" rel="modal:open"  class="myBar"> 회원탈퇴  </a>
								</li>
								
								
								
							</ul>
							
						</div>
							</div>







						</c:if>




						
					</nav>
				</div>
			</div>

			<!-- Header Mobile -->
			<div class="wrap-header-mobile">
				<!-- Logo moblie -->
				<div class="logo-mobile">
					<a href="index.html"><img
						src="resources/images/icons/logo-01.png" alt="IMG-LOGO"></a>
				</div>

				<!-- Icon header -->
				<div class="wrap-icon-header flex-w flex-r-m h-full m-r-15">
					<div class="flex-c-m h-full p-r-5">
						<div
							class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 icon-header-noti js-show-cart"
							data-notify="2">
							<i class="zmdi zmdi-shopping-cart"></i>
						</div>
					</div>
				</div>

				<!-- Button show menu -->
				<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
					<span class="hamburger-box"> <span class="hamburger-inner"></span>
					</span>
				</div>
			</div>


			<!-- Menu Mobile -->
			<div class="menu-mobile">
				<ul class="main-menu-m">
					<li><a href="index.html">Home</a>
						<ul class="sub-menu-m">
							<li><a href="index.html">Homepage 1</a></li>
							<li><a href="home-02.html">Homepage 2</a></li>
							<li><a href="home-03.html">Homepage 3</a></li>
						</ul> <span class="arrow-main-menu-m"> <i
							class="fa fa-angle-right" aria-hidden="true"></i>
					</span></li>

					<li><a href="product.html">Shop</a></li>

					<li><a href="shoping-cart.html" class="label1 rs1"
						data-label1="hot">Features</a></li>

					<li><a href="blog.html">Blog</a></li>

					<li><a href="about.html">About</a></li>

					<li><a href="contact.html">Contact</a></li>
				</ul>
			</div>

			<!-- Modal Search -->
			<div
				class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
				<button class="flex-c-m btn-hide-modal-search trans-04">
					<i class="zmdi zmdi-close"></i>
				</button>

				<form class="container-search-header">
					<div class="wrap-search-header">
						<input class="plh0" type="text" name="search"
							placeholder="Search...">

						<button class="flex-c-m trans-04">
							<i class="zmdi zmdi-search"></i>
						</button>
					</div>
				</form>
			</div>
		</header>


     







		<!-- 모달 창 부분 -->


		<div id="my_modal">

			<div id="root">
				<h2 class="title">사진을 등록 해주세요.</h2>
				<hr>
				<a class="modal_close_btn close_btn"> <i
					class="fa-solid fa-circle-xmark close_i"></i>
				</a>
				<div class="contents">
				<div class="upload-box">
						<div id="drop-file" class="drag-file">
							<a onclick="jQuery('.input-file').click()">
								<p class="message">클릭해서 사진을 올려주세요</p>
							</a> <img src="" alt="미리보기 이미지" class="preview">
						</div>

						<form id="send_img" method="post" enctype="multipart/form-data">
						
							<input id="file" type="file" name="file" class="input-file"
								onchange="dropFile.handleFiles(this.files)"
								accept="image/png, image/jpeg, image/gif"> 

							<button type="button" class="Mo-button" id="send_img_btn">
							검색</button>
						</form>

						

					</div>
				</div>
			</div>


		</div>






		<!-- 로그인  -->

		<div id="Login_Modal">

			<div>


				<p class="MainP">로그인</p>
				<form action="${cpath}/login.do" method="post">


					<p class="MainP1">아이디</p>
					<input type="text" id="id" name="id" placeholder="아이디를 입력하세요">
					<p class="MainP1">비밀번호</p>
					<input type="password" id="pw" name="pw" placeholder="비밀번호를 입력하세요">

					<br> <input type="button" id="login"
						class="button fit nick_ch_btn" value="로그인">
				</form>

				<a class="modal_close_btn close_btn"> <i
					class="fa-solid fa-circle-xmark close_i"></i>
				</a>

			</div>
		</div>

		<!-- 회원가입  -->

		<div id="joinModal">

			<div class="join_in">


				<p class="MainP">회원가입</p>
				<br>
			

					<p class="MainP1">아이디</p>
					<input type="text" id="idi" name="idi" placeholder="아이디를 입력하세요">
						<button type="button" id="idCheck">중복 확인</button> <br>
						<div id=text></div> <br>
						
						
						
					<p class="MainP1">비밀번호</p>
					<input type="password" name="pwi" id="pwi" placeholder="비밀번호를 입력하세요" autoComplete="off">
					<input type="password" name="pwCheck" id="pwCheck" placeholder="비밀번호를 입력하세요."> <br>
						<div id=pwNotice></div> <br>
					<p class="MainP1">닉네임</p>
					<input type="text" id="nicki" name="nick" placeholder="닉네임을 입력하세요"> 
					<div id="nkNotice"></div>
					<br>
					<button id="btnSubmit"> 회원 가입 </button>

				

				</div>


				<a class="modal_close_btn close_btn"> 
				<i class="fa-solid fa-circle-xmark close_i"></i> </a>
			
		</div>



		

			<!-- 비밀번호 변경 모달 -->

		<div id="Changepw_Modal" class="modal">



			<p class="chP">비밀번호 변경</p>
			<form id="pwUpdateForm">
				<input type="hidden" id="idc" name="idc" value="${mvo.getId()}"> <span
					class="chpw">기존 비밀번호</span> <input type="password" id="pw3"
					name="pw3" placeholder="기존 비밀번호"> <span class="chpw">새
					비밀번호</span> <input type="password" id="pw1" name="pw1"
					placeholder="새 비밀번호"> <input type="password" id="pw2"
					name="pw2" placeholder="새 비밀번호 확인">
				<div id="text"></div>
				<br>
				<br> <input type="button" id="cp" value="비밀번호 변경"
					class="button fit nick_ch_btn" onclick="changePW()"> <br>
				<div class="nick_ch"></div>
			</form>

		</div>

		<!-- 닉네임 변경 -->

		<div id="Changenick">
			<div class="nick_wrap">

				<br>
				<div class="nick_ch">
					<p class="chP">닉네임 변경</p>
					<form action="${cpath}/changeNick.do" method="post">
						<input type="hidden" name="id" value="${mvo.getId()}"> <input
							type="text" id="nick" name="nick" placeholder="${mvo.getNick()}">
						<input type="button" id="cn" value="닉네임 변경"
							class="button fit nick_ch_btn" onclick="changeNICK()"> <br>

					</form>

				</div>
			</div>
		</div>


		<!-- 회원탈퇴 -->
		<div id="delete_Member">
			<div class="nick_wrap">

				<br>
				<div class="mvo_delete">
					<p class="chP">회원 탈퇴</p>
					<form action="${cpath}/deleteMember.do" method="post">
						<p class="chpw">계정 비밀번호</p>
						<input type="hidden" name="id" value="${mvo.getId()}"> <input
							type="password" id="pwpw" name="pw" placeholder="계정 비밀번호">
						<br>
						<samp class="chpw"> ※탈퇴 후 개인정보 데이터가 </samp>
						<samp class="chpw2"> 삭제됩니다. </samp>
						<br> <input type="button" id="ip" value="회원 탈퇴"
							class="button fit mv_dltbtn" onclick="inputPW()">


					</form>

				</div>
			</div>
		</div>


		<!-- 모달  끝  -->

		<!-- Sidebar -->
		<aside class="wrap-sidebar js-sidebar">
			<div class="s-full js-hide-sidebar"></div>

			<div class="sidebar flex-col-l p-t-22 p-b-25">
				<div class="flex-r w-full p-b-30 p-r-27">
					<div
						class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-sidebar">
						<i class="zmdi zmdi-close"></i>
					</div>
				</div>

				<div class="sidebar-content flex-w w-full p-lr-65 js-pscroll">
					<ul class="sidebar-link w-full">
						<li class="p-b-13"><a href="index.html"
							class="stext-102 cl2 hov-cl1 trans-04"> Home </a></li>

						<li class="p-b-13"><a href="#"
							class="stext-102 cl2 hov-cl1 trans-04"> My Wishlist </a></li>

						<li class="p-b-13"><a href="#"
							class="stext-102 cl2 hov-cl1 trans-04"> My Account </a></li>

						<li class="p-b-13"><a href="#"
							class="stext-102 cl2 hov-cl1 trans-04"> Track Oder </a></li>

						<li class="p-b-13"><a href="#"
							class="stext-102 cl2 hov-cl1 trans-04"> Refunds </a></li>

						<li class="p-b-13"><a href="#"
							class="stext-102 cl2 hov-cl1 trans-04"> Help & FAQs </a></li>
					</ul>

					<div class="sidebar-gallery w-full p-tb-30">
						<span class="mtext-101 cl5"> @ CozaStore </span>

						<div class="flex-w flex-sb p-t-36 gallery-lb">
							<!-- item gallery sidebar -->
							<div class="wrap-item-gallery m-b-10">
								<a class="item-gallery bg-img1"
									href="resources/images/gallery-01.jpg" data-lightbox="gallery"
									style="background-image: url('resources/images/gallery-01.jpg');"></a>
							</div>

							<!-- item gallery sidebar -->
							<div class="wrap-item-gallery m-b-10">
								<a class="item-gallery bg-img1"
									href="resources/images/gallery-02.jpg" data-lightbox="gallery"
									style="background-image: url('resources/images/gallery-02.jpg');"></a>
							</div>

							<!-- item gallery sidebar -->
							<div class="wrap-item-gallery m-b-10">
								<a class="item-gallery bg-img1"
									href="resources/images/gallery-03.jpg" data-lightbox="gallery"
									style="background-image: url('resources/images/gallery-03.jpg');"></a>
							</div>

							<!-- item gallery sidebar -->
							<div class="wrap-item-gallery m-b-10">
								<a class="item-gallery bg-img1"
									href="resources/images/gallery-04.jpg" data-lightbox="gallery"
									style="background-image: url('resources/images/gallery-04.jpg');"></a>
							</div>

							<!-- item gallery sidebar -->
							<div class="wrap-item-gallery m-b-10">
								<a class="item-gallery bg-img1"
									href="resources/images/gallery-05.jpg" data-lightbox="gallery"
									style="background-image: url('resources/images/gallery-05.jpg');"></a>
							</div>

							<!-- item gallery sidebar -->
							<div class="wrap-item-gallery m-b-10">
								<a class="item-gallery bg-img1"
									href="resources/images/gallery-06.jpg" data-lightbox="gallery"
									style="background-image: url('resources/images/gallery-06.jpg');"></a>
							</div>

							<!-- item gallery sidebar -->
							<div class="wrap-item-gallery m-b-10">
								<a class="item-gallery bg-img1"
									href="resources/images/gallery-07.jpg" data-lightbox="gallery"
									style="background-image: url('resources/images/gallery-07.jpg');"></a>
							</div>

							<!-- item gallery sidebar -->
							<div class="wrap-item-gallery m-b-10">
								<a class="item-gallery bg-img1"
									href="resources/images/gallery-08.jpg" data-lightbox="gallery"
									style="background-image: url('resources/images/gallery-08.jpg');"></a>
							</div>

							<!-- item gallery sidebar -->
							<div class="wrap-item-gallery m-b-10">
								<a class="item-gallery bg-img1"
									href="resources/images/gallery-09.jpg" data-lightbox="gallery"
									style="background-image: url('resources/images/gallery-09.jpg');"></a>
							</div>
						</div>
					</div>

					<div class="sidebar-gallery w-full">
						<span class="mtext-101 cl5"> About Us </span>

						<p class="stext-108 cl6 p-t-27">Lorem ipsum dolor sit amet,
							consectetur adipiscing elit. Curabitur maximus vulputate
							hendrerit. Praesent faucibus erat vitae rutrum gravida.
							Vestibulum tempus mi enim, in molestie sem fermentum quis.</p>
					</div>
				</div>
			</div>
		</aside>


		<!-- Cart -->
		<div class="wrap-header-cart js-panel-cart">
			<div class="s-full js-hide-cart"></div>

			<div class="header-cart flex-col-l p-l-65 p-r-25">
				<div class="header-cart-title flex-w flex-sb-m p-b-8">
					<span class="mtext-103 cl2"> Your Cart </span>

					<div
						class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-cart">
						<i class="zmdi zmdi-close"></i>
					</div>
				</div>

				<div class="header-cart-content flex-w js-pscroll">
					<ul class="header-cart-wrapitem w-full">
						<li class="header-cart-item flex-w flex-t m-b-12">
							<div class="header-cart-item-img">
								<img src="resources/images/item-cart-01.jpg" alt="IMG">
							</div>

							<div class="header-cart-item-txt p-t-8">
								<a href="#"
									class="header-cart-item-name m-b-18 hov-cl1 trans-04">
									White Shirt Pleat </a> <span class="header-cart-item-info">
									1 x $19.00 </span>
							</div>
						</li>

						<li class="header-cart-item flex-w flex-t m-b-12">
							<div class="header-cart-item-img">
								<img src="resources/images/item-cart-02.jpg" alt="IMG">
							</div>

							<div class="header-cart-item-txt p-t-8">
								<a href="#"
									class="header-cart-item-name m-b-18 hov-cl1 trans-04">
									Converse All Star </a> <span class="header-cart-item-info">
									1 x $39.00 </span>
							</div>
						</li>

						<li class="header-cart-item flex-w flex-t m-b-12">
							<div class="header-cart-item-img">
								<img src="resources/images/item-cart-03.jpg" alt="IMG">
							</div>

							<div class="header-cart-item-txt p-t-8">
								<a href="#"
									class="header-cart-item-name m-b-18 hov-cl1 trans-04">
									Nixon Porter Leather </a> <span class="header-cart-item-info">
									1 x $17.00 </span>
							</div>
						</li>
					</ul>

					<div class="w-full">
						<div class="header-cart-total w-full p-tb-40">Total: $75.00
						</div>

						<div class="header-cart-buttons flex-w w-full">
							<a href="shoping-cart.html"
								class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10">
								View Cart </a> <a href="shoping-cart.html"
								class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-b-10">
								Check Out </a>
						</div>
					</div>
				</div>
			</div>
		</div>



		<!-- Slider -->
		<section class="section-slide">
			<div class="wrap-slick1 rs2-slick1">
				<div class="slick1">
					<div class="item-slick1 bg-overlay1"
						style="background-image: url(resources/images/slide-05.jpg);"
						data-thumb="resources/images/thumb-01.jpg"
						data-caption="GUCCI">
						<div class="container h-full">
							<div class="flex-col-c-m h-full p-t-100 p-b-60 respon5">
								<div class="layer-slick1 animated visible-false"
									data-appear="fadeInDown" data-delay="0">
									<span class="ltext-202 txt-center cl0 respon2"> Bag
										Collection 2022 </span>
								</div>

								<div class="layer-slick1 animated visible-false"
									data-appear="fadeInUp" data-delay="800">
									<h2 class="ltext-104 txt-center cl0 p-t-22 p-b-40 respon1">
										New arrivals</h2>
								</div>

								<div class="layer-slick1 animated visible-false"
									data-appear="zoomIn" data-delay="1600">
									<a href="${cpath}/bagAllList.do"
										class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn2 p-lr-15 trans-04">
										Shop Now </a>
								</div>
							</div>
						</div>
					</div>

					<div class="item-slick1 bg-overlay1"
						style="background-image: url(resources/images/slide-06.jpg);"
						data-thumb="resources/images/thumb-02.jpg"
						data-caption="PRADA">
						<div class="container h-full">
							<div class="flex-col-c-m h-full p-t-100 p-b-60 respon5">
								<div class="layer-slick1 animated visible-false"
									data-appear="rollIn" data-delay="0">
									<span class="ltext-202 txt-center cl0 respon2"> Bag
										New-Season </span>
								</div>

								<div class="layer-slick1 animated visible-false"
									data-appear="lightSpeedIn" data-delay="800">
									<h2 class="ltext-104 txt-center cl0 p-t-22 p-b-40 respon1">
										New & Used</h2>
								</div>

								<div class="layer-slick1 animated visible-false"
									data-appear="slideInUp" data-delay="1600">
									<a href="${cpath}/bagAllList.do"
										class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn2 p-lr-15 trans-04">
										Shop Now </a>
								</div>
							</div>
						</div>
					</div>

					<div class="item-slick1 bg-overlay1"
						style="background-image: url(resources/images/slide-07.jpg);"
						data-thumb="resources/images/thumb-03.jpg"
						data-caption="BURBERRY">
						<div class="container h-full">
							<div class="flex-col-c-m h-full p-t-100 p-b-60 respon5">
								<div class="layer-slick1 animated visible-false"
									data-appear="rotateInDownLeft" data-delay="0">
									<span class="ltext-202 txt-center cl0 respon2"> Bag
										Collection 2022 </span>
								</div>

								<div class="layer-slick1 animated visible-false"
									data-appear="rotateInUpRight" data-delay="800">
									<h2 class="ltext-104 txt-center cl0 p-t-22 p-b-40 respon1">
										NEW SEASON</h2>
								</div>

								<div class="layer-slick1 animated visible-false"
									data-appear="rotateIn" data-delay="1600">
									<a href="${cpath}/bagAllList.do"
										class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn2 p-lr-15 trans-04">
										Shop Now </a>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="wrap-slick1-dots p-lr-10"></div>
			</div>
		</section>

	</div>

	<!--===============================================================================================-->
	<script src="resources/vendor/jquery/jquery-3.2.1.min.js"></script>



	<!--===============================================================================================-->
	<script src="resources/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="resources/vendor/bootstrap/js/popper.js"></script>
	<script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="resources/vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function() {
			$(this).select2({
				minimumResultsForSearch : 20,
				dropdownParent : $(this).next('.dropDownSelect2')
			});
		})
	</script>
	<!--===============================================================================================-->
	<script src="resources/vendor/daterangepicker/moment.min.js"></script>
	<script src="resources/vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="resources/vendor/slick/slick.min.js"></script>
	<script src="resources/js/slick-custom.js"></script>
	<!--===============================================================================================-->
	<script src="resources/vendor/parallax100/parallax100.js"></script>
	<script>
		$('.parallax100').parallax100();
	</script>
	<!--===============================================================================================-->
	<script
		src="resources/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<script>
		$('.gallery-lb').each(function() { // the containers for all your galleries
			$(this).magnificPopup({
				delegate : 'a', // the selector for gallery item
				type : 'image',
				gallery : {
					enabled : true
				},
				mainClass : 'mfp-fade'
			});
		});
	</script>
	<!--===============================================================================================-->
	<script src="resources/vendor/isotope/isotope.pkgd.min.js"></script>
	<!--===============================================================================================-->
	<script src="resources/vendor/sweetalert/sweetalert.min.js"></script>
	<script>
		$('.js-addwish-b2').on('click', function(e) {
			e.preventDefault();
		});

		$('.js-addwish-b2').each(
				function() {
					var nameProduct = $(this).parent().parent().find(
							'.js-name-b2').html();
					$(this).on('click', function() {
						swal(nameProduct, "is added to wishlist !", "success");

						$(this).addClass('js-addedwish-b2');
						$(this).off('click');
					});
				});

		$('.js-addwish-detail').each(
				function() {
					var nameProduct = $(this).parent().parent().parent().find(
							'.js-name-detail').html();

					$(this).on('click', function() {
						swal(nameProduct, "is added to wishlist !", "success");

						$(this).addClass('js-addedwish-detail');
						$(this).off('click');
					});
				});

		/*---------------------------------------------*/

		$('.js-addcart-detail').each(
				function() {
					var nameProduct = $(this).parent().parent().parent()
							.parent().find('.js-name-detail').html();
					$(this).on('click', function() {
						swal(nameProduct, "is added to cart !", "success");
					});
				});
	</script>
	<!--===============================================================================================-->
	<script
		src="resources/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function() {
			$(this).css('position', 'relative');
			$(this).css('overflow', 'hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed : 1,
				scrollingThreshold : 1000,
				wheelPropagation : false,
			});

			$(window).on('resize', function() {
				ps.update();
			})
		});
	</script>


	<!-- 회원가입 -->


<script>	

let ChkID = 0;
let ChkPw = 0;
let ChkNk = 0;


		$('button#btnSubmit').on('click', function(){
			
			let obj = {
					'id' :document.getElementById('idi').value,
					'pw':document.getElementById('pwi').value,
					'nick':document.getElementById('nicki').value
			}
			
			console.log(obj)
			console.log(ChkID, ChkPw, ChkNk)
			

			if(ChkID==1 && ChkPw==1 && ChkNk==1){
				$.ajax({
					url : '${cpath}/memberInsert.do',
					type : 'post',
					data : obj,
					success : function(res){
					if(res == "false"){
                        alert('모든 정보를 입력해주세요!');
        			}
                    else{
                    	alert('회원가입 성공!')
                    	location.href="${cpath}/";
                    }
					},
					error : function(){
						alert('실패')
					}
				});
			} else if(ChkID==0){
				alert("아이디를 확인해주세요")
			} else if(ChkPw==0){
				alert("패스워드를 확인해주세요")
			}else if(ChkNk==0){
				alert("닉네임를 확인해주세요")
			}
		});
		
		
	// 아이디 중복 기능 체크
	$('#idCheck').on('click', function(){
		let id = document.getElementById('idi').value;
		let div = document.getElementById('text');
        console.log(id)
        if(!id){
        	alert('아이디를 입력하지 않았습니다')
        } else {
        	$.ajax({
        		url : '${cpath}/idCheck.do',
        		type : 'POST',
        		data : {'id':id},
        		dataType : 'text',
        		success : function(cnt){
        			if (cnt >= 1) {
     					div.innerHTML = "<h5> 사용할 수 없는 아이디입니다 </h5>";
     				} else if (cnt == 0) {
     					div.innerHTML = "<h5> 사용 가능한 아이디입니다 </h5>";
     					ChkID = 1;
     				}
        			console.log(ChkID)
        		},
        		error : function(){
        			alert('연결 실패')
        		}
        	});
        }
	});
	
	
// 비밀번호 확인 기능
    $(function () {
        $('#pwi').keyup(function () {
            $('#chkNotice').html('');
            console.log($('#pwi').val())
        });

    	$('#pwCheck').keyup(function () {
            if ($('#pwi').val() != $('#pwCheck').val()) {
                $('#pwNotice').html('<h5>비밀번호 일치하지 않음</h5><br>'); // 불일치할 때 눈에 더 잘띄게 만들면 좋을 듯!
                ChkPw = 0;
            } else {
                $('#pwNotice').html('<h5>비밀번호 일치함</h5><br>');
                ChkPw = 1
            }
            console.log(ChkPw)
        });
    });
	
    
	// 닉네임 중복 체크
	$('#nicki').on('keyup', function(){
		let nick = document.getElementById('nicki').value;
		let div = document.getElementById('nkNotice');

		if(nick.length < 0){ // 닉네임을 입력하지 않음
			ChkNk = 0;
			div.innerHTML = "<h5> 닉네임을 입력해주세요 </h5>";
		} else{ // 사용 가능한 닉네임
			$.ajax({
				url : '${cpath}/nickCheck.do',
				type : 'POST',
				data : {'nick' : nick},
				dataType : 'text',
				async : false,
				success : function(cnt){
					console.log(cnt)
					if (cnt == 1) {
     					div.innerHTML = "<h5> 사용할 수 없는 닉네임입니다 </h5>";
     					ChkNk = 0;
     				} else if (cnt == 0) {
     					div.innerHTML = "<h5> 사용 가능한 닉네임입니다 </h5>";
     					ChkNk = 1;
     				}
					console.log(ChkNk)
				},
				error : function(){
					alert('실패')
				}
			});
		}
	});
</script>



	
	


	<!-- 로그인  -->


	<script>
		$('#login').on(
				'click',
				function() {
					let id = $('#id').val();
					let pw = $('#pw').val();

					var id2 = document.getElementById('id');
					var pw2 = document.getElementById('pw');

					if (id2.value.length < 1) {
						alert('아이디를 입력해주세요');
					} else if (pw2.value.length < 1) {
						alert('비밀번호를 입력해주세요');
					} else {
						$.ajax({
							url : '${cpath}/loginCheck.do',
							type : 'POST',
							data : {
								'id' : id,
								'pw' : pw
							},
							dataType : 'text',
							success : function(data) {
								console.log(data);
								console.log('로그인 성공');
								if (data == "false") {
									alert('아이디 또는 비밀번호를 확인해주세요.');
								} else {
									location.href = "${cpath}/login.do?id="
											+ id + "&pw=" + pw;
								}
							},
							error : function() {
								alert('로그인 실패')
							}
						})
					}

				})
	</script>

	
	
		
		<!-- 비밀번호 변경  -->
      <script>
   
      function changePW(){
         var id= document.getElementById('idc');
         var pw1 = document.getElementById('pw1');
         var pw2= document.getElementById('pw2');
         var pw= document.getElementById('pw3');
         
         
         if(pw1.value.length<1 || pw2.value.length<1){
            alert("비밀번호를 입력해주세요")
         }else{
         
         if(pw1.value == pw2.value){
            if(pw.value != "${mvo.getPw()}" ){
               alert('기존 비밀번호를 잘못 입력하셨습니다')
            }else{
               console.log(id.value);
               console.log(pw.value);
               $.ajax({
                  url: '${cpath}/changePw.do',
                  type : 'POST',
                  data : {
                        'id' : id.value,
                        'pw' : pw1.value
                     },
                   success : function(data){
                      console.log(data)
                      alert('비밀번호가 변경되었습니다')
                      console.log($('input#cp').prop('type','submit'))
                      location.href = "${cpath}/"
                      // 메인페이지로 이동할 수 있게끔 변경 이렇게하면 되나?
                   }
                  
               })
            }
            }else{
              alert('비밀번호를 다시 입력해주세요')
            }
         
         
         }
         
      }
       
   </script>


	<!--  닉네임 변경  -->

	<script>
		function changeNICK() {
			var nick = document.getElementById('nicki');

			if (nick.value.length < 1) {
				alert("변경할 닉네임을 입력해주세요")
			} else {
				alert('닉네임이 변경되었습니다')
				console.log($('input#cn').attr('type', 'submit'))
			}
		}
	</script>

	<!-- 회원 탈퇴  -->
	<script>
		function inputPW() {
			var pw = document.getElementById('pwpw');
			console.log(pw.value.length)
			if (pw.value.length < 1) {
				console.log(pw)
				alert("비밀번호를 입력해주세요")
			} else {
				if (pw.value != "${mvo.getPw()}") {
					alert('비밀번호를 잘못 입력하셨습니다')
				} else {
					alert('회원 탈퇴 되었습니다')
					($('input#ip').prop('type', 'submit'))
				}
			}
		}
	</script>
	

<script type="text/javascript">
$(function(){
	
	$('#send_img_btn').on('click',function(){
		send_img_ajax();
	});
});
function send_img_ajax(){
	let form = $('#send_img')[0];
	let formData = new FormData(form);
	
	$.ajax({
		url : 'http://172.30.1.42:3500',
		type : 'POST',
		contentType : false,
		processData : false,
		async : false,
		data : formData,
		success : answer_bag_name,
		error : function(){
			alert('이미지 검색 불가 다른사진을 넣어주세요');
		}
	})
}

function answer_bag_name(res){
	console.log('flask에서 넘어오는 값',res);
	$.ajax({
		url : '${cpath}/search_answer.do',
		type : 'POST',
		data : {"bag_name_new":res},
		success : function(bag_no){
			location.href='${cpath}/selectimage.do?bag_no='+bag_no;
		},
		error : function(){
			alert('이미지 서칭실패');
		}
	})
}


</script>


	<!--===============================================================================================-->
	<script src="resources/js/main1.js"></script>
	<script src="resources/js/main.js"></script>
	<script src="resources/js/custom.js"></script>
	<script src="https://kit.fontawesome.com/a7989cf475.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>


	
</body>
</html>