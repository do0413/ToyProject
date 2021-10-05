<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html 	PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h1>---logout page----</h1>
	
	<form action="/member/customLogin" method='post'>
		<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
		<button>로그아웃</button>
	</form>
</body>
</html>