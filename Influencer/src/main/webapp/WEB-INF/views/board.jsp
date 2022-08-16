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

</style>


</head>
<body>


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

			$
					.each(
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
	<script src="resources/js/main1.js"></script>



</body>
</html>

