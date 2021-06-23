<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Cultural-Assets</title>
<link href="Style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="Display.js" > </script>
</head>
<body>
	<h1>한국의 것 알아보기</h1>
    	<div id = "grid">
        	<ol>
            	<input id ="dl" type="button" value="Dark" onclick="nightDayHandler(this)">
            	<li><a href="Main1.jsp">이름으로 찾아보기</a></li>
            	<li><a href="Region.jsp">지역으로 찾아보기</a></li>
            	<li><a href="Event.jsp">진행중인 행사보기</a></li>
            	<li><a href="NoForm.jsp">무형 문화재 찾아보기</a></li>
        	</ol>
        <div id="main">
        
        <form action="SearchRegion.jsp">
        	<h6>검색하고 싶은 지역 입력해주세요. ex)서울, 부산, 대구, 인천, 강원도, 충청북도...</h6>
            <input name="region" type="text" >
            <input id="search" type="submit" value="Search">
        </form>
        
         </div>
         
         </div>
	
</body>
</html>