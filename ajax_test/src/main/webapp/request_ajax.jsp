<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String city = request.getParameter("city");
		String zipcode = request.getParameter("zipcode");
		
		out.println("���� : "+city);
		out.println("�����ȣ : "+zipcode);
		
	%>
</body>
</html>