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


		<section id="first" class="main special">
			<header class="major">
				<h2>회원 탈퇴</h2>
			</header>
			
			<form action="${cpath}/deleteMember.do" method="post">
			<ul class="features">
				<li>
				<span style="text-align: left" style="font-size:20px">계정 비밀번호</span>
				<input type="hidden" name="id" value="<%=vo.getId()%>">
				<input type="password" id="pw" name="pw" placeholder="계정 비밀번호">
				<br>
				※탈퇴 후 개인정보 데이터가 삭제됩니다.
				<br>
				<input type="button" id="ip" value="회원탈퇴" class="button fit" onclick="inputPW()">
				
				<br><br>
				<a href="${cpath}/goMyPage.do">이전으로</a>
				</li>
			</ul>
			</form>

		</section>


	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script>
	
		function inputPW(){
			var pw = document.getElementById('pw');
			
			if(pw.value.length<1){
				alert("비밀번호를 입력해주세요")
			}else{
				if(pw.value != "<%=(String)vo.getPw()%>" ){
					alert('기존 비밀번호를 잘못 입력하셨습니다')
				}else{
					alert('회원 탈퇴 되었습니다')
		        	console.log($('input#ip').attr('type','submit'))
				}
			}
		}
		
	</script>
</body>
</html>