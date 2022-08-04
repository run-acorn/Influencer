<%@page import="kr.smhrd.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<!-- bootstrap 사용하기 위해 필요한 라이브러리 3개! -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Change PW</title>
</head>
<body>

	<%
		MemberVO vo=(MemberVO)session.getAttribute("vo");
		
	%>


	<div id="wrapper" align="center">

		<section id="first" class="main special">
			<header class="major">
				<h2>비밀번호 변경</h2>
			</header>
			
			<!-- 로그인 form -->
			<form action="${cpath}/changePw.do" method="post">
				<ul class="features">
					<li>
					<input type="hidden" name="id" value="<%=vo.getId()%>">
					<span style="text-align: left">기존 비밀번호</span>
					<input type="password" id="pw3" name="pw3" placeholder="기존 비밀번호">
					
					<span style="text-align: left">새 비밀번호</span>
					<input type="password" id="pw" name="pw" placeholder="새 비밀번호">
					<input type="password" id="pw2" name="pw2" placeholder="새 비밀번호 확인">
					<div id="text"></div>
					<br><br>
					
					<input type="button" id="cp" value="비밀번호변경" class="button fit" onclick="changePW()">
					
					<br><br>
					<a href="${cpath}/goMyPage.do">이전으로</a>
					
					</li>
					
				</ul>
			</form>

			
		</section>


	</div>
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script>
	
		function changePW(){
			var pw = document.getElementById('pw');
			var pw2= document.getElementById('pw2');
			var pw3= document.getElementById('pw3');
			
			if(pw.value.length<1 || pw2.value.length<1){
				alert("비밀번호를 입력해주세요")
			}else{
			
			if(pw.value == pw2.value){
				if(pw3.value != "<%=(String)vo.getPw()%>" ){
					alert('기존 비밀번호를 잘못 입력하셨습니다')
				}else{
					alert('비밀번호가 변경되었습니다')
		        	console.log($('input#cp').attr('type','submit'))
				}
	         }else{
	        	alert('비밀번호를 다시 입력해주세요')
	         }
			
			
			}
			
		}
		 
		// 입력한 비밀번호가 서로 같은지
		$(function () {
	           $('#pw').keyup(function () {
	               $('#text').html('');
	               console.log($('#pw').val())
	           });

	          $('#pw2').keyup(function () {
	                if ($('#pw').val() != $('#pw2').val()) {
	                    $('#text').html('<h5>비밀번호 일치하지 않음</h5><br>');
	                } else {
	                    $('#text').html('<h5>비밀번호 일치함</h5><br>');
	                }
	            });
	          
	          
	       });

	</script>
</body>
</html>