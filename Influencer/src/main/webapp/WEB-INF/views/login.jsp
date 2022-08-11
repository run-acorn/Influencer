<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>로그인</title>

</head>
<body class="login">

			<h2>로그인</h2>
			
			<!-- 로그인 form -->
				<ul class="features">
					<li>
					<span class="id"></span>
					<input type="text" id="id" name="id" placeholder="ID을 입력하세요"> 
					<input type="password" id="pw" name="pw" placeholder="PW를 입력하세요">
					<button id="login">로그인</button>
					<a href="${cpath}/">뒤로가기</a>
					</li>
				</ul>
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script>
	
		$('#login').on('click', function(){
			let id = $('#id').val();
			let pw = $('#pw').val();
			
			var id2 = document.getElementById('id');
			var pw2 = document.getElementById('pw');
			
			if(id2.value.length<1){
				alert('아이디를 입력해주세요');
			}else if(pw2.value.length<1){
				alert('비밀번호를 입력해주세요');
			}else{
				$.ajax({
	        		url : '${cpath}/loginCheck.do',
	        		type : 'POST',
	        		data : {'id':id,
	        				'pw':pw
	        				},
	        		dataType : 'text',
	        		success : function(data){
	        			console.log(data);
	        			console.log('로그인 성공');	
	        			if(data == "false"){
	                        alert('아이디 또는 비밀번호를 확인해주세요.');
	        			}
	                    else{
	                        location.href="${cpath}/login.do?id="+id+"&pw="+pw;
	                    }
	        		},
	        		error : function(){
	        			alert('로그인 실패')
	        		}
				})
			}
			
		})
		
		
	</script>
	
</body>
</html>