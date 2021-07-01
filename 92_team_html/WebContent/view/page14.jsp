<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지_관심목록</title>
<style type="text/css">
	legend{margin: auto;}
	
	fieldset{width: 1000px; margin: auto;}

	table.table_h{
		padding: 0px;
		margin: 5px;
		border: 0;
	}
	
	table{
		 border-spacing: 30px 10px;
		 border: 1px solid;
	}

	.h_btn{
		text-align: center;
		width : 25%;
		margin: 0;
		padding:0;
		color: LightPink;
		background-color: white;
		font-size: 25px;
		border: 0;
		outline: 0;
	}
	
	.h_mapbtn{
		text-align: center;
		width: 70%;
		margin: 0;
		background-color: white;
		font-size: 15px;
		border: 0;
		outline: 0;
	}
	
	.h_list{
		font-size: 12px;
		color: Gray;
	}
</style>
</head>
<body>
	<%-- 현재 페이지에서 다른 페이지 가져오기  --%>
    <%@ include file="top.jsp"%>
    
     <fieldset>
        <legend><h2>관심목록</h2></legend>
    	<div align="center">
		<table class="table_h">
			<%
			for(int i = 0; i < 8; i++) {
				if(i % 4 == 0) { 
					out.println("<tr align='center'>");
				}
				out.println("<td>");
					out.println("<table class='table_list'>");
						out.println("<tr align='center'>");
							out.println("<td>");
								out.println("<img src = '../images/weston_jo.jpg' + width='150' height='150' />");
							out.println("</td>");
						out.println("</tr>");
						
						out.println("<tr align='center'>");
							out.println("<td style='font-size:20px'>");
								out.println("<b>" + "호텔이름" + "</b>");
							out.println("</td>");
						out.println("</tr>");
						
						out.println("<tr align='center'>");
							out.println("<td class='h_list'>");
								out.println("<b>" + "기간" + "<br>" + "체크인/아웃" + "<br>" + "위치" + "</b>");
							out.println("</td>");
						out.println("</tr>");
						
						out.println("<tr>");
							out.println("<td class='my_btn'>");
								//한 줄로 쓰기
								//out.println("<input type='button' value='장바구니 담기' onclick='fnCart(\"" + name[i] + "\", \"" + price[i] + "\")' />");
								//두 줄로 쓰기, 닫는 큰 따옴표와 괄호 옆의 띄어쓰기 필수
								out.println("<hr>");
								out.println("<input class='h_btn' type='button' value='♥' ");
								out.println("onclick='fnCart(\"" + "호텔이름" + "\", \"" + "호텔정보" + "\")' />");
								out.println("<input class='h_mapbtn' type='button' value='지도' ");
							out.println("</td>");
						out.println("</tr>");
					out.println("</table>");
				out.println("</td>");
				if(i % 4 == 3) {
					out.println("</tr>");
				}
			}
			%>	
		</table>
	</div>
</fieldset>
    
</body>
</html>