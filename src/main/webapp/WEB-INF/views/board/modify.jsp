<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>


<%@ page import="com.dohyeong.domain.*"%>
<%@ page import="java.util.List"%>



<%
	List<BoardVO> BoardList = (List<BoardVO>) request.getAttribute("list");
	BoardVO getboard = (BoardVO) request.getAttribute("getboard");
%>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/qna.css"
	type="text/css">


<div class="qnagea">
	<div class="section-title product__discount__title">
		<h2>흠냐.. 게시판 글수정</h2>
	</div>

	<div class="qnaboardsl">
		<form role="form" action="./modify_submit" method="post"
			name="qnaform">
			<div class="id_input_box_t">
				<td><input type="hidden" name="bno"
					value="<%=getboard.getBno()%>" /> <ts> 글쓴이 </ts>
				<td><input name="writer" type="text"
					value="<%=getboard.getWriter()%>" readonly="readonly" size="50"
					maxlength="100" /></td>
			</div>
			<div class="id_input_box_t">
				<ts> 제 목 </ts>
				<td><input name="title" type="text"
					value="<%=getboard.getTitle()%>" size="50" maxlength="100" /></td>
			</div>
			<div class="id_input_box_t">
				<ts> 내 용 </ts>
				<td><textarea name="content" id="editor4"><%=getboard.getContent()%></textarea></td>
			</div>

		 <div class="join_btns">
				<div class="join_btn"> 
					<button type="submit" data-oper='ha' class="site-btn" id="checkBtn">수정완료</button>
					<!-- <button type="submit" data-oper='delete' class="site-btn"
						id="checkBtn" style="background-color: red; opacity: 80%;">글
						삭제</button> -->
					<button type="button" onclick="eventBtn()" class="site-btn"
						id="checkBtn" style="background-color: red; opacity: 80%;">글
						삭제</button>
					<button type="button" class="site-btn" id="checkBtn"
						onClick="history.go(-1)">리스트로</button>
				</div>
			</div> 

		</form>
	</div>


</div>


<!-- End Channel Plugin -->
<%@include file="../includes/footer.jsp"%>
<script>
        function eventBtn() {
       
        	    /* let f = document.createElement('form'); */
           		 let f = document.getElementsByTagName('form'); 
           		//let f = document.getElementsByClassName('join_btn');
           		let obj;
           		
           		obj = document.getElementsByClassName('id_input_box_t');
        	    obj.setAttribute('type', 'hidden');
        	    obj.setAttribute('name', 'bno');
        	    obj.setAttribute('value', bno);
 	    
        	    f.appendChild(obj);
        	    f.setAttribute('method', 'post');
        	    f.setAttribute('action', '/board/remove');
        	    document.body.appendChild(f);
        	    f.submit();

           
        }
</script>

<!--  <script type="text/javascript">
	$(document).ready(function() {
		var formObj = $("form");
		$('button').on("click", function(e) {
			
			e.preventDefault();

			var operation = $(this).data("oper");

			console.log(operation);

			if (operation === 'delete') {
				formObj.attr("action", "/board/remove");
			} else {
				self.location = "/board/list";
				return;
			}
			formObj.submit();
		});
	});
</script>  -->
<%-- <script src="${pageContext.request.contextPath}/resources/js/test.js"/> --%>
