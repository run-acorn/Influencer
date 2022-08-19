<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>

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
<link rel="stylesheet" type="text/css" href="resources/css/main1.css">
<link rel="stylesheet" type="text/css" href="resources/css/custom.css">
<!--===============================================================================================-->


<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
<!--  jq -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />


<!-- 한글 폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
   href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
   rel="stylesheet">


<style>
/* 사이드 사이트 바 div */
.quickmenu {
   position: fixed;
   right: 50%;
   top: 200px;
   margin-right: -900px;
   text-align: center;
   width: 180px;
   height: 600px;
   box-shadow: 2px 2px 10px 5px #dcdcdc;
   border-radius: 10px;
}
/* 사이드 사이트 이미지 div */
.siteIcon {
   position: relative;
   top: 20px;
   margin-top: 30px;
}

/* 사이드 사이트 이미지, 링크 */
.siteBar {
   font-family: 'Noto Sans KR', sans-serif !important;
   width: 70px;
   height: 60px;
   border-radius: 10px;
   font-size: 20px;
   font-weight: 10px;
   color: black;
   box-shadow: 2px 2px 10px 5px #dcdcdc;
   
}

#barName{
   box-shadow:none;
}

.listBtn {
   font-size: 20px;
}

#new {
   height: 50px;
   width: 100% !important;
   background-color: #f5f5f5;
   color: black;
   border: none;
}

#used {
   height: 50px;
   width: 100% !important;
   background-color: #ffffff;
   color: black;
   border: none;
}

.itemDiv {
   border: 1px solid #dcdcdc;
   height: 450px;
   overflow-y:hidden;
   overflow-x:hidden;
   border-bottom:none:
}

#info{
	font-weight:bold;
	font-family: Poppins-SemiBold;
}

.mtext-106.cl2{
	font-size:25px;
}

.mtext-105.cl2.js-name-detail.p-b-14{
	font-size:30px;
	font-weight:bold;
}

/* 검색창 돋보기 모양 */
input::placeholder {
   color: #bbb;
   font-family: fontAwesome;
}


/*검색바 부분*/
.maininput {
   width: 100%;
   border-radius: 5px;
   border: 1px solid #000;
   margin: 14px 0;
   padding: 10px 12px;
   font-family: SUIT-Medium;
}

.mainBar{
   width:800px;
   
}

#mainBar{
   margin:0!important;
}

#main-main{
   height:130px!important;
   border-bottom:2px solid black;
}

/* 리뷰 섹션 */
.review-section{
   border-top:3px solid black;
   padding-bottom:20px;
   border-bottom:1px solid #c0c0c0;
}

#review{
   margin-bottom:20px;
}

/*리뷰 1개 크기*/
.review.row{
   height:200px;
   margin-bottom:20px;
   margin-top:20px;
}

.col-10.review-content.row{
   background-color: #f5f5f5;
   paddign-bottom:20px;
}

/* 상품평 글씨*/
#review-section-title{
   padding-bottom:20px;
   border-bottom:1px solid black;
}


/* 리뷰 이미지 div*/
.col-2.review-img{
   width:100px;
   height:200px;
   border:1px solid #dcdcdc;
   padding-left:0px;
}

/* 리뷰 이미지 */
.reviewImg{
   width:200px;
   height:200px;
   border:1px solid #dcdcdc;
   
}

/* mall, id, date, text */
.review-con, .review-review {
   height:50px!important;
   padding-top:10px;
   font-family: 'Noto Sans KR', sans-serif !important;
   font-size:15px;
   font-weight:bold!important;
   color:black;
   
}

.col-2.gra{
	text-align:center;
}

.graBtn{
	border:1px solid #dcdcdc;
	width:230px;
	height:40px;
}

.list.row{
   height:80px;
   border:none;
   border-bottom:1px solid #dcdcdc;
}

.contents-new.col-sm-6{
   padding-top:28px;
   padding-left:50px;
   padding-right:0px;
   font-weight:bold;
   color:black;
}

.contents-new.col-sm-6.img{
   padding-top:10px;
   padding-left:0px;
}

.bayBtn{
	text-decoration:none;
	color:#800080;
	font-size:10px;
	font-weight:bold!important;
}

#usedBtn, #newBtn{
   padding-right:0px!important;
   padding-left:0px!important;
}

.siteImg{
   height:25px;
   width:75px;
}

.usedImg{
	height:65px;
    width:75px
}

/*별 점*/
.star{
    position: relative;
    font-size: 2rem;
    color: #ddd;
}
  
.star span {
    width: 0;
    position: absolute; 
    left: 0;
    color: red;
    overflow: hidden;
    pointer-events: none;
}

.grade{
   color:black;
   font-size:2rem;
   font-weight:7px;
}

#main-main{
	background-image:url(resources/images/bag_list_title.jpg);
	background-size:100%;
	background-repeat:no-repeat;
	background-position:40% 30%;
}

</style>

</head>

<!-- Header -->
<header class="header-v4">
		<!-- Header desktop -->
		<div class="container-menu-desktop trans-03">
			<!-- Topbar -->
			

			<div id="main-main" class="wrap-menu-desktop how-shadow1 bg-overlay1">
				<nav class="limiter-menu-desktop p-l-45">

					<!-- Logo desktop -->
					<a href="${cpath}/" class="logo"> <img
						src="resources/images/icons/logo-02.png" alt="IMG-LOGO">
					</a>

					<!-- 검색바 -->
					<div class="menu-desktop">




							<div class="search ">
								
								<form action="${cpath}/bagSearch.do" method="get">
									<input class="mainLoginInput jejumyeongjo maininput1 " type="text" name="bag_brand" placeholder="&#61442; ">
								
									<input type="submit" id="input-search">
                 					 <a href="#" onclick="jQuery('#input-search').click()"> </a>
             
								</form>

							</div>
							<button id="popup_open_btn"
								class="file-import2 w-btn-outline w-btn-skin-outline hover-1">
								사진으로 검색!</button>




						</div>
					

					<!-- 내정보 친구들 -->
					
						
						<c:if test="${empty mvo}">

							<div class="log-div">


								<form action="${cpath}/" method="post">
									<button type="submit">메인으로</button>
								</form>

								<button class="logbtn2" id="logbtn">Login</button>

								<button class="joinbtn2" id="joinbtn">Join</button>


							</div>


						</c:if>


						<!-- 내정보 메뉴 -->
						
						<c:if test="${!empty mvo}">

							<div class="log-div-main">

								<p class="MainP1 mainnick3">${mvo.nick}님 환영합니다!</p>

								<button onclick='location.href="${cpath}/logout.do"'
									class="logoutbtn mainnick1" >로그아웃</button>
									
									<button onclick='location.href="${cpath}/"'
									class="logoutbtn mainnick4">메인</button>
									
									

								<div class="dropdown">
							<div id=myMainBar3 class="dropbtn">My Menu</div>
							<ul class="dropdown-content">
							
								<li class="myBarList">
									<a class="myBar" href="${cpath}/goMyWrite.do">내가 쓴 글</a>
								</li>
							
								<li class="myBarList">
									<a href="#Changepw_Modal" rel="modal:open" id="Change_Pw" class="myBar">  비밀번호 변경 </a></a>
								</li>
								
								<li class="myBarList">
									<a href="#Changenick" rel="modal:open" id="Change_Nick" class="myBar"> 닉네임 변경 </a>
								</li>
								
								<li class="myBarList">
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
			<div class="wrap-icon-header flex-w flex-r-m m-r-15">
				<div
					class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search">
					<i class="zmdi zmdi-search"></i>
				</div>

				<div
					class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart"
					data-notify="2">
					<i class="zmdi zmdi-shopping-cart"></i>
				</div>

				<a href="#"
					class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti"
					data-notify="0"> <i class="zmdi zmdi-favorite-outline"></i>
				</a>

			</div>

			<!-- Button show menu -->
			<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
				<span class="hamburger-box"> <span class="hamburger-inner"></span>
				</span>
			</div>
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
				
				<i class="fa-solid fa-image-polaroid main-image"></i>
						<div id="drop-file" class="drag-file" onclick="file_upload()">
						<i class="fa-solid fa-image image-upload"></i>
						
							<a onclick="jQuery('.input-file').click()">
							<p class="message">클릭해주세요.</p>
							</a> <img src="" alt="미리보기 이미지" class="preview">
						</div>

						<form id="send_img" method="post" enctype="multipart/form-data">
						
							<input id="file input-file" type="file" name="file" class="input-file"
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
				<form action="${cpath}/memberInsert.do" method="POST">

					<p class="MainP1">아이디</p>
					<input type="text" name="id" placeholder="아이디를 입력하세요">
					<p class="MainP1">비밀번호</p>
					<input type="password" name="pw" placeholder="비밀번호를 입력하세요"
						autoComplete="off">
					<p class="MainP1">닉네임</p>
					<input type="text" name="nick" placeholder="닉네임을 입력하세요"> <input
						type="submit" id="input-join" name="input-join"> <br>
					<input type="button" class="button fit nick_ch_btn"
						onclick="jQuery('#input-join').click()" value="회원가입">


				</form>

			</div>


			<a class="modal_close_btn close_btn"> <i
				class="fa-solid fa-circle-xmark close_i"></i>
			</a>

		</div>



		<!-- 비밀번호 변경 모달 -->

		<div id="Changepw_Modal" class="modal">



			<p class="chP">비밀번호 변경</p>
			<form>
				<input type="hidden" name="id" value="${mvo.getId()}"> <span
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
							type="password" id="pw" name="pw" placeholder="계정 비밀번호">
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














<body class="animsition">

   <!-- 사이드바 div -->
   <div class="quickmenu">
      <div class="siteIcon">
         <span id="barName" class="siteBar">제휴 사이트</span>
      </div>
      <div class="siteIcon">
         <img class="siteBar" src="resources/images/tradit.jpg"><a
            href="https://www.trenbe.com/"></a>
      </div>
      <div class="siteIcon">
         <img class="siteBar" src="resources/images/ballan.jpg"><a
            href="https://www.trenbe.com/"></a>
      </div>
      <div class="siteIcon">
         <img class="siteBar" src="resources/images/feelway.jpg"><a
            href="https://www.trenbe.com/"></a>
      </div>
      <div class="siteIcon">
         <img class="siteBar" src="resources/images/musinsa.jpg"><a
            href="https://www.trenbe.com/"></a>
      </div>
      <div class="siteIcon">
         <img class="siteBar" src="resources/images/mustit.jpg"><a
            href="https://www.trenbe.com/"></a>
      </div>
   </div>


   <!-- Product Detail -->
   <section class="sec-product-detail bg0 p-t-65 p-b-60">
      <div class="container">
         <div class="row">
            <div class="col-md-6 col-lg-7 p-b-30">
               <div class="p-l-25 p-r-30 p-lr-0-lg">
                  <div class="wrap-slick3 flex-sb flex-w">
                     <div class="wrap-slick3-arrows flex-sb-m flex-w"></div>

                     <div class="slick3 gallery-lb">
                        <div class="item-slick3"
                           data-thumb="resources/images/product-detail-01.jpg">
                           <div id="mainImg" class="wrap-pic-w pos-relative">
                              
                           </div>
                        </div>

                        
                        
                     </div>
                  </div>
               </div>
            </div>

            <div id="info" class="col-md-6 col-lg-5 p-b-30">
               <div class="p-r-50 p-t-5 p-lr-0-lg">
               
               <!-- 모델명 -->
               <div id="modelName" >
                  <h4 class="mtext-105 cl2 js-name-detail p-b-14">모델명</h4>
                  </div>   
                     <!-- 상품 가격 뜨는곳 -->
                  


                  <div id="bagName" class="stext-102 cl3 p-t-23"></div>

                  <!--  -->
                  <div class="p-t-33">
                    

                  

                     <!-- 새상품 중고상품 리스트 보여주기 -->
                     <div class="itemDiv">
                        <div class="container listBtn">                     
                           <div class="row listView">
                           
                              <div id="newBtn" class="col-sm-6">
                                 <button class="listBtn" id="new" type="button" onclick="newView()">새상품</button>
                              </div>

                              <div id="usedBtn" class="col-sm-6">
                                 <button class="listBtn" id="used" type="button" onclick="uesdView()">중고상품</button>
                              </div>
                           </div>
                           
                           <div id="listcon"></div>
                        </div>

                     </div>

                   
                  </div>

                  <!--  -->
                 
            </div>
         </div>
      </div>


   </section>


   <!-- 리뷰 섹션 -->
   <section id=review-section class="sec-relate-product bg0 p-t-45 p-b-105">
      <div class="container">
         <div class="p-b-45">
            <h3 id="review-section-title" class="ltext-106 cl5 txt-center">상품평</h3>
          
         </div>

         <!-- 리뷰 목록 ajax로 바꿀 예정 -->
         <div  id="review" >
         <div id="reviewDown"></div>
          <div class="review row">
            <div class="col-2 review-img"><img class='reviewImg' src="resources/images/tradit.jpg"></div>
            <div class="col-10 review-content row">
               <div class="col-3">
               <div class="review-con">mall</div>
               <div class="review-con">id</div>
               <div class="review-con">data</div>
               <div class="review-con">
               <span class="star">★★★★★<span style="width:120px;">★★★★★</span></span>
               
               grade</div>
               </div>
               
               
               <div class="col-9 review-review">review</div>
            </div>   
                
         </div>
         
         </div>
         
         
      </div>
   </section>





   <!-- Back to top -->
   <div class="btn-back-to-top" id="myBtn">
      <span class="symbol-btn-back-to-top"> <i
         class="zmdi zmdi-chevron-up"></i>
      </span>
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
      $('.js-addwish-b2, .js-addwish-detail').on('click', function(e) {
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
   <!--===============================================================================================-->
   <script src="resources/js/main1.js"></script>




   <!-- 페이지 들어오면서 리스트 가져오기 위한것 -->
   <script type="text/javascript">
      $(document).ready(function() {
         newView(); // 호출
         review();
         bagName();

      })

      // 페이지에 들어오자마자 리스트 출력
      function newView() {
         $.ajax({

            url : '${cpath}/new_bag_detailAjax.do',

            data : {'bag_no' : '${bag_no}'},   
            type : 'get',

            dataType : 'json',

            success : newList,

            error : function() {
               alert('실패!');
            }

         })
      }

      //------------------------------------ 새상품 리스트 가져오기
      function newList(data) {
         

         var blist = "";
         var mainPri = data[0].new_price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");

         $.each(data,function(index, vo) {
                  var pri = vo.new_price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
                        
   
                  blist += "<div id='inn" + vo.new_bag_no + "' class='list row' onclick='price(" + vo.new_price+"); border("+vo.new_bag_no+");'>"
                  blist += "<div class='contents-new col-sm-6' ><span class='spanFont'>"
                        + pri + "원</span></div>"
                  blist += "<div class='contents-new col-sm-6'><button class='btn-5 contents-new col-sm-12'><a href='"+vo.new_link+"'><img class='siteImg' src='${cpath}/getByteMallImage.do?new_bag_no="+vo.new_bag_no+"'></a></button>"
                  blist += "</div>"
                  blist += "</div>"
                  
                     

                     })
         $('.list.row').css("border", "none").css('border-bottom','1px solid #dcdcdc');   
         $('.list.row').remove();
         
         $('#listcon').after(blist);
         $('#mainPrice').remove();

         $('#new').css('background-color', '#ffffff').css('color', 'black').css('font-weight','bold');
         $('#used').css('background-color', '#e6e6fa').css('color','#696969');
         
         
         
         // 화면시작시 첫번째 가격 보여주기
         $('#modelName').after(innerHTML = "<div id='mainPrice'><span class='mtext-106 cl2'>"+ mainPri +"원</span></div>")
         
         // 화면시작시 첫번째 이미지 가져오기
         $('#mainImg').html('<img src=${cpath}/getByteMainImage.do?bag_no='+data[0].bag_no +'>')
         
         
         

      }

      // ------------------------------------------- 중고 리스트 가져오기
      function uesdView() {
         $.ajax({
            // 서버 url
            url : '${cpath}/used_bag_detailAjax.do',
            // data : 보내줄 데이터를 객체 형식으로 넘겨 줬었음 {idx:idx}
            // 요청방식
            data : {'bag_no' : '${bag_no}'},
            type : 'get',
            // 받아올 에이터 타입 지정
            dataType : 'json',
            // 성공했을 때 설행할 함수
            success : usedList,
            // 실패앴을때 실행할 함수
            error : function() {
               alert('실패!');
            }

         })
      }

   // 3. 화면에 보여주는 함수 생성
      function usedList(data) {
         //내가 화면에 출력해줄 tr 태그들의 모음
         var blist = "";

         // for-each문을 사용하는 방법
         // $each(어떤 데이터를 가지고 반복, 어떤 함수로 처리해줄 건지)

         $.each(data,function(index, vo) {
                        // 배열data에 있는 {}객체 를빼서 board에 넣는다 그리고 board.idx 이런식으로 가져오기 
                        // function(인덱스번호, data안에 들어있는 각각의 값들을 어떤 변수로 받아줄 건지)
                        // 순서가 중요하지 이름이 중요하진 않다.
                        var pri = vo.used_price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
                        blist += "<div id='inn" + vo.used_bag_no + "'  class='list row' onclick='price(" + vo.used_price+"); border("+vo.used_bag_no+");imgChange("+vo.used_bag_no+")'>"
                        blist += "<div class='contents-new col-sm-6' ><span>"
                              + pri + "원</span></div>"
                        blist += "<div class='contents-new col-sm-6 img'><button class='btn-5 contents-new col-sm-12'><a class='bayBtn' href='"+vo.used_link+"'><img style='display:none;' class='usedImg' src='"+vo.used_img+"'>사러가기</a></button>"
                        blist += "</div>"
                        blist += "</div>"
                     

                     })

         // heading이라는 class 명을 가진 tr태그 다음에 blist를 추가하기!
         $('.list.row').remove();
         $('#listcon').after(blist);

         $('#new').css('background-color', '#e6e6fa').css('color', '#696969').css('padding','0px!important');
         $('#used').css('background-color', '#ffffff').css('color', 'black').css('padding','0px!important').css('font-weight','bold');
         
         
      }
      
      
      // div 클릭시 해당 금액 보여주기-+
      function price(price) {
         $('#mainPrice').remove();
         var pri = price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
         
         $('#modelName').after(innerHTML = "<div id='mainPrice'><span class='mtext-106 cl2'>"+ pri +"원</span></div>")
      
      }
      // div 클릭시  border색 바꾸기
      function border(bagno) {
         
         $('.list.row').css("border", "none").css('border-bottom','1px solid #dcdcdc');
         $('#inn' + bagno).css("border", "1px solid #9400d3");
      
      }
      
      // div 클릭시 이미지 변경하기
      function imgChange(used_bag_no){
         $('#mainImg').html('<img src='+$('#inn'+used_bag_no+' .usedImg').attr('src')+'>')
      }
      
      function enterkey() {
           if (window.event.keyCode == 13) {
    
                // 엔터키 누룰시 시행 되는 부분 
                $("#search").submit();
           }
   }
      
      
      
      // 화면 시작시 리뷰 리스트 가져오기
      function review(){
         
            $.ajax({

               url : '${cpath}/reviewAjax.do',
               
               data : {'bag_no' : '${bag_no}'},
               
               type : 'get',

               dataType : 'json',

               success : reviewList,

               error : function() {
                  alert('실패!review');
               }

            })
         }
      
      // 리뷰테이터 ajax로 화면 출력 함수
      function reviewList(data) {
         console.log(data)
         reList="";
         
         console.log(data[0].review_img)
         // for-each문을 사용하는 방법
         // $each(어떤 데이터를 가지고 반복, 어떤 함수로 처리해줄 건지)

         $.each(data,function(index, revo) {
                        // 배열data에 있는 {}객체 를빼서 board에 넣는다 그리고 board.idx 이런식으로 가져오기 
                        // function(인덱스번호, data안에 들어있는 각각의 값들을 어떤 변수로 받아줄 건지)
                        // 순서가 중요하지 이름이 중요하진 않다.      
                        var grade = revo.review_grade*30;
                        
                        if(revo.review_img==null){
                        
                        reList += "<div class='review row'>"// 이미지 불러오는 컨트롤러 만들기
                        reList += "<div class='col-2 review-img' ></div>"
                        reList += "<div class='col-10 review-content row'>"
                        reList += "<div class='col-3'>"
                        reList += "<div class='review-con'>"+revo.review_mall+"</div>"
                        reList += "<div class='review-con'>"+revo.review_id+"</div>"
                        reList += "<div class='review-con'>"+revo.review_date+"</div>"
                        reList += "<div class='review-con'><span class='grade'>"+revo.review_grade+"점  </span><span class='star'>★★★★★<span style='width:"+grade+"px!important;'>★★★★★</span></span></div>"
                        reList += "</div>"
                        reList += "<div class='col-9 review-review'>"+revo.review_text+"</div>"
                        reList += "</div><br>"
                        reList += "</div>"      
                        
                        }else{
                        reList += "<div class='review row'>"// 이미지 불러오는 컨트롤러 만들기
                        reList += "<div class='col-2 review-img' ><img class='reviewImg' src='"+revo.review_img+"'}></div>"
                        reList += "<div class='col-10 review-content row'>"
                        reList += "<div class='col-3'>"
                        reList += "<div class='review-con'>"+revo.review_mall+"</div>"
                        reList += "<div class='review-con'>"+revo.review_id+"</div>"
                        reList += "<div class='review-con'>"+revo.review_date+"</div>"
                        reList += "<div class='review-con'><span class='grade'>"+revo.review_grade+"점  </span><span class='star'>★★★★★<span style='width:"+grade+"px!important;'>★★★★★</span></span></div>"
                        reList += "</div>"
                        reList += "<div class='col-9 review-review'>"+revo.review_text+"</div>"
                        reList += "</div><br>"
                        reList += "</div>"
                           
                        }

                     })
                     $('#reviewDown').after(reList);
                     
         
      }
      
      // 화면 시작시 백 정보 가져오기
      function bagName(){
         
            $.ajax({

               url : '${cpath}/bagName.do',
               
               data : {'bag_no' : '${bag_no}'},

               type : 'get',

               dataType : 'json',

               success : bagname,

               error : function() {
                  alert('실패!bana');
               }

            })
         }
      
      function bagname(data){
         
         // 화면시작시 첫번째 브랜드 가져오기
         $('#modelName').html('<h4 class="mtext-105 cl2 js-name-detail p-b-14">'+data[0].bag_brand+'</h4>')
         
         // 화면시작시 백 이름 가져오기
         $('#bagName').html('<p>'+data[0].bag_name_new+'</p>')
         // bag 들어가서  bagno에 맞는 이름 가져오는 컨트롤러 만들기
      }
      
      
         
      
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
   
<script src="https://kit.fontawesome.com/a7989cf475.js" crossorigin="anonymous"></script>
</body>
</html>