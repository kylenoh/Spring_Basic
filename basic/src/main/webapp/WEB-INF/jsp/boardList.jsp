<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

</head>
<body>
	<h2>게시판 목록</h2>
	<table style="border: 1px solid #ccc">
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
		<thead>
			<tr>
				<th scope="col">게시판번호</th>
				<th scope="col">부모게시글번호</th>
				<th scope="col">사용자IP</th>
				<th scope="col">제목</th>
				<th scope="col">내용</th>
				<th scope="col">비밀번호</th>
				<th scope="col">조회수</th>
				<th scope="col">입력일</th>
			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${fn:length(list) > 0}">
					<c:forEach items="${list }" var="row">
						<tr>
							<td>${row.B_NUM }</td>
							<td>${row.P_NUM }</td>
							<td>${row.IP_ADDRESS }</td>
							<td>${row.TITLE }</td>
							<td>${row.CONTETNS }</td>
							<td>${row.PASSWD }</td>
							<td>${row.CNT }</td>
							<td>${row.INPUTDATE }</td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="4">조회된 결과가 없습니다.</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</tbody>
	</table>

</body>
</html>
