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

	<h1>upload with ajax</h1>

	<div class='uploadDiv'>
		<input type='file' name='uploadFile' Multiple>
	</div>
	
	<button id='uploadBtn'>Upload</button>
	
	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous">
	</script>
	
	<script>
	$(document).ready(funtion(){
		
		$("#uploadBtn").on("click", function(e){
			var formData = new FormData();
			
			var inputFile = $("input[name='uploadFile']");
			
			var files = inputFile[0].files;
			
			//add filedate to formdata
			for(var 1=0; 1 <files.length; i++) {
				formData.append("uploadFile",files[i]);
			}
			
			$.ajax({
				url: '/board/uploadAjaxAction',
				processData: false,
				contentType: false,
				data : formData,
				type: 'post',
				sucess: function(result){
					alert("Uploaded");
				}
			});//ajax
		});
		
	});
	</script>
</body>
</html>