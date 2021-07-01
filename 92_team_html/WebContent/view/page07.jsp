<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호텔 상세보기</title>
<style type="text/css">
   #ho_img{ 
   	float: left; 
   	padding-bottom: 0%;
   	padding-top: 0%;
   	padding-left: 0%;
   	padding-right: 5%
   }
   
   #hotel{
      text-align: center;
      font-size: 30px;
   }

   input { padding: 20px; }
   
   #button{
      text-align: right;
      padding: 0px;
   }
   
   #infor{ 
   	  text-align: center;
   	  padding-top:20px; 
   	  font-size: 20px;
   }
   
   .room {
   		float: left;
   		width: 40%;
		border: 1px solid DimGrey;
		text-align: left;
		margin-right: 5%
	}
	.room_i img{
		width: 100%;
		vertical-align: left;
		opacity: 0.8;
	}
	.room_b{
		width: 100%;	
		text-align: center;
		background-color: #F8F8FF00;
		font-size: 20px;
		border: 0;
		outline: 0;
	}
	
	.bg {
		background-color: #dedede;
	}
	
	.review .view{
		margin: 10px auto;
		width: 800px;
		border-collapse: collapse;
		font-size: 13pt;
		border-color: navy;
		border: 1px solid black;
		padding: 8px;
	}
</style>
</head>
<body>
   <%-- 현재 페이지에서 다른 페이지 가져오기  --%>
   <%@ include file="top.jsp"%>
   <div id="mydiv">
      <form method="post">   
         <h2 id="hotel">통일신라 호텔</h2>
         <fieldset>
         <p id="ho_img"><img src="../images/weston_jo.jpg" alt="image" width="400"></p>
         <table>
               <tr>
                  <p id="infor">체크인 : 14:00 ~ 체크아웃 : 11:00</p>
                  <p id="infor">대표번호 : +82-000-0000 </p>
                  <p id="infor">경상북도 강하군 약하면 대머리 1234</p>
               </tr>
               <div id=button>
                  <input type="button" value="♥" onclick="" 
                  style="font-size:20px; padding: 7px;">
                  <input type="button" value="예약하기" onclick="" 
                  style="padding: 10px;">
               </div>
         </table>
         </fieldset>
         <br>
         
         <table class="map">
         <!-- * 카카오맵 - 지도퍼가기 -->
			<!-- 1. 지도 노드 -->
			<div id="daumRoughmapContainer1624367339604" 
				class="root_daum_roughmap root_daum_roughmap_landing" style="width: 100%"></div>
			
			<!--2. 설치 스크립트
				* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.-->
			<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
			
			<!-- 3. 실행 스크립트 -->
			<script charset="UTF-8">
				new daum.roughmap.Lander({
					"timestamp" : "1624367339604",
					"key" : "26c5e",
				}).render();
			</script>
     	 </table>
     	 <br>
     	 
     	 <table>
		  <tr style="vertical-align:top;">
		    <td style="width:190px; border-right:1px solid darkgray; padding-left: 10px; text-align:justify">
		    객실 : 1,015
     	 	<br>레스토랑&바 : 10
     	 	<br>연회장 : 13</td>
		    <td  style="width:30%; border-right:1px solid darkgray; text-align:justify; padding-left: 10px;">
		    대표번호 : +82-000-0000 
     	 	<br>객실 예약 : +82-000-0000 ~ 0005
     	 	<br>팩스: +82-00-0000</td>
     	 	<td style="padding-left: 10px;">
		    대표 부대시설 : 미팅룸, 레스토랑, 스파, 피트니스, 클럽라운지, 골프, 
     	 	온천, 수영장, 비즈니스 센터</td>
		  </tr>
		</table>
		<br>

		<fieldset style="border: 1px solid #00000000;">
			<div class="room">
				<div class="room_i"><img src="../images/room.jpg" alt=""></div>
				<button class="room_b">객실 보러가기</button>
			</div>
			
	        <table class="review">
		        <div>
					<input type="button" value="+더보기" onclick="" 
					 style="font-size:12px; padding: 1px; float: right; border: 0; outline: 0; margin-top: 1%">
		            <p><h3 style="margin: 0;">리뷰</h3></p>
		        </div>
		     <thead>
				<tr bgcolor="#dedede">
					<th width="5%">별점</th>
					<th width="40%">내용</th>
					<th width="5%">작성자</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th width="15%">★★★☆☆</th>
					<th width="10%">깨끗한데 소음이 좀 있어요</th>
					<th width="10%">ababqq</th>
				</tr>
			</tbody> 
			</table>     
         </fieldset>
      </form>
   </div>
</body>
</html>