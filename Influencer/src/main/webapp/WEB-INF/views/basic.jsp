<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 프로젝트의 contextpath값을 동적으로 가져오는 방법 -->
<c:set var= "cpath" value="${pageContext.request.contextPath}"/>
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
<title>Insert title here</title>
</head>
<body>

	<div class = "container">
		<h2>jQuery+ajax+Session관리</h2>
		<div class="panel panel-default">
			<div class="panel-heading">
			
			<c:if test="${empty mvo}">
				<form class="form-inline" action="${cpath}/login.do">
				  <div class="form-group">
				    <label for="id">아이디:</label>
				    <input type="text" class="form-control" id="id" name="id">
				  </div>
				  <div class="form-group">
				    <label for="pw">비밀번호:</label>
				    <input type="password" class="form-control" id="pw" name="pw">
				  </div>
				  <button type="submit" class="btn btn-default">로그인</button>
				</form>
			</c:if>
			
			<c:if test="${!empty mvo}">
				<label>${mvo.name}님 환영합니다!</label>
				<button onclick='location.href="${cpath}/logout.do"' class = 'btn btn-warning btn-sm'>로그아웃</button>
			</c:if>
				
		 	</div>
		  <div class="panel-body">
		  	<table class = "table table-bordered table-hover">
		  		<tr class = "heading">
		  			<td>번호</td>
		  			<td>제목</td>
		  			<td>작성자</td>
		  			<td>작성일</td>
		  			<td>삭제</td>
		  		</tr>
		  		
		  		<c:if test="${!empty mvo}">
		  		<tr>
		  			<td colspan = "5">
		  				<button onclick="goInsert()" class = "btn btn-primary btn-sm">글쓰기</button>
		  			</td>
		  		</tr>
		  		</c:if>
		  		
		   </table>
		   
		   		<div id="insertview" style="display:none">
	  				<form id="frm" method="post">
	  				<input type = "hidden" name = "id" value = "${mvo.id}">
					  <div class="form-group">
					    <label for="title">제목 :</label>
					    <input type="text" class="form-control" name="title" id="title">
					  </div>
					  <div class="form-group">
					    <label for="writer">작성자 :</label>
					    <input type="text" class="form-control" name="writer" id="writer" value="${mvo.name}" readonly="readonly">
					  </div>
					  <div class="form-group">
					    <label for="contents">내용 :</label>
					    <textarea rows = "10" class="form-control" name="contents" id="contents"></textarea>
					  </div>
					  <button type="button" onclick="boardInsert()" class="btn btn-primary btn-sm">글쓰기</button>
					  <button type="reset" class="btn btn-warning btn-sm close2">닫기</button>
					</form>
		  		</div>	
		  	</div>
		</div>
	</div>

<script type="text/javascript">
	// 1. 해당하는 페이지에 접속하자마자 서버에 데이터를 요청하는 ajax 함수를 실행
	$(document).ready(function(){
		loadList(); // () 쓰면 호출, 안쓰면 참조
	})
	
	// 2. 서버에 요청하는 ajax 함수를 생성
	function loadList(){
		$.ajax({
			// 서버 url
			url : '${cpath}/boardListAjax.do',
			// 요청 방식
			type : 'get',
			// 받아올 데이터 타입 지정
			dataType : 'json',
			// 성공했을 때 실행할 함수
			success : listView,
			// 실패했을 때 실행할 함수
			error : function(){
				alert('실패!');
			}	
		})
	}

	// 3. 화면에 보여주는 함수 생성
	function listView(data){
		
		console.log(data)
		// 내가 화면에 출력해줄 tr 태그들의 모음
		var blist = "";
		
		// for-each문을 사용하는 방법
		// $.each(어떤 데이터를 가지고 반복, 어떤 함수로 처리해줄건지)
		$.each(data,function(index,board){
			// function(인덱스번호,data안에 들어있는 각각의 값들을 어떤 변수로 받아줄 건지)
			blist += "<tr class = 'innerContent'>"
			blist += "<td>"+board.idx+"</td>"
			blist += "<td><a href='javascript:viewContent("+board.idx+")'>"+board.title+"</a></td>"
			blist += "<td>"+board.writer+"</td>"
			blist += "<td>"+board.indate+"</td>"
			
			if("${mvo.id}"==board.id){
				blist += "<td><button onclick = 'boardDelete("+board.idx+")' class = 'btn-sm btn-warning btn'>삭제</button></td>"

			}else{
				blist += "<td><button disabled onclick = 'boardDelete("+board.idx+")' class = 'btn-sm btn-warning btn'>삭제</button></td>"				
			}
			
			blist += "</tr>"
			
			blist += "<tr class = 'innerContent' id = 'vc"+board.idx+"' style='display:none'>"
			
			blist += "<td colspan = '5'>"
			blist += "<textarea rows = '5' class = 'form-control'>"+board.contents+"</textarea>"
			blist += "<br>"
			if("${mvo.id}"==board.id){
				blist += "<button onclick='boardUpdate("+board.idx+")' class = 'btn-success btn btn-sm'>수정</button>"
			}else{
				blist += "<button disabled onclick='boardUpdate("+board.idx+")' class = 'btn-success btn btn-sm'>수정</button>"
			}
			blist += "&nbsp<button onclick='goClose("+board.idx+")' class = 'btn-warning btn btn-sm'>닫기</button>"
			blist += "</td>"
			blist += "</tr>"
			
			
		})
		
		// heading이라는 class 명을 가진 tr태그 다음에 blist를 추가하기!
		$('.innerContent').remove();
		$('.heading').after(blist);
		
	}
	
	// 내가 짠 코드 (글쓰기 토글키)
/*	$(".write").click(function(){
		if($(".writeDisplay").is(":visible")){
			$(".writeDisplay").css("display","none");
		}else{
			$(".writeDisplay").css("display","block");
		}
	}) */
	
	function goInsert(){
		
		if($('#insertview').css('display') == 'none'){
			// $('#insertview').css('display','block');
			$('#insertview').slideDown();
		}else{
			//$('#insertview').css('display','none');
			$('#insertview').slideUp();
		}
		
	}
	
	// 1. 글쓰기 버튼을 클릭했을 때 작동할 함수 생성(boardInsert)
	
	// 2. form태그 안쪽에 있는 input 2개, textarea안에 들어있는 값을 가져와서
	
	// 3. boardInsert.do로 해당하는 데이터를 보내주기
	
	// 4. 받아올 데이터는 없음 --> 성공했을 때는 loadList함수를 다시 한번 실행
	function boardInsert(){
		// form 태그 안에 있는 input, textarea등에 name값이 달려있는 태그들의 값을 가져와서
		// 직렬화시키는 함수
		var formdata = $('#frm').serialize();
		
		$.ajax({
			// 서버 url
			url : '${cpath}/boardInsert.do',
			// 요청 방식
			type : 'post',
			// 데이터 전송
			data : formdata,
			// 성공했을 때 실행할 함수
			success : loadList,
			// 실패했을 때 실행할 함수
			error : function(){
				alert('실패!');
			}
		})
		
		// 초기화 버튼을 한번 클릭!
		$('.close2').trigger('click');
		
		// insertview div태그를 다시 접어주기
		$('#insertview').slideUp();
		
	}
	
	function boardDelete(idx){
		
		$.ajax({
			// 서버 url
			url : '${cpath}/boardDelete.do',
			// 요청 방식
			type : 'get',
			// 데이터 전송
			data : {'idx':idx},
			// 성공했을 때 실행할 함수
			success : loadList,
			// 실패했을 때 실행할 함수
			error : function(){
				alert('실패!');
			}
		})
	}
	
	function viewContent(idx){
		if($('#vc'+idx).css('display') == 'none'){
			$('#vc'+idx).css('display','table-row');
		}else{
			$('#vc'+idx).css('display','none');
		}
	}
	
	function boardUpdate(idx){
		
		var contents = $('#vc'+idx+' textarea').val();
		
		$.ajax({
			url : '${cpath}/boardUpdate.do',
			type : 'get',
			data : {'idx': idx,
					'contents' : contents
					},
			success : loadList,
			error : function(){
				alert('실패!');
			}
		})
	}

	function goClose(idx){
		console.log('#vc'+idx+'')
		$('#vc'+idx+'').slideUp();
	}
	
</script>




</body>
</html>