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
        <%@ page import="java.util.*"%>
        <%@ page import ="cultural.Event" %>
        <%
        Calendar cal=Calendar.getInstance();
        
        Event e =new Event();
        
        
        ArrayList<String> name=e.getName();
        ArrayList<String> img=e.getImg();
        ArrayList<String> subdate=e.getSubdate();
        ArrayList<String> sido=e.getSido();
        ArrayList<String> gugun=e.getGugun();
        ArrayList<String> loca=e.getLoca();
        ArrayList<String> desc=e.getDesc();
        ArrayList<String> txt=e.getDes();
        
        
        String yyear=Integer.toString(cal.get(Calendar.YEAR));
        String mmonth=Integer.toString(cal.get(Calendar.MONTH)+1);
        
        %>
        <h4>현재 <%=yyear%>년 <%=mmonth %>월 행사 목록입니다.</h4>
         <div id="cont">
         	
         	<%for(int i=0;i<name.size();i++){
         	%>
         	
         	<h5><%=i+1%>번째 행사 이름: <%=name.get(i) %></h5>
         	
         	<h6>행사 기간:<%=subdate.get(i) %></h6>
         	<h6>행사 장소:<%=sido.get(i) %> <%=gugun.get(i) %> <%=loca.get(i) %></h6>
         	<h6>행사 대상:<%=desc.get(i) %></h6>
         	<h6>행사 설명:<%=txt.get(i) %></h6>
         	<br></br>
         
         	<% 	
         	} %>
         	
         	
         
         </div>
         
           
           
         </div>
         
         </div>
	
</html>