<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ page import="java.util.*"%>
<%@ page import="java.util.ArrayList"%>

<%@include file="../includes/header.jsp"%>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/loginstyle.css"
	type="text/css">
	
<!DOCTYPE html 	PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<div class="container" id="login">
	<div class="row justify-content-center">
		<div class="col-lg-8">
			<div class="login">

				<h1>Login</h1>
				<h2><c:out value="${error }"/></h2>
				<h2><c:out value="${logout }"/></h2>

				<!-- Login form : post방식으로 전송해야 합니다. -->
				<!-- /login이라는 속성값으로 login-page을 이용할수 있습니다. -->
				<form action="/login" method="post">
					<div class="form-group">
						<input type="text" class="form-control" name="username"
							 value="admin">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" name="password"
							value="admin">
					</div>
					<br>
					<div class="form-checkkk">

						<button type="submit" class="btn btn-lg btn-block btn-success">로그인</button>
						<button type="button" class="btn-j btn-lg btn-block btn-success"
							onClick="location.href='./joinForm.me'">회원가입</button>
						<br>
					</div>
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }" />
				</form>
				<!-- End Login form -->

			</div>
		</div>
	</div>
</div>

<%@include file="../includes/footer.jsp"%>

</html>