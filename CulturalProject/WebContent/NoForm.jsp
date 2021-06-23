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
            	<th>��ȭ�� ��ȣ</th>
            	<th>��ȭ�� �̸�</th>
            	<th>�ڼ��� ����</th>
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