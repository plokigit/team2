<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>HOCANCE</title>
<meta charset="UTF-8">
<style type="text/css">
.wrap {
width:1000px;
text-align: center;
margin:0 50px;
}

.clear{
	content: "";
  	clear: both;
  	display: table;
}
#log {
	text-align: right;
	font-size: 12px;
}
section{
	width: 800px;
}
section .hotel_detail {
	height: 1000px;
	width: 1000px;
	border: 2px solid black;
	font-size: 120%;
}
section .hotel_image {
	height: 200px;
	width:200px;
	overflow: hidden;
	float: left;
	margin-left: 100px;
}
section .hotel_info {
	height: 150px;
	width: 500px;
	text-align: left;
	margin-top: -5px;
	margin-left: 500px;
	
}
section .hotel_detail2 {
	float:left;
	height: 150px;
	width: 300px;
	text-align: left;
	margin-top: -5px;
	margin-left: 150px;
	
}
section .hotel_detail3 {
	display:inline-block;
	height: 150px;
	width: 500px;
	text-align: left;
	margin-top: -5px;
	margin-left: 50px;
	
}
section .price {
	float: right;
	margin-top: 50px;
	margin-right: 100px;
	font-size: 120%;
}
section.down_btn{
	float:left;
}

</style>
</head>
<body>
<div class="wrap">
	<%@include file="top.jsp" %>

		<nav>
			<div>
				<font style="font-size: 200%; font-weight: lighter; text-align: center;">호텔 예약 상제 정보</font>
			</div>
		</nav>		
		<br>
		<section>
			<div class="hotel_detail">
				<div class="hotel_image">
					<img src="../images/room.jpg" style="min-width: 100%; min-height: 40%;">
				</div>
				<div class="hotel_info">
					<p style="font-size: x-large; font-weight: 1000;">통일 신라 호텔</p>
					체크인 14:00 ~ 체크아웃 11:00 <br>
					대표번호 :+82-0000-0000 <br>
					경상북도 강하군 약하면 대머리 1234 <br>
				</div>
				<div class="clear"></div>
			<hr>
				<div class="hotel_image2">
					<img src="../images/room.jpg" style="min-width: 70%; min-height:100%;">
				</div>

				<div class="hotel_detail2">
					<p style="font-size: x-large; font-weight: 1000;">통일 신라 호텔</p>
					체크인 14:00 ~ 체크아웃 11:00 <br>
					대표번호 :+82-0000-0000 <br>
					경상북도 강하군 약하면 대머리 1234 <br>
					
				</div>
				<div class="hotel_detail3"><br><br><br>
					대표번호 :+82-0000-0000 <br>
					경상북도 강하군 약하면 대머리 1234 <br>
				</div>
				<div class="price">결제 금액 : 387,000원</div>
				<br>
				
				<div class="clear"></div>
				<br>
				
				<div class="down_btn">
				<button>예약 취소 </button>
				&nbsp;&nbsp;&nbsp;
				<button>지도 </button>
				</div>
			</div>
		</section>
<%@include file="footer.jsp" %>
</div>
</body>
</html>