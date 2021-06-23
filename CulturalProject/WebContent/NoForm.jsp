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
        	
            
            <div id="cont">
            <%@ page import ="cultural.NoForm" %>	
    		<%@ page import="java.util.*"%>
            <% 
            NoForm nf=new NoForm();
            ArrayList <String> name=nf.getName();
            ArrayList<String> num=nf.getNum();
            ArrayList<String> url=nf.getUrl();
            
            
            %>
            <table border = "3" bordercolor="black" width="1000">
            <tr align="center">
            	<th>문화재 번호</th>
            	<th>문화재 이름</th>
            	<th>자세히 보기</th>
            </tr>
            <%for(int i=0;i<name.size();i++){ %>
            	<tr align="center">
            	<td><%=num.get(i) %></td>
            	<td><%=name.get(i) %></td>
            	<td>
            	
            		<a href="<%=url.get(i)%>">Click!</a>
            	
            	
            	</td>
            	</tr>
            <%} %>
            
            
            </table>
            
            
            
            
            
            
            </div>
            
            
         </div>
         
         </div>
	
</html>