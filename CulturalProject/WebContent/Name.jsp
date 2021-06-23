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
        		<%@ page import ="cultural.Cultural" %>
        		<%@ page import ="cultural.Des" %>
        		<%@ page import="java.util.*"%>
        		<%
        		// 한글 깨짐을 방지하기 위한 인코딩 처리
                //request.setCharacterEncoding("euc-kr");
        		
        		
        		String name=request.getParameter("nname");
        		Cultural c=new Cultural();
        		
        		
        		
        		
        		c.setAll(name);
        		
        		String num=c.getInnu();
        		if(num==null){
        			%>
        			<h4>잘 못 입력하셨습니다. 다시 한 번 확인 해주세요.</h4>
        		<% 
        		}
        		else{
        			String code=c.getInco();
            		String form=c.getInfo();
            		String city=c.getInct();
            		c=null;	
            		%>
            		<div id="cont">
        		<table border = "3" bordercolor="black" width="1000">
        		<tr align = "center">
    				<th border="5">문화재 번호</th>
    				<th border ="5" >문화재 이름</th>
    				<th>설명</th>
    				
    				
    			</tr>
    			<tr align="center">
    				<td><%=num %></td>
    				<td><%=name %></td>
    				<td><input id="direct" type="button" value="바로가기↗" onclick="location.href='Des.jsp?code='+'<%=code%>'+'&form='+'<%=form%>'+'&city='+'<%=city%>'"></td>
    			</tr>
    			
    			</table>
        		
        		
        	
        	
        	</div>	
            		
            		<% 
        		}
        		
        		%>
        		
        		
        		
        	</div>
        	
        </div>
</body>
</html>