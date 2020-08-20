<%@page import="java.io.IOException"%>
<%@ page import="java.net.URL"%>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.InputStreamReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//String resourcePath = "/message/notice.txt";
	String resourcePath = application.getInitParameter("noticePath");
	String str = "";
	
	URL url = application.getResource(resourcePath);
	
	try (BufferedReader br = new BufferedReader(new InputStreamReader(url.openStream()))) {
		//application.getResourceAsStream(resourcePath))
		while ((str = br.readLine()) != null) {
			out.print(str);
		}
	} catch (IOException e) {
		out.println("예외 발생" + e.getMessage());
	}

%>
</body>
</html>