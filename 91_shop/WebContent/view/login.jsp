<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style type="text/css">
fieldset {
	width: 300px;
	margin: auto;
}

input {
	padding: 5px;
}
</style>
<script type="text/javascript">
	function join_go() {
		alert("can't join");
		/* location.href="${pageContext.request.contextPath }/MyController?cmd=join"; */
	}
</script>
</head>
<body>
<br>
	<%@include file="top.jsp" %>
<br>
	<div>
	${fail }
	<br><br>
			<fieldset>
				<legend>로그인</legend>
					<form method="post" action="${pageContext.request.contextPath }/MyController?cmd=login_ok">
						<p>
							아이디 : <input type="text" id="id" name="id" placeholder="id를 입력하세요" required>
						</p>
						<p>
							패스워드 : <input type="password" name="pw" placeholder="pw를 입력하세요" required>
						</p>
						<input type="submit" value="로그인">&nbsp;&nbsp;&nbsp;
						<button onclick="join_go()">회원가입</button>
					</form>
		</fieldset>
	</div>
</body>
</html>