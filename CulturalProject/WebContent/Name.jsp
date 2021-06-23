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
        		<%@ page import ="cultural.Cultural" %>
        		<%@ page import ="cultural.Des" %>
        		<%@ page import="java.util.*"%>
        		<%
        		// �ѱ� ������ �����ϱ� ���� ���ڵ� ó��
                //request.setCharacterEncoding("euc-kr");
        		
        		
        		String name=request.getParameter("nname");
        		Cultural c=new Cultural();
        		
        		
        		
        		
        		c.setAll(name);
        		
        		String num=c.getInnu();
        		if(num==null){
        			%>
        			<h4>�� �� �Է��ϼ̽��ϴ�. �ٽ� �� �� Ȯ�� ���ּ���.</h4>
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
    				<th border="5">��ȭ�� ��ȣ</th>
    				<th border ="5" >��ȭ�� �̸�</th>
    				<th>����</th>
    				
    				
    			</tr>
    			<tr align="center">
    				<td><%=num %></td>
    				<td><%=name %></td>
    				<td><input id="direct" type="button" value="�ٷΰ����" onclick="location.href='Des.jsp?code='+'<%=code%>'+'&form='+'<%=form%>'+'&city='+'<%=city%>'"></td>
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