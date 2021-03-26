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
	    	<form id="frm">
			<table class="board_view">
				<colgroup>
					<col width="15%">
					<col width="*" />
				</colgroup>
				<caption>게시글 작성</caption>
				<tbody>
					<tr>
						<th scope="row">제목</th>
						<td><input type="text" id="TITLE" name="TITLE" class="wdp_90"></input></td>
					</tr>
					<tr>
						<td colspan="2" class="view_text"><textarea rows="20"
								cols="100" title="내용" id="CONTENTS" name="CONTENTS"></textarea></td>
					</tr>
				</tbody>
			</table>
			<a href="#this" class="button" id="write">작성하기</a> 
			<a href="#this"	class="button" id="list">목록으로</a>
		</form>
		
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
			$("#write").on("click", function(e) {
				e.preventDefault();
				fn_boardRegist();
			});
		});
		function fn_openBoardList() {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/boardList' />");
			comSubmit.submit();
		}
		function fn_boardRegist() {
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='/boardRegist' />");
			comSubmit.submit();
		}
	</script>
</body>
</html>

