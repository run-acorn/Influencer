<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>SMHRD 커뮤니티 회원가입</title>
</head>
<body class="login">

			<h2>회원가입</h2>

			<form action="${cpath}/memberInsert.do" method="POST">
				<ul class="features">
					<li>
						<h3>아이디</h3> <input type="text" name="id" placeholder="ID을 입력하세요">
	
						<h3>비밀번호</h3> <input type="password" name="pw" placeholder="PW를 입력하세요">
	
						<h3>닉네임</h3> <input type="text" name="nick" placeholder="닉네임을 입력하세요"> 
	
					</li>
				</ul>

				<div class="col-md-12">
					<div class="form-group">
						<input type="submit" value="가입하기" class="btn btn-primary">
					</div>
				</div>
			</form>
	</div>


</body>
</html>