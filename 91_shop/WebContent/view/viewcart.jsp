<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 보기</title>
<style type="text/css">
table {
	margin: 10px auto;
	width: 800px;
	border-collapse: collapse;
	font-size: 90%;
	border-color: navy;
}

table, th, td {
	border: 1px solid black;
}

tfoot {
	text-align: right;
	font-size: 200%;
}

tfoot tr td {
	padding: 10px;
}
</style>
<script type="text/javascript">
	function edit_cart(f) {
		f.action="${pageContext.request.contextPath}/MyController?cmd=editCart";
		f.submit();
	}
	function delete_cart(f) {
		f.action="${pageContext.request.contextPath}/MyController?cmd=deleteCart";
		f.submit();
	}
</script>
</head>
<body>
<br>
	<%@include file="top.jsp" %>
<br>
	<table>
		<caption><font style="font-size: 150%;">:: 장바구니 내용 ::</font></caption>
		<thead>
			<tr bgcolor="#dedede">
				<th style="width:15%">제품번호</th>
				<th style="width:35%">제품명</th>
				<th style="width:20%">단가</th>
				<th style="width:5%">수량</th>
				<th style="width:15%">금액</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${empty list }">
					<tr>
						<td colspan="6"><h2>장바구니가 비었습니다.</h2></td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach var="i" items="${list }">
					<tr>
						<td>${i.p_num }</td>
						<td>${i.p_name }</td>
						<td>시가: <fmt:formatNumber value="${i.p_price }" pattern="#,###"/>원<br>
							<font style="color:tomato;">(할인가: <fmt:formatNumber value="${i.p_saleprice }" pattern="#,###"/>원)</font>
						</td>
						<td>
							<form method="post">
								<input type="number" name="su" value="${i.quant }" style="width:50px;">
								<input type="hidden" name="m_idx" value="${mvo.idx }">
								<input type="hidden" name="p_idx" value="${i.idx }">
								<input type="button" value="수정" onclick="edit_cart(this.form)">
							</form>
						</td>
						<td><fmt:formatNumber value="${i.totalPrice }" pattern="#,###"/>원</td>
						<td>
							<form method="post">
								<input type="hidden" name="m_idx" value="${mvo.idx }">
								<input type="hidden" name="p_idx" value="${i.idx }">
								<input type="button" value="삭제" onclick="delete_cart(this.form)">
							</form>
						</td>
					</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="6">총 금액: <fmt:formatNumber value="${total }" pattern="#,###"/>원</td>
			</tr>
		</tfoot>
	</table>
</body>
</html>