<%@page import="kr.smhrd.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<!-- 댓글 -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="resources/css/style1.css" rel="stylesheet" />

<title>Table 06</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700'
	rel='stylesheet' type='text/css'>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="resources/insertform/css/style.css">
<link rel="stylesheet" type="text/css" href="resources/css/custom.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="resources/images/icons/favicon.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="resources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/css/util.css">
	<link rel="stylesheet" type="text/css" href="resources/css/main.css">
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


<style type="text/css">
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
								class="file-import w-btn-outline w-btn-skin-outline hover-1">
								Image search </button>




						</div>
					

					<!-- 내정보 친구들 -->
					
						
						<c:if test="${empty mvo}">

							<div class="log-div">


							    <div class="log-div-in1"> <button class="logbtn"> <a class="logbtn" href="${cpath}/"> Main </a> </button> </div>

								<div class="log-div-in2" > <button class="logbtn" id="logbtn">Login</button> </div>

								<div class="log-div-in3" > <button class="joinbtn" id="joinbtn">Join</button> </div>


							</div>


						</c:if>


						<!-- 내정보 메뉴 -->
						
						<c:if test="${!empty mvo}">

							<div class="log-div-main">

								<p class="MainP1 mainnick"> Welcome to ${mvo.nick}</p>

								<button onclick='location.href="${cpath}/logout.do"'
									class="logoutbtn mainnick" > Logout </button>
									
									<button onclick='location.href="${cpath}/"'
									class="logoutbtn mainnick4"> Main </button>
									
									

								<div class="dropdown">
							<div id=myMainBar2 class="dropbtn">My Menu</div>
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


	


	<!-- Content page -->
	<section class="bg0 p-t-104 p-b-116">
		<div class="container">
			<div class="flex-w flex-tr">
				<div class="size-210 bor10 p-lr-70 p-t-55 p-b-70 p-lr-15-lg w-full-md">
				
				
				<c:forEach var="list" items="${list}">
				
					<form action="${cpath}/goboardUpdate.do?board_no=${list.board_no}"
											method="POST" id="boardUpdate" name="boardUpdate"
											class="contactForm">
						<h4 class="mtext-105 cl2 txt-center p-b-30">
						게시판 글 
						</h4>
						<p class="boad_P">  상품에 대한 질문, 리뷰를 남겨보세요! </p>

						
							<div class="form-group">
													<label class="label" for="email">머리글</label> 
													<select
															name="board_head" class="selectpicker"
															data-style="btn btn-success">
															<option value="">${list.board_head}</option>
														</select>
												</div>
												
						<div class="bor8 m-b-20 how-pos4-parent">		
												<div class="form-group">
													<label class="label" for="name">제목</label> <input 
														type="text" name="board_title"
														id="board_title" value="${list.board_title}"readonly>
														<label class="label" for="name">닉네임</label> <input
															type="text" class="form-control" name="nick" id="nick"
															value="${list.nick}" readonly>
															<label class="label" for="name">작성시간</label> <span
															class="form-control">${list.board_date}</span>
														<div class="form-group">
													<label class="label" for="subject">이미지</label>
														<c:if test="${!empty list.board_uploadPath}">
														<span><img src='${cpath}/img_display?fileName=${list.board_uploadPath}/${list.board_fileName}'></span>
														</c:if>
														<c:if test="${empty list.board_uploadPath}">
														<span></span>
														</c:if>
													<div id="uploadResult">
													
													</div>
												</div>
												</div>		
													
												
						</div>
						


					
						
						
											<div class="bor8 m-b-30">
													<label class="label" for="#">글내용</label>
													<textarea name="board_content" class="form-control"
														id="board_content" cols="30" rows="10"
														placeholder="내용을 입력하세요"> ${list.board_content}</textarea>
												</div>
												<c:if test="${list.nick == mvo.nick}">
													
														<div class="form-group">
															<input type="submit" value="글 수정" class="button fit boder_update_btn" >
															
															<div class="submitting"></div>
														</div>
													
												</c:if>
											</div>
										</form>

										
													
						
					
					<div class="board_ceter_view">
					
					<c:if test="${list.nick == mvo.nick}">
										
											
													<a href="${cpath}/boardDelete.do?board_no=${list.board_no}">
													<input type="submit" value="글 삭제" class="button fit nick_ch_btn" ></a>
													<div class="submitting"></div>
											
											
										</c:if>
					
					
					
				
					
					</div>
					<div class="a_tag_ceter_view">
					<a href="${cpath}/returnBoard.do">이전으로</a>
					</div>
				</div>

				
			</div>
		</div>
	</section>	
	



	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>
	
	
	

	<!-- 댓글 -->
	<!-- Comments section-->

	<section class="container">
		<table>
			<div class="card bg-light">
				<div class="container">
					<tr class="heading">

						<script type="text/javascript">
							$(document).ready(function() {
								loadList();
							})

							function loadList() {
								$.ajax({
									url : '${cpath}/commentList.do',
									dataType : 'json',
									data : {
										"board_no" : "${list.board_no}"
									},
									type : 'get',
									success : listView,
									error : function() {
										alert('실패');
									}

								})
							}
							function listView(data) {
								var blist = "<tr class = 'innerContent'>";
								blist += '<c:if test="${!empty mvo.nick}">';
								blist += '<td><textarea id="txt" class="form-control" rows="3">';
								blist += '</textarea></td><td><button type="button" onclick = "commentInsert('
										+ data.comment_no
										+ ')" class = "btn-sm btn-danger btn">';
								blist += '댓글등록</button></td></c:if>';
								blist += "</tr>"
								$
										.each(
												data,
												function(index, comment) {
													blist += "<tr class ='innerContent'>";
													blist += "<td>"
													blist += "<div class='d-flex'>"
													blist += "<div class='flex-shrink-0'>"
															+ "<p class='comment_p'>"+comment.nick+"</p>"
															+ "<br>"
															+ "<div class='ms-3'>"
													if (comment.nick == "${mvo.nick}") {

														blist += "<button type='button' onclick = 'commentDelete("
																+ comment.comment_no
																+ ")' class = 'btn-sm btn-danger btn delete_btn'>삭제</button>"

													}
													blist += "<div class='ms-3'>";
													blist += "<div class='fw-bold'>"
															+ comment.comment_date
															+ "</div>"
													blist += comment.comment_content
															+ "</div>"
													blist += "</div></div></div>"
													blist += "</td>"
													blist += "</tr>"
														blist += "<br>"
												})
								$('.heading').after(blist);

							}

							function commentInsert() {
								var comment_content = $('#txt').val()
								$.ajax({
									url : '${cpath}/commentInsert.do',
									data : {
										'comment_content' : comment_content,
										'nick' : "${mvo.nick}",
										'board_no' : "${list.board_no}"
									},
									type : 'post',
									success : loadList,
									error : function() {
										alert('에러');
									}
								})
								$('#txt').val('');
								$('.innerContent').remove();
							}

							function commentDelete(comment_no) {
								$.ajax({
									url : '${cpath}/commentDelete.do',
									data : {
										'comment_no' : comment_no
									},
									type : 'post',
									success : loadList,
									error : function() {
										alert('에러');
									}
								})
								$('.innerContent').remove();
							}
						</script>

					</tr>


				</div>
			</div>
		</table>
	</section>



	</c:forEach>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->


	<script src="resources/js/popper.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/main.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
	<script src="resources/js/custom.js"></script>
	<script src="https://kit.fontawesome.com/a7989cf475.js"
		crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	
	
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
