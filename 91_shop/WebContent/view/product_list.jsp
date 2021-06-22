<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	margin: 10px auto;
	width: 700px;
	border-collapse: collapse;
	font-size: 10pt;
	border-color: navy;
}

table, th, td {
	border: 1px solid black;
	padding: 5px;
}
</style>
</head>
<body>
<br>
	<%@include file="top.jsp" %>
<br>
	<table>
	<thead>
		<tr bgcolor="#dedede">
			<th width="10%">제품번호</th>
			<th width="10%">이미지</th>
			<th width="35%">제품명</th>
			<th width="20%">제품가격</th>
			<th width="25%">비고</th>
		</tr>
	</thead>
		<tbody>
			<c:choose>
				<c:when test="${empty list }">
					<tr align="center">
						<td colspan="5"><h3>제품 준비 중입니다.</h3></td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach var="i" items="${list }">
						<tr align="center">
							<td>${i.p_num }</td>
							<td><img src="${pageContext.request.contextPath}/images/${i.p_image_s }" style="width:100px;"></td>
							<td><a href="${pageContext.request.contextPath}/MyController?cmd=onelist&idx=${i.idx}">${i.p_name }</a></td>
							<td>할인가 : <fmt:formatNumber value="${i.p_saleprice }" pattern="#,###"/>원<br> 
							<font color="red">(${i.getPercent() })</font></td>
							<td>시중 가격 : <fmt:formatNumber value="${i.p_saleprice }" pattern="#,###"/>원</td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</tbody>
	</table>
</body>
</html>