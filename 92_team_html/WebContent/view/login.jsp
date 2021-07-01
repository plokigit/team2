<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table{
		margin:auto;
		
	}
	tr, td, th{
		padding : 15px;
		align-content: center;
	}
	div{
		text-align: center;
	}
	td.memory{
		font-size: 6px;
		height: 8px;
		padding:0px;
	}
	.idpw{
		padding-bottom: 0px;
	}
	.find{
		font-size: 10px;
		padding-top: 0px;
	}

</style>
</head>
<body>
	<%@ include file="top.jsp" %>
	
	<div id="mydiv">
		<form method="post">
			<h1 style="text-align: center;">로그인</h1>
			
			<div>
				<table>
					<tbody>
						<tr>
							<th class="idpw">아이디</th>
							<td class="idpw"><input type="text" name="id"> </td>
						</tr>
						<tr>
							<th class="idpw">패스워드</th>
							<td class="idpw"><input type="password" name="pw" > </td>
						</tr>
						<tr>
							<td colspan="2" class="memory"><input type="checkbox" value="1"/>아이디 기억하기</td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<td colspan="2">
								<input type="button" value="로그인" onclick="login_go(this.form)">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="button" value="회원가입" onclick="join_go(this.form)">
							</td>
						</tr>
						<tr>
							<td colspan="2" class="find">
								<a href="" >아이디찾기</a>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="">비밀번호찾기</a>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								or
							</td>
						</tr>
						<tr>
							<td colspan="2">
							<input type="button" value="kakao로그인">
						</tr>
					</tfoot>
				</table>
			</div>
		</form>
	</div>
	
	
	
	
</body>
</html>