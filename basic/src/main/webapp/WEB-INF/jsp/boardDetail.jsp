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
	    	<table class="board_view">
			<colgroup>
				<col width="5%" />
				<col width="5%" />
				<col width="5%" />
				<col width="10%" />
				<col width="*" />
				<col width="5%" />
				<col width="5%" />
				<col width="5%" />
			</colgroup>
			<caption>게시글 상세</caption>
			<tbody>
				<tr>
					<th scope="row">글 번호</th>
					<td>${map.B_NUM }</td>
					<th scope="row">조회수</th>
					<td>${map.CNT }</td>
				</tr>
				<tr>
					<th scope="row">사용자IP</th>
					<td>${map.IP_ADDRESS }</td>
					<th scope="row">입력일</th>
					<td>${map.INPUTDATE }</td>
				</tr>
				<tr>
					<th scope="row">비밀번호</th>
					<td>${map.PASSWD }</td>
					<th scope="row">부모게시글번호</th>
					<td>${map.P_NUM }</td>
				</tr>
				<tr>
					<th scope="row">제목</th>
					<td colspan="3">${map.TITLE }</td>
				</tr>
				<tr>
					<td colspan="4">${map.CONTENTS }</td>
				</tr>
			</tbody>
		</table>
		<a href="#this" class="button" id="list">목록으로</a>
		<a href="#this" class="button" id="update">수정하기</a>
		<form id="commonForm" name="commonForm"></form>
    </div>
    <div class="aside">aside</div> <!-- 사이드영역 추가 -->
    <div class="footer">footer</div>
</div>

	<script type="text/javascript">
		$(document).ready(function() {
			$("#list").on("click", function(e) {
				e.preventDefault();
				fn_openBoardList();
			});
			$("#update").on("click", function(e) {
				e.preventDefault();
				fn_boardUpdate();
			});
		});
		function fn_openBoardList() {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/boardList' />");
			comSubmit.submit();
		}
		function fn_boardUpdate() {
			var b_num = "${map.B_NUM}";
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='boardUpdate' />");
			comSubmit.addParam("B_NUM", b_num);
			comSubmit.submit();
		}
	</script>
</body>
</html>

