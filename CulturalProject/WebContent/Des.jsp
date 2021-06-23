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
        		<%@ page import ="cultural.Des" %>
        		
        		<%
        		// 한글 깨짐을 방지하기 위한 인코딩 처리
                //request.setCharacterEncoding("euc-kr");
        		String inco=request.getParameter("code");
        		String info=request.getParameter("form");
        		String inci=request.getParameter("city");
        		
        		Des d =new Des(inco,info,inci);
        		
        		%>

        		<div id="cont">
        		<table border = "3" bordercolor="black" width="1000">
        		<tr >
        			<th width="115">분류</th>
        			<th>설명</th>
        		
        		</tr>
        		<tr>
        			<th>사진</th>
        			<th><img src="<%=d.getImg() %>"></th>
        		</tr>
        		<tr>
        			<th>이름</th>
        			<th><%=d.getName() %></th>
        		</tr>
        		<tr>
        			<th>종목코드</th>
        			<th><%=info %></th>
        		</tr>
        		<tr>
        			<th>시도코드</th>
        			<th><%=inci %></th>
        		</tr>
        		<tr>
        			<th>문화재연계번호</th>
        			<th><%=d.getIn() %></th>
        		</tr>
        		<tr>
        			<th>경도</th>
        			<th><%=d.getLo() %></th>
        		</tr>
        		<tr>
        			<th>위도</th>
        			<th><%=d.getLat() %></th>
        		</tr>
        		<tr>
        			<th>문화재종목</th>
        			<th><%=d.getDiv() %></th>
        		</tr>
        		<tr>
        			<th>문화재분류</th>
        			<th><%=d.getCat() %></th>
        		</tr>
        		<tr>
        			<th>문화재분류2</th>
        			<th><%=d.getCat2() %></th>
        		</tr>
        		<tr>
        			<th>문화재분류3</th>
        			<th><%=d.getCat3() %></th>
        		</tr>
        		<tr>
        			<th>문화재분류4</th>
        			<th><%=d.getCat4() %></th>
        		</tr>
        		<tr>
        			<th>수량</th>
        			<th><%=d.getNum() %></th>
        		</tr>
        		<tr>
        			<th>지정(등록일)</th>
        			<th><%=d.getDate() %></th>
        		</tr>
        		<tr>
        			<th>소재지 상세</th>
        			<th><%=d.getLoc() %></th>
        		</tr>
        		<tr>
        			<th>시대</th>
        			<th><%=d.getCen() %></th>
        		</tr>
        		<tr>
        			<th>소유자</th>
        			<th><%=d.getHost() %></th>
        		</tr>
        		<tr>
        			<th>관리자</th>
        			<th><%=d.getAdm() %></th>
        		</tr>
        		<tr>
        			<th>내용</th>
        			<th><%=d.getText() %></th>
        		</tr>
        		
        		</table>
        		
        		
        	
        	
        	</div>
        	</div>
        	
        </div>
</body>
</html>