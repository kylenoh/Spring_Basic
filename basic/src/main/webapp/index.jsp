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
    <div class="header">header
    	<h1>Controller를 거치지 않고 web.xml WelcomePage적용받습니다.</h1>
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
    <div class="content">content</div>
    <div class="aside">aside</div> <!-- 사이드영역 추가 -->
    <div class="footer">footer</div>
</div>


	
</body>
</html>