<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<style type="text/css">
	legend{margin: auto;}
	
	fieldset{width: 50%; margin: auto; margin-top: 30px;}
	
	table {
		margin: 10px auto;
		width: 100%;
		border-collapse: collapse;
		font-size: 13pt;
		border-color: navy;
	}

	table, th, td {
		border: 1px solid black;
		padding: 5px;
		text-align: center;
	}
	
	td{
		font-size: 15px;
	}
	
	.bg {
		background-color: #dedede;
		width: 40%;
	}
	
	.my_btn{
		background-color: #DCDCDC;
		padding: 10px;
		margin-left: 5px;
		margin-right: 5px;
		font-size: 15px;
		border: 0;
		outline: 0;
	}
	
	.out{
		background-color: #00000000;
		padding: 0;
		margin-top: 20px;
		margin-bottom: 0;
		font-size: 5px;
		border: 0;
		outline: 0;
	}
</style>
 <script type="text/javascript">
	function update_go(f) {
		f.action="page14.jsp";
		f.submit();
	}
</script>
</head>
<body>
	<%-- 현재 페이지에서 다른 페이지 가져오기  --%>
    <%@ include file="top.jsp"%>
    
    <fieldset>
         <legend><h2>마이페이지</h2></legend>
         <table>
			<tr>
				<th class="bg">아이디</th>
				<td>아이디</td>
			</tr>
			<tr>
				<th class="bg">이름</th>
				<td>이름</td>
			</tr>
			<tr>
				<th class="bg">전화번호</th>
				<td>000-0000</td>
			</tr>
			<tr>
				<th class="bg">이메일</th>
				<td>111@nn.co.kr</td>
			</tr>
			<tr>
				<th class="bg">주소</th>
				<td>서울특별시</td>
			</tr>
			<tr>
				<th class="bg">가입일</th>
				<td>2054-13-01</td>
			</tr>
		</table>
		<br>
		<div style="text-align: center;">
			<input type="button" value="내 정보 수정" onclick="" class="my_btn" /> 
			<input type="button" value="결제 내역" onclick="" class="my_btn" />
			<input type="button" value="관심목록" onclick="location.href='page14.jsp'" class="my_btn" />
			<input type="button" value="비밀번호 변경" onclick="" class="my_btn" />
		<br>
			<input class="out" type="button" value="회원탈퇴" onclick="" />
		</div>
    </fieldset>
</body>
</html>