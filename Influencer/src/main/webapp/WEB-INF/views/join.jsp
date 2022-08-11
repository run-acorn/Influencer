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

				<ul class="features">
					<li>
						<h3>아이디</h3> 
						<input type="text" name="id" placeholder="ID을 입력하세요">
						<button type="button" id="idCheck">중복 확인</button> <br>
						<div id=text></div> <br>
						
						<h3>비밀번호</h3> 
						<input type="password" name="pw" id="pw" placeholder="PW를 입력하세요">
						
						<h3>비밀번호 확인</h3> 
						<input type="password" name="pwCheck" id="pwCheck" placeholder="PW를 입력하세요"> <br>
						<div id=pwNotice></div> <br>
						
						<h3>닉네임</h3> 
						<input type="text" name="nick" id="nick" placeholder="닉네임을 입력하세요"> 
						<div id="nkNotice"></div>
						
					</li>
				</ul>

				<div class="col-md-12">
					<div class="form-group">
						<button id="btnSubmit">가입하기</button>
					</div>
					
					<div class="form-group">
						<a href="${cpath}/">뒤로가기</a>
					</div>
				</div>

		<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"> </script>
	<script>	
	
	let ChkID = 0;
	let ChkPw = 0;
	let ChkNk = 0;
	
	
			$('button#btnSubmit').on('click', function(){
				
				let obj = {
						'id' :$('input[name=id]').val(),
						'pw':$('#pw').val(),
						'nick':$('input[name=nick]').val()
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
	                    	location.href="${cpath}/goLogin.do";
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
			
			
		<!-- 아이디 중복 체크 기능 -->
		$('#idCheck').on('click', function(){
			let id = $('input[name=id]').val();
	        let btn = document.getElementById('idCheck')
	        let div = document.getElementById('text')
	        
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
		
		
		<!-- 비밀번호 확인 기능 -->
	    $(function () {
	        $('#pw').keyup(function () {
	            $('#chkNotice').html('');
	            console.log($('#pw').val())
	        });

	    	$('#pwCheck').keyup(function () {
                if ($('#pw').val() != $('#pwCheck').val()) {
                    $('#pwNotice').html('<h5>비밀번호 일치하지 않음</h5><br>'); // 불일치할 때 눈에 더 잘띄게 만들면 좋을 듯!
                    ChkPw = 0;
                } else {
                    $('#pwNotice').html('<h5>비밀번호 일치함</h5><br>');
                    ChkPw = 1
                }
                console.log(ChkPw)
            });
	    });
		
	    
		<!-- 닉네임 중복체크 기능 -->
		$('#nick').on('keyup', function(){
			let nick = $('input[name=nick]').val();
			let div = document.getElementById('nkNotice')

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
						if (cnt >= 1) {
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
</body>
</html>