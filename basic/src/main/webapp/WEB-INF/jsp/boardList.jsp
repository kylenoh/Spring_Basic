<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>boardRegist</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/common.css'/>" />
<!-- jQuery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="<c:url value='/resources/js/common.js'/>" type="text/javascript"></script>
</head>
<body>

<div class="wrap">
    <div class="header">
    	<h1>메인화면 바로가기 만들기</h1>
    </div>
    <div class="container">
      <ul class="menu">
        <li class="menu_item"><a href="/basic/boardList" class="menu_link">게시판</a></li>
        <li class="menu_item active"><a href="#" class="menu_link">테스트1</a></li>
        <li class="menu_item"><a href="#" class="menu_link">테스트2</a></li>
        <li class="menu_item"><a href="#" class="menu_link">테스트3</a></li>
        <li class="menu_item"><a href="#" class="menu_link">테스트4</a></li>
      </ul>
	</div>
    <div class="content">
	    <table class="board_list">
			<colgroup>
				<col width="10%" />
				<col width="*%" />
				<col width="10" />
				<col width="20%" />
				<col width="10%" />
			</colgroup>
			<thead>
				<tr>
					<th scope="col">게시판번호</th>
					<th scope="col">제목</th>
					<th scope="col">사용자IP</th>
					<th scope="col">입력일</th>
					<th scope="col">조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${fn:length(list) > 0}">
						<c:forEach items="${list }" var="row">
							<tr>
								<td>${row.B_NUM }</td>

								<td class="title">
									<a href="#this" name="title">${row.TITLE }</a>
									<input type="hidden" id="IDX" value="${row.B_NUM }">
								</td>
								<td>${row.IP_ADDRESS }</td>
								<td>${row.INPUTDATE }</td>
								<td>${row.CNT }</td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td colspan="5">조회된 결과가 없습니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
		<br/>
		<div class="pagination">
		  <a href="#">&laquo;</a>
		  <a href="#">1</a>
		  <a href="#">2</a>
		  <a href="#">3</a>
		  <a href="#">4</a>
		  <a href="#">5</a>
		  <a href="#">6</a>
		  <a href="#">&raquo;</a>
		</div>
		<a href="#this" class="button" id="write">글쓰기</a>
		<form id="commonForm" name="commonForm"></form>
		
    
    </div>
    <div class="aside">aside</div> <!-- 사이드영역 추가 -->
    <div class="footer">footer</div>
</div>

	<h2>게시판 목록</h2>
	
	<script type="text/javascript">
		$(document).ready(function() {
			$("#write").on("click", function(e) {
				e.preventDefault();
				fn_openBoardWrite();
			});
			$("a[name='title']").on("click", function(e) {
				e.preventDefault();
				fn_openBoardDetail($(this));
			});
		});
		function fn_openBoardWrite() {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/boardWrite' />");
			comSubmit.submit();
		}
		function fn_openBoardDetail(obj) {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='boardDetail' />");
			comSubmit.addParam("B_NUM", obj.parent().find("#IDX").val());
			comSubmit.submit();
		}
	</script>
</body>
</html>
