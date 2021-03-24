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
	<a href="#this" class="btn" id="list">목록으로</a>
	<a href="#this" class="btn" id="update">수정하기</a>
	<form id="commonForm" name="commonForm"></form>

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

