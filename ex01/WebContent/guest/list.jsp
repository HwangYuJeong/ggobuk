<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.hb.model.GuestDto"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style></style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<%
ArrayList list=(ArrayList)request.getAttribute("alist");
for(int i=0; i<list.size(); i++){
	GuestDto map=(GuestDto)list.get(i);
	out.print(map.getSabun());
	out.print(",");
	out.print(map.getName());
	out.print(",");
	out.print(map.getNalja());
	out.print(",");
	out.print(map.getPay());
	out.println();
} %>
</body>
</html>