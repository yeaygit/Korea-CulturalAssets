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
        
        <form action="SearchRegion.jsp">
        	<h6>�˻��ϰ� ���� ���� �Է����ּ���. ex)����, �λ�, �뱸, ��õ, ������, ��û�ϵ�...</h6>
            <input name="region" type="text" >
            <input id="search" type="submit" value="Search">
        </form>
        
         </div>
         
         </div>
	
</body>
</html>