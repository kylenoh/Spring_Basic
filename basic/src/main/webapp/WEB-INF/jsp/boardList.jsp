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
				<col width="**" />
				<col width="10%" />
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

			</tbody>
		</table>
		<br/>


		<form id="commonForm" name="commonForm"></form>
		
		<input type='hidden' id="PAGE_INDEX" name="PAGE_INDEX"/>
		<div id="PAGE_NAVI" class="pagination"></div>

		<a href="#this" class="button" id="write">글쓰기</a>
		
    
    </div>
    <div class="aside">aside</div> 
    <div class="footer">footer</div>
</div>

	<script type="text/javascript">
		$(document).ready(function() {
			fn_selectBoardList(1);
			
			$("#write").on("click", function(e) {
				e.preventDefault();
				fn_openBoardWrite();
			});

		});
		
		
		function fn_openBoardWrite() {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/boardWrite' />");
			comSubmit.submit();
		}
		function fn_openBoardDetail(obj) {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/boardDetail' />");
			comSubmit.addParam("B_NUM", obj.parent().find("#B_NUM").val());
			comSubmit.submit();
		}
		
		function fn_selectBoardList(pageNo) {
		    var comAjax = new ComAjax();
		    comAjax.setUrl("<c:url value='/selectBoardList' />");
		    comAjax.setCallback("fn_selectBoardListCallback");
		    comAjax.addParam("PAGE_INDEX", pageNo);
		    comAjax.addParam("PAGE_ROW", 20);
		    comAjax.ajax();
		}
		
		function fn_selectBoardListCallback(data) {
		    var total = data.TOTAL;
		    var body = $("table>tbody");
		    body.empty();
		    if (total == 0) {
		        var str = "<tr>" + "<td colspan='5'>조회된 결과가 없습니다.</td>" + "</tr>";
		        body.append(str);
		    } else {
		        var params = {
		            divId: "PAGE_NAVI",
		            pageIndex: "PAGE_INDEX",
		            totalCount: total,
		            eventName: "fn_selectBoardList"
		        };
		        gfn_renderPaging(params);
		        var str = "";
		        $.each(data.list, function(key, value) {
		            str +=  "<tr>" + "<td>" + value.B_NUM + 
				            "</td>" + "<td class='title'>" +
				            "<a href='#this' name='title'>" +
				            value.TITLE + "</a>" +
				            "<input type='hidden' id='B_NUM' name='B_NUM' value=" + value.B_NUM + ">" +
				            "</td>" + "<td>" + value.IP_ADDRESS +
				            "</td>" + "<td>" + value.INPUTDATE +
				            "</td>" + "<td>" + value.CNT +
				            "</td>" + "</tr>";
		        });
		        body.append(str);
		        
		        $("a[name='title']").on("click", function(e) {
		            e.preventDefault();
		            fn_openBoardDetail($(this));
		        });
		    }
		}
	</script>
</body>
</html>
