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
        		<%@ page import ="cultural.Region" %>
        		<%@ page import="java.util.*"%>
        		
        		<% 
        		
        		
    			String searchcode=request.getParameter("region");
    			String cc=null;
    			if(searchcode.equals("서울")){
    				cc="11";
    			}else if(searchcode.equals("부산")){
    				cc="21";
    			}else if(searchcode.equals("대구")){
    				cc="22";
    			}else if(searchcode.equals("인천")){
    				cc="23";
    			}else if(searchcode.equals("광주")){
    				cc="24";
    			}else if(searchcode.equals("대전")){
    				cc="25";
    			}else if(searchcode.equals("울산")){
    				cc="26";
    			}else if(searchcode.equals("세종")){
    				cc="29";
    			}else if(searchcode.equals("경기도")){
    				cc="31";
    			}else if(searchcode.equals("강원도")){
    				cc="32";
    			}else if(searchcode.equals("충청북도")){
    				cc="33";
    			}else if(searchcode.equals("충청남도")){
    				cc="34";
    			}else if(searchcode.equals("전라북도")){
    				cc="35";
    			}else if(searchcode.equals("전라남도")){
    				cc="36";
    			}else if(searchcode.equals("경상북도")){
    				cc="37";
    			}else if(searchcode.equals("경상남도")){
    				cc="38";
    			}else if(searchcode.equals("제주도")){
    				cc="39";
    			}
    			
    			Region r=new Region(cc);
    			
    			ArrayList<String> name = r.getName();
        		ArrayList<String> num=r.getNum();
        		ArrayList<String> code=r.getCode();
        		ArrayList<String> form=r.getForm();
        		
        		
        		%>
        		<table border = "3" bordercolor="black" width="1000">
        		<tr align="center">
        			<th >문화재 지역</th>
        			<th >문화재 번호</th>
    				<th >문화재 이름</th>
    				<th>설명</th>
        		</tr>
        		
        		
        		<%
        		for(int i=0;i<name.size();i++){
        		%>
        		<tr align="center">
        			<td><%=searchcode %></td>
        			<td><%=num.get(i) %></td>
        			<td><%=name.get(i) %></td>
        			<td><input id="direct" type="button" value="바로가기↗" onclick="location.href='Des.jsp?code='+'<%=code.get(i)%>'+'&form='+'<%=form.get(i)%>'+'&city='+'<%=cc%>'"></td>
        			
        		<% 
        		}
        		%>
        		</tr>
        		
        		
        		</table>
        	</div>
        	
        </div>
</body>
</html>