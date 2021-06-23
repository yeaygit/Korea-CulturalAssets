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
        <%@ page import ="cultural.Cultural" %>
    	<%@ page import ="cultural.Des" %>	
    	<%@ page import="java.util.*"%>
        <div id="main">
        	<%
    		// �ѱ� ������ �����ϱ� ���� ���ڵ� ó��
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
    				<th border="5">��ȭ�� ��ȣ</th>
    				<th border ="5" >��ȭ�� �̸�</th>
    				<th>����</th>
    				
    				
    			</tr>
    			
    				<%
    				for(int i=0;i<100;i++){

    						

    				%>
    				<tr align = "center">
    					<td><%=num.get(i) %></td>
    					<td><%=name.get(i) %></td>
    					<td>
    					
						
    					<input id="direct" type="button" value="�ٷΰ����" onclick="location.href='Des.jsp?code='+'<%=code.get(i)%>'+'&form='+'<%=form.get(i)%>'+'&city='+'<%=city.get(i)%>'">
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