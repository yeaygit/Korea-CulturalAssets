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
        		<%@ page import ="cultural.Region" %>
        		<%@ page import="java.util.*"%>
        		
        		<% 
        		
        		
    			String searchcode=request.getParameter("region");
    			String cc=null;
    			if(searchcode.equals("����")){
    				cc="11";
    			}else if(searchcode.equals("�λ�")){
    				cc="21";
    			}else if(searchcode.equals("�뱸")){
    				cc="22";
    			}else if(searchcode.equals("��õ")){
    				cc="23";
    			}else if(searchcode.equals("����")){
    				cc="24";
    			}else if(searchcode.equals("����")){
    				cc="25";
    			}else if(searchcode.equals("���")){
    				cc="26";
    			}else if(searchcode.equals("����")){
    				cc="29";
    			}else if(searchcode.equals("��⵵")){
    				cc="31";
    			}else if(searchcode.equals("������")){
    				cc="32";
    			}else if(searchcode.equals("��û�ϵ�")){
    				cc="33";
    			}else if(searchcode.equals("��û����")){
    				cc="34";
    			}else if(searchcode.equals("����ϵ�")){
    				cc="35";
    			}else if(searchcode.equals("���󳲵�")){
    				cc="36";
    			}else if(searchcode.equals("���ϵ�")){
    				cc="37";
    			}else if(searchcode.equals("��󳲵�")){
    				cc="38";
    			}else if(searchcode.equals("���ֵ�")){
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
        			<th >��ȭ�� ����</th>
        			<th >��ȭ�� ��ȣ</th>
    				<th >��ȭ�� �̸�</th>
    				<th>����</th>
        		</tr>
        		
        		
        		<%
        		for(int i=0;i<name.size();i++){
        		%>
        		<tr align="center">
        			<td><%=searchcode %></td>
        			<td><%=num.get(i) %></td>
        			<td><%=name.get(i) %></td>
        			<td><input id="direct" type="button" value="�ٷΰ����" onclick="location.href='Des.jsp?code='+'<%=code.get(i)%>'+'&form='+'<%=form.get(i)%>'+'&city='+'<%=cc%>'"></td>
        			
        		<% 
        		}
        		%>
        		</tr>
        		
        		
        		</table>
        	</div>
        	
        </div>
</body>
</html>