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
        <%@ page import ="cultural.Cultural" %>
    	<%@ page import ="cultural.Des" %>	
    	<%@ page import="java.util.*"%>
        <div id="main">
        	<%
    		// 한글 깨짐을 방지하기 위한 인코딩 처리
            //request.setCharacterEncoding("euc-kr"); 
    		
    		Cultural c= new Cultural();
    		ArrayList <String> name=c.getName();
    		ArrayList<String> num = c.getNum();
    		
			ArrayList<String> code=c.getCode();
			ArrayList<String> form=c.getForm();
			ArrayList<String> city=c.getCity();
			
			
    		%>
        <form action="Name.jsp">
            <input type="text" name="nname">
           
            <input id="search" type="submit" value="Search">
           
		</form>    		
    		<div id = "cont">
    			
    			<table border = "3" bordercolor="black" width="1000" >
    			<tr align = "center">
    				<th border="5">문화재 번호</th>
    				<th border ="5" >문화재 이름</th>
    				<th>설명</th>
    				
    				
    			</tr>
    			
    				<%
    				for(int i=0;i<100;i++){

    						

    				%>
    				<tr align = "center">
    					<td><%=num.get(i) %></td>
    					<td><%=name.get(i) %></td>
    					<td>
    					
						
    					<input id="direct" type="button" value="바로가기↗" onclick="location.href='Des.jsp?code='+'<%=code.get(i)%>'+'&form='+'<%=form.get(i)%>'+'&city='+'<%=city.get(i)%>'">
    					</td>
    				</tr>
    				
    				<%
    				
    				} 
    				%>
    				
    			
    		</table>
    		
    		</div>
        </div>
        
        
    
    </div>
    
    
</body>
</html>