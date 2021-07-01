<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	div#payment{
		width : 1000px;
		margin : auto;
	}
	#tag{
		background-color: tomato;
		color : white;
		padding : 5px;
	}
	h3{
		color : tomato;
	}
	div#option{
		border : 1px solid black;
	}
</style>
</head>
<body>
	<%@ include file="top.jsp" %>
	
	<div id="payment">
		<img alt="" src="../images/room.jpg" style="width : 1000px; height : 400px">
		<p><b>통일신라 호텔</b></p>
		<p>
			<a id="tag">조식포함</a>
			<a id="tag">엑스트라베드</a>
			<a id="tag">호텔 내 수영장</a>
		</p>
		<hr>
		<h3>객실 정보</h3>
		<ul>
			<li>침대타입 더블/트윈</li>
			<li>투숙인원 2명</li>
			<li>전망 시티뷰</li>
			<li>객실면적 26 ~ 30</li>
			<li>체크인/체크아웃</li>
		</ul>
		<hr>
		<h3>Amenity</h3>
		<p>일반 : 37" LCD TV / 손전등 / 슬리퍼 / 전화기 / 티포트 / 금고 / 구둣 주걱 / 구두클리너 / 미니바 </p>
		<p>욕실 : 1회용 칫솔 및 치약 / 1회용 면도기 / 목욕 가운 / 비데 / 헤어드라이어 / 욕실용품 </p>
		<p>기타 : 무료 생수 1일ㅇ 2병 / 보이스 메일 서비스 / 커피 및 티 메이</p>
		<hr>
		<h3>예약 취소 규정</h3>
		<p>
			에약 취소 및 변경은 체크인 하루 전 18:00(한국시간)까지 가능합니다. 
			예약하신 일자에 체크인이 되지 않거나 또는 위의 지정 시간 이후에 예약을 취소했을 경우에는 	예약 사항에 대해 노-쇼(No Show)처리되며, 
			이에 따른 위약금으로 예약 첫날에 해당하는 1박 객실 요금이 청구되오니 유의하시기 바랍니다.
		</p>
		
		<h3>예약 옵션</h3>
		<div id="option">
			<p>객실</p>
			<p style ="color : gray;">투숙 인원 : 성인 2인, 어린이 1인</p>
			<hr>
			<div style ="background-color : #E6E6E6; margin : 5px;">
				<p>객실 요금</p>
				<ul>
					<li><%= sf.format(nowTime) %> 198,000KRW</li>
					<li>세금 및 봉사료 41,580KRW</li>
				</ul>
				<hr>
				<p>포인트 결제</p>
				<div style="background-color : white; border : 1px solid black">
					<p><a>보유 포인트</a><a style="float : right">1,000,000원</a></p>
					<p><a>사용</a><button style="float : right">전액 사용</button><a style="float : right">원</a><input type="text" style="float : right"></p>
				</div>
				<p>일반 결제</p>
				
				
				<input type="radio" name="person" value="개인카드">개인카드
				<input type="radio" name="ceo" value="법인카드">법인카드
				
				<!-- 시발 몰라 알아서 해 -->
				
			</div>
		</div>
	</div>
	
</body>
</html>