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
	<h1>�ѱ��� �� �˾ƺ���</h1>
    	<div id = "grid">
        	<ol>
            	<input id ="dl" type="button" value="Dark" onclick="nightDayHandler(this)">
            	<li><a href="Main1.jsp">�̸����� ã�ƺ���</a></li>
            	<li><a href="Region.jsp">�������� ã�ƺ���</a></li>
            	<li><a href="Event.jsp">�������� ��纸��</a></li>
            	<li><a href="NoForm.jsp">���� ��ȭ�� ã�ƺ���</a></li>
        	</ol>
        	
        	<div id="main">
        		<%@ page import ="cultural.Des" %>
        		
        		<%
        		// �ѱ� ������ �����ϱ� ���� ���ڵ� ó��
                //request.setCharacterEncoding("euc-kr");
        		String inco=request.getParameter("code");
        		String info=request.getParameter("form");
        		String inci=request.getParameter("city");
        		
        		Des d =new Des(inco,info,inci);
        		
        		%>

        		<div id="cont">
        		<table border = "3" bordercolor="black" width="1000">
        		<tr >
        			<th width="115">�з�</th>
        			<th>����</th>
        		
        		</tr>
        		<tr>
        			<th>����</th>
        			<th><img src="<%=d.getImg() %>"></th>
        		</tr>
        		<tr>
        			<th>�̸�</th>
        			<th><%=d.getName() %></th>
        		</tr>
        		<tr>
        			<th>�����ڵ�</th>
        			<th><%=info %></th>
        		</tr>
        		<tr>
        			<th>�õ��ڵ�</th>
        			<th><%=inci %></th>
        		</tr>
        		<tr>
        			<th>��ȭ�翬���ȣ</th>
        			<th><%=d.getIn() %></th>
        		</tr>
        		<tr>
        			<th>�浵</th>
        			<th><%=d.getLo() %></th>
        		</tr>
        		<tr>
        			<th>����</th>
        			<th><%=d.getLat() %></th>
        		</tr>
        		<tr>
        			<th>��ȭ������</th>
        			<th><%=d.getDiv() %></th>
        		</tr>
        		<tr>
        			<th>��ȭ��з�</th>
        			<th><%=d.getCat() %></th>
        		</tr>
        		<tr>
        			<th>��ȭ��з�2</th>
        			<th><%=d.getCat2() %></th>
        		</tr>
        		<tr>
        			<th>��ȭ��з�3</th>
        			<th><%=d.getCat3() %></th>
        		</tr>
        		<tr>
        			<th>��ȭ��з�4</th>
        			<th><%=d.getCat4() %></th>
        		</tr>
        		<tr>
        			<th>����</th>
        			<th><%=d.getNum() %></th>
        		</tr>
        		<tr>
        			<th>����(�����)</th>
        			<th><%=d.getDate() %></th>
        		</tr>
        		<tr>
        			<th>������ ��</th>
        			<th><%=d.getLoc() %></th>
        		</tr>
        		<tr>
        			<th>�ô�</th>
        			<th><%=d.getCen() %></th>
        		</tr>
        		<tr>
        			<th>������</th>
        			<th><%=d.getHost() %></th>
        		</tr>
        		<tr>
        			<th>������</th>
        			<th><%=d.getAdm() %></th>
        		</tr>
        		<tr>
        			<th>����</th>
        			<th><%=d.getText() %></th>
        		</tr>
        		
        		</table>
        		
        		
        	
        	
        	</div>
        	</div>
        	
        </div>
</body>
</html>