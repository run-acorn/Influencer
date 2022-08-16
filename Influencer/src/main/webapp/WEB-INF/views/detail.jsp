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
<!--===============================================================================================-->

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
   margin-right: -950px;
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

.item {
   border: 1px solid #dcdcdc;
   height: 332px;
   overflow-y:hidden;
   overflow-x:hidden;
   border-bottom:none:
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
}

/* 리뷰 이미지 */
.reviewImg{
   width:150px;
   height:200px;
   
}

/* mall, id, date, text */
.review-con, .review-review {
   height:50px!important;
   padding-top:10px;
   font-family: 'Noto Sans KR', sans-serif !important;
   font-size:15px;
   font-weight:30px;
   color:black;
   
}

.list.row{
   height:56px;
   border:none;
   border-bottom:1px solid #dcdcdc;
}

.contents-new.col-sm-6{
   padding-top:10px;
}

#usedBtn, #newBtn{
   padding-right:0px!important;
   padding-left:0px!important;
}

.siteImg{
   height:25px;
   width:75px;
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



</style>

</head>

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


   <!-- Header -->
   <header class="header-v4">
      <!-- Header desktop -->
      <div class="container-menu-desktop">
         <!-- Topbar -->
         <div class="top-bar">
            <div class="content-topbar flex-sb-m h-full container">
               <div class="left-top-bar">Free shipping for standard order
                  over $100</div>

               <div class="right-top-bar flex-w h-full">
                  <a href="#" class="flex-c-m trans-04 p-lr-25"> Help & FAQs </a> <a
                     href="#" class="flex-c-m trans-04 p-lr-25"> My Account </a> <a
                     href="#" class="flex-c-m trans-04 p-lr-25"> EN </a> <a href="#"
                     class="flex-c-m trans-04 p-lr-25"> USD </a>
               </div>
            </div>
         </div>

         <div id="main-main"class="wrap-menu-desktop how-shadow1">
            <nav class="limiter-menu-desktop container">

               <!-- Logo desktop -->
               <a href="#" class="logo"> <img
                  src="resources/images/icons/logo-01.png" alt="IMG-LOGO">
               </a>

               <!-- 검색바 -->
               <div class="menu-desktop">
                  <div class="mainBar">
                     <input id="mainBar" type="text" onkeyup="enterkey();"
            class="mainLoginInput jejumyeongjo maininput" placeholder="&#61442; " name="input-search">
                  </div>
               </div>

               <!-- Icon header -->
               <div class="wrap-icon-header flex-w flex-r-m">
                  <div
                     class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
                     <i class="zmdi zmdi-search"></i>
                  </div>

                  <div
                     class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart"
                     data-notify="2">
                     <i class="zmdi zmdi-shopping-cart"></i>
                  </div>

                  <a href="#"
                     class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti"
                     data-notify="0"> <i class="zmdi zmdi-favorite-outline"></i>
                  </a>
               </div>
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

            <div class="col-md-6 col-lg-5 p-b-30">
               <div class="p-r-50 p-t-5 p-lr-0-lg">
               
               <!-- 모델명 -->
               <div id="modelName" >
                  <h4 class="mtext-105 cl2 js-name-detail p-b-14">모델명</h4>
                  </div>   
                     <!-- 상품 가격 뜨는곳 -->
                  


                  <div id="bagName" class="stext-102 cl3 p-t-23"></div>

                  <!--  -->
                  <div class="p-t-33">
                     <div class="flex-w flex-r-m p-b-10">
                        <div class="size-203 flex-c-m respon6">Size</div>

                        <div class="size-204 respon6-next">
                           <div class="rs1-select2 bor8 bg0">
                              <select class="js-select2" name="time">
                                 <option>Choose an option</option>
                                 <option>Size S</option>
                                 <option>Size M</option>
                                 <option>Size L</option>
                                 <option>Size XL</option>
                              </select>
                              <div class="dropDownSelect2"></div>
                           </div>
                        </div>
                     </div>

                     <div class="flex-w flex-r-m p-b-10">
                        <div class="size-203 flex-c-m respon6">Color</div>

                        <div class="size-204 respon6-next">
                           <div class="rs1-select2 bor8 bg0">
                              <select class="js-select2" name="time">
                                 <option>Choose an option</option>
                                 <option>Red</option>
                                 <option>Blue</option>
                                 <option>White</option>
                                 <option>Grey</option>
                              </select>
                              <div class="dropDownSelect2"></div>
                           </div>
                        </div>
                     </div>

                     <!-- 새상품 중고상품 리스트 보여주기 -->
                     <div class="item">
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

                     <div class="flex-w flex-r-m p-b-10">
                        <div class="size-204 flex-w flex-m respon6-next">
                           <div class="wrap-num-product flex-w m-r-20 m-tb-10">
                              <div
                                 class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
                                 <i class="fs-16 zmdi zmdi-minus"></i>
                              </div>

                              <input class="mtext-104 cl3 txt-center num-product"
                                 type="number" name="num-product" value="1">

                              <div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
                                 <i class="fs-16 zmdi zmdi-plus"></i>
                              </div>
                           </div>

                           <button
                              class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail">
                              Add to cart</button>
                        </div>
                     </div>
                  </div>

                  <!--  -->
                  <div class="flex-w flex-m p-l-100 p-t-40 respon7">
                     <div class="flex-m bor9 p-r-10 m-r-11">
                        <a href="#"
                           class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 js-addwish-detail tooltip100"
                           data-tooltip="Add to Wishlist"> <i
                           class="zmdi zmdi-favorite"></i>
                        </a>
                     </div>
<div>
                     <a href="#"
                        class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
                        data-tooltip="Facebook"> <i class="fa fa-facebook"></i>
                     </a> <a href="#"
                        class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
                        data-tooltip="Twitter"> <i class="fa fa-twitter"></i>
                     </a> <a href="#"
                        class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
                        data-tooltip="Google Plus"> <i class="fa fa-google-plus"></i>
                     </a>
                  </div>
               </div>
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
                  blist += "<div class='contents-new col-sm-6' ><span>"
                        + pri + "원</span></div>"
                  blist += "<div class='contents-new col-sm-6'><button class='btn-5 contents-new col-sm-12'><a href='"+vo.new_link+"'><img class='siteImg' src='${cpath}/getByteMallImage.do?new_bag_no="+vo.new_bag_no+"'></a></button>"
                  blist += "</div>"
                  blist += "</div>"
                  
                     

                     })
         $('.list.row').css("border", "none").css('border-bottom','1px solid #dcdcdc');   
         $('.list.row').remove();
         
         $('#listcon').after(blist);
         $('#mainPrice').remove();

         $('#new').css('background-color', '#ffffff').css('color', 'black');
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
                        
                        
                        blist += "<div id='inn" + vo.used_bag_no + "'  class='list row' onclick='price(" + vo.used_price+"); border("+vo.used_bag_no+"); imgChange("+vo.used_bag_no+");'>"
                        blist += "<div class='contents-new col-sm-6' ><span>"
                              + pri + "원</span></div>"
                        blist += "<div class='contents-new col-sm-6'><button class='btn-5 contents-new col-sm-12'><a href='"+vo.new_link+"'><img class='siteImg' src='${cpath}/getByteUsedMallImage.do?used_bag_no="+vo.used_bag_no+"'></a></button>"
                        blist += "</div>"
                        blist += "</div>"
                     

                     })

         // heading이라는 class 명을 가진 tr태그 다음에 blist를 추가하기!
         $('.list.row').remove();
         $('#listcon').after(blist);

         $('#new').css('background-color', '#e6e6fa').css('color', '#696969').css('padding','0px!important');
         $('#used').css('background-color', '#ffffff').css('color', 'black').css('padding','0px!important');
         
         
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
         $('#mainImg').html('<img src=${cpath}/getByteUsedImage.do?used_bag_no='+used_bag_no+'>')
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
         $('#bagName').html('<p>'+data[0].bag_name+'</p>')
         // bag 들어가서  bagno에 맞는 이름 가져오는 컨트롤러 만들기
      }
      
      
         
      
   </script>
<script src="https://kit.fontawesome.com/a7989cf475.js" crossorigin="anonymous"></script>
</body>
</html>