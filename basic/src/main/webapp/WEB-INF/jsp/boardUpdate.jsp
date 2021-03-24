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
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/common.css'/>" />
<!-- jQuery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="<c:url value='/resources/js/common.js'/>"
	type="text/javascript"></script>
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
				<td>${map.B_NUM }<input type="hidden" id="B_NUM" name="B_NUM"
					value="${map.B_NUM }">

				</td>
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
				<td colspan="3"><input type="text" id="TITLE" name="TITLE"
					class="wdp_90" value="${map.TITLE }" /></td>
			</tr>
			<tr>
				<td colspan="4" class="view_text"><textarea rows="20"
						cols="100" title="내용" id="CONTENTS" name="CONTENTS">${map.CONTENTS }</textarea>
				</td>
			</tr>
		</tbody>
	</table>
	<a href="#this" class="btn" id="list">목록으로</a>
	<a href="#this" class="btn" id="update">저장하기</a>
	<a href="#this" class="btn" id="delete">삭제하기</a>

	<form id="commonForm" name="commonForm"></form>

	<script type="text/javascript">
		$(document).ready(function() {
			$("#list").on("click", function(e) {
				e.preventDefault();
				fn_openBoardList();
			});
			$("#update").on("click", function(e) {
				e.preventDefault();
				fn_updateBoard();
			});

			$("#delete").on("click", function(e) {
				e.preventDefault();
				fn_deleteBoard();
			});

		});
		function fn_openBoardList() {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/boardList' />");
			comSubmit.submit();
		}
		function fn_updateBoard() {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/updateBoard' />");
			comSubmit.addParam("B_NUM", $("#B_NUM").val());
			comSubmit.addParam("TITLE", $("#TITLE").val());
			comSubmit.addParam("CONTENTS", $("#CONTENTS").val());
			comSubmit.submit();
		}
		function fn_deleteBoard() {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/deleteBoard' />");
			comSubmit.addParam("B_NUM", $("#B_NUM").val());
			comSubmit.submit();
		}
	</script>
</body>
</html>

