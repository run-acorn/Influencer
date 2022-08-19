<%@page import="kr.smhrd.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
#result_card img {
	max-width: 100%;
	height: auto;
	display: block;
	padding: 5px;
	margin-top: 10px;
	margin: auto;
}

#result_card {
	position: relative;
}

.imgDeleteBtn {
	position: absolute;
	top: 0;
	right: 5%;
	background-color: #ef7d7d;
	color: wheat;
	font-weight: 900;
	width: 30px;
	height: 30px;
	border-radius: 50%;
	line-height: 26px;
	text-align: center;
	border: none;
	display: block;
	cursor: pointer;
}
</style>
<title>Table 06</title>
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link
	href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/style.css">

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
<link rel="stylesheet" type="text/css"
	href="resources/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="resources/css/util.css">
<link rel="stylesheet" type="text/css" href="resources/css/main1.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/css/util.css">
	<link rel="stylesheet" type="text/css" href="resources/css/main1.css">
		<link rel="stylesheet" type="text/css" href="resources/css/custom.css">
		<!--  jq -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />

<!-- 한글 폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">

<style>
.heading-section {
	font-size: 40px;
	font-family: 'Noto Sans KR', sans-serif !important;
	font-weight: 30px;
	color: black;
	border-bottom: 3px solid black;
	padding-bottom: 20px;
	margin-left: 55px;
	margin-bottom: 30px;
}

.column-1, .column-4, .column-5, .column-6 {
	text-align: center;
}

th.column-2 {
	text-align: center;
}



.column-2 {
	width: 500px;
	padding: 10px !important;
}

td.column-2 {
	padding:40px!important;
}

.table_row {
	height: 30px !important;
	border-bottom: 3px solid black !important;
}

.table_row td {
	font-size: 18px !important;
}

.table-shopping-cart .table_row td {
	padding-bottom: 0px !important;
}

/* 제목 a 태그들 */
.link {
	color: inherit;
	display: block;
}

.link:active {
	color: black;
}

.link.link-title:hover {
	color: black;
	font-weight: bold !important;
	text-decoration: underline !important;
}

.link:hover {
	color: white;
}

/* 이동 버튼 */
#btn-hov {
	background-color: #dcdcdc;
}

#btn-hov:hover {
	background-color: #000000;
	color: #dcdcdc;
}

.table_head.heading th {
	font-size: 20px;
	background-color: #fffff0;
}


/*페이징 숫자*/
.pagingNum{
	margin:0 3px!important;
	border:1px solid #e6e6e6!important;
	text-align:center!important;
	font-size:13px!important;
	color:#999999!important;
	text-decoration:none!important;
	padding:10px!important;
}



/*페이진 이전, 다음*/
.pagingNext{
	margin:0 3px!important;
	border:1px solid #e6e6e6!important;
	text-align:center!important;
	font-size:13px!important;
	color:#999999!important;
	text-decoration:none!important;
	padding:10px!important;
	background-color:inherit!important;
}

.pagingNext:active{
	background-color: black!important;
	color:#f5f5f5!important;
}

.pagingNum:hover{
	background-color: black!important;
	color:#f5f5f5!important;
}

.pagingNum:active{
	background-color: black!important;
	color:#f5f5f5!important;
}

#main-main{
	background-image:url(resources/images/bag_list_title.jpg);
	background-size:100%;
	background-repeat:no-repeat;
	background-position:40% 30%;
}

</style>


</head>
<body>


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
			

					<p class="MainP1">아이디</p>
					<input type="text" id="idi" name="idi" placeholder="아이디를 입력하세요">
						<button type="button" id="idCheck">중복 확인</button> <br>
						<div id=text></div> <br>
						
						
						
					<p class="MainP1">비밀번호</p>
					<input type="password" name="pwi" id="pwi" placeholder="비밀번호를 입력하세요" autoComplete="off">
					<input type="password" name="pwCheck" id="pwCheck" placeholder="비밀번호를 입력하세요."> <br>
						<div id=pwNotice></div> <br>
					<p class="MainP1">닉네임</p>
					<input type="text" name="nick" placeholder="닉네임을 입력하세요"> 
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
				<input type="hidden" name="idc" value="${mvo.getId()}"> <span
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


	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-4">
					<h2 class="heading-section">자유 게시판</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="table-wrap">
						<table class="table">
							<tr class="table_head heading">
								<th class="column-1">번호</th>
								<th class="column-2">제목</th>
								<th class="column-4">머리글</th>
								<th class="column-5">작성자</th>
								<th class="column-5">작성시간</th>
							</tr>
							<tbody id="boardBody">
								<tr class="alert" role="alert">
									<td><label class="checkbox-wrap checkbox-primary">
											<input type="checkbox" checked> <span
											class="checkmark"></span>
									</label></td>
									<td>$89.98</td>
									<td>
										<div class="email">
											<span>Sneakers Shoes 2020 For Men </span> <span>Fugiat
												voluptates quasi nemo, ipsa perferendis</span>
										</div>
									</td>
									<td>$44.99</td>

									<td>
										<div class="img"
											style="background-image: url(resources/images/product-1.png);"></div>
									</td>
									<td>
										<button type="button" class="close" data-dismiss="alert"
											aria-label="Close">
											<span aria-hidden="true"><i class="fa fa-close"></i></span>
										</button>
									</td>
								</tr>




							</tbody>

						</table>
						<div
							class="flex-w flex-sb-m p-t-18 p-b-15 p-lr-40 p-lr-15-sm">
							<c:if test="${! empty mvo}">
								<div id="btn-hov"
									class="flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5">

									<a class="link" href="${cpath}/goboardinsert.do">게시판 글쓰기</a>

								</div>
							</c:if>
							<div id="btn-hov"
								class="flex-c-m stext-101 cl2 size-119 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-10">
								<a class="link" href="${cpath}/">메인으로</a>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</section>

	<script type="text/javascript">
		$(document).ready(function() {
			loadList(1);
		})

		function loadList(pageNum) {
			$.ajax({
				url : '${cpath}/getListPaging.do',
				type : 'get',
				data : {
					'pageNum' : pageNum
				},
				dataType : 'json',
				success : listView,
				error : function() {
					alert('실패');
				}
			})
		}

		function listView(data) {
			var blist = "";

			$('#boardBody').html("")

			
			$.each(
					data.list,
					function(index, board) {
						blist += "<tr class='table_row'>"
						blist += "<td class='column-1'>"
								+ board.board_no + "</td>"
						blist += "<td class='column-2'><a class='link link-title' href='${cpath}/boardView.do?board_no="
								+ board.board_no
								+ "'>"
								+ board.board_title + "</a></td>"
						blist += "<td class='column-4'>"
								+ board.board_head + "</td>"
						blist += "<td class='column-5'>" + board.nick
								+ "</td>"
						blist += "<td class='column-6'>"
								+ board.board_date + "</td>"
						blist += "</tr>"
					})

			blist += "<tr><td colspan=6 align='center'>"
			if (data.pageMake.prev) {
				blist += "<a class='pagingNext' href='javascript:loadList("
						+ (data.pageMake.startPage - 1) + ")'>"
				blist += "이전 "
				blist += "</a>"
			}

			for (var i = data.pageMake.startPage; i <= data.pageMake.endPage; i++) {
				blist += "<a class='pagingNum' href='javascript:loadList(" + (i) + ")'>"
				blist += i + " "
				blist += "</a>"
			}

			if (data.pageMake.next) {
				blist += "<a class='pagingNext' href='javascript:loadList("
						+ (data.pageMake.endPage + 1) + ")'>"
				blist += " 다음"
				blist += "</a>"
			}
			blist += "</td></tr>"

			$('#boardBody').append(blist);

		}
	</script>

	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/popper.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/main1.js"></script>
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
	<script
		src="resources/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
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
	
	<!-- =============================================================================================== -->
	
	
	
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
	
	
	<!-- ============================================================================================ -->
	
	
	
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

