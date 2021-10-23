<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">

<title>Insert title here</title>
</head>
<body>

	<h1>upload with ajax</h1>

	<div class='uploadDiv'>
		<input type='file' name='uploadFile' multiple>
	</div>
	
	<button id='uploadBtn'>Upload</button>
	
	<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous">
	</script>
	
	<script>
	
	var regex =new RegExp("(.*?)\.(exe|sh|zip|alz)$");
	var maxSize = 5242880; //5MB
	
	function checkExtension(fileName, fileSize){
		
		if(fileSize >= maxSize) {
			alert("파일 사이즈 초과");
			return false;
		}
		
		if(regex.test(fileName)) {
			alert("해당 종류의 파일은 업로드 할 수 없습니다.");
			return false;
		}
		return true;
	}
	
	//$(document).ready(function(){
		
		$("#uploadBtn").on("click", function(e){
			debugger;
			var formData = new FormData();
			
			var inputFile = $("input[name='uploadFile']");
			
			var files = inputFile[0].files;
			
			console.log(files);
			
			//add filedate to formdata
			for(var i=0; 1 <files.length; i++) {
				
				if(!checkExtension(files[i].name, files[i].size)) {
					return false;
				}
				
				formData.append("uploadFile",files[i]);
			}
			
			$.ajax({
				
				url: '/board/uploadAjaxAction',
				processData: false,
				contentType: false,
				data : formData,
				type: 'POST',
				sucess: function(result){
					debugger;
					alert("Uploaded");
				}
			});//ajax
		});
		
	//});
	</script>
</body>

</html>