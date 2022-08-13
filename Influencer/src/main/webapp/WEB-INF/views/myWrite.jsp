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
<title>My Write</title>
</head>
<body>

			<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-4">
					<h2 class="heading-section">내가 쓴글</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="table-wrap">
						<table class="table">
							<thead class="thead-primary">
								<tr class="heading">
									<th>번호</th>
									<th>제목</th>
									<th>글 내용</th>
									<th>머리글</th>
									<th>작성자</th>
									<th>작성시간</th>
								</tr>
							</thead>
							<tbody id='boardBody'>
							
		<script type="text/javascript">
						
						$(document).ready(function(){
							loadList(1);
						})
						
						
						function loadList(pageNum){
							$.ajax({
								url : '${cpath}/myWrite.do',
								type : 'get',
								data : {'pageNum' : pageNum},
								dataType : 'json',
								success : listView,
								error : function(){
									alert('실패');
								}
							})
						}
						
						function listView(data){
							var blist = "";
							
							console.log(data)
							
							$('#boardBody').html("")
							
							$.each(data.list, function(index, board){
								blist += "<tr class='innerContent'>"
								blist += "<td class='table-light' style='padding-left:40px;'>" + board.board_no + "</td>"
								blist += "<td class='table-light' style='padding-left:25px;'>" + board.board_title + "</td>"
								blist += "<td class='table-light' style='padding-left:25px;'><a href='${cpath}/boardView.do?board_no="+board.board_no+"'>" + board.board_content + "</a></td>"
								blist += "<td class='table-light' style='padding-left:30px;'>" + board.board_head + "</td>"
								blist += "<td class='table-light' style='padding-left:25px;'>" + board.nick + "</td>"
								blist += "<td class='table-light' style='padding-left:25px;'>" + board.board_date + "</td>"
								blist += "</tr>"
							})
							
							
							blist += "<tr><td colspan=6 align='center'>"
								if(data.pageMake.prev){
									blist += "<a href='javascript:loadList("+(data.pageMake.startPage-1)+")'>"
									blist += "이전 "
									blist += "</a>"
								}
							
								for(var i=data.pageMake.startPage; i<=data.pageMake.endPage; i++){
									blist += "<a href='javascript:loadList("+(i)+")'>"
									blist += i+" "
									blist += "</a>"
								}
								
								if(data.pageMake.next){
									blist += "<a href='javascript:loadList("+(data.pageMake.endPage+1)+")'>"
									blist += " 다음"
									blist += "</a>"
								}
							blist += "</td></tr>"
							
							$('#boardBody').append(blist);
							
						}
		</script>
						

							</tbody>

						</table>
						<div class="col-lg-6 col-sm-12" style="text-align: center;">
							<button class="btn btn-success float-right">
								<a href="${cpath}/goboardinsert.do">게시판 글쓰기</a>
							</button>
						</div>
						
						<a href="${cpath}/">메인으로</a>
					</div>

				</div>
			</div>
		</div>
	</section>
	
</body>
</html>