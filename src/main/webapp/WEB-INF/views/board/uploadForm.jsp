<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<form action="uploadFormAction" method="post" enctype="multipart/form-data">
	
		<input type='file' name='uploadFile' mutiple>
		<button>전송</button>
	</form>




</body>
</html>