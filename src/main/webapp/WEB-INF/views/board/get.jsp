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
		<h2>흠냐.. 게시판 글 작성</h2>
	</div>
	<div class="qnaboardsl">
		<form action="./register_st" method="post" name="qnaform">
			<div class="id_input_box_t">
				<ts> 글쓴이 </ts>
				<td><input name="writer" type="text"
					value="<%=getboard.getWriter()%>" readonly="readonly" size="50"
					maxlength="100" /></td>
			</div>
			<div class="id_input_box_t">
				<ts> 제 목 </ts>
				<td><input name="title" type="text"
					value="<%=getboard.getTitle()%>" readonly="readonly" size="50"
					maxlength="100" /></td>
			</div>
			<div class="id_input_box_t">
				<ts> 내 용 </ts>
				<td><textarea name="content" id="editor4" readonly="readonly"><%=getboard.getContent()%></textarea></td>
			</div>

			<div class="join_btns">
				<div class="join_btn">
					<button type="button" class="site-btn" id="checkBtn" 
					style="background: #7FAEC5;">파일 선택</button>
				</div>
				<div class="join_btn">
					<button type="button" class="site-btn" id="checkBtn"
						onClick="location.href='/board/modify?bno=<%=getboard.getBno()%>'">수정하기</button>
					<button type="button" class="site-btn" id="checkBtn"
						onClick="history.go(-1)">리스트로</button>
				</div>
			</div>


		</form>
	</div>


</div>
<!-- End Channel Plugin -->
<%@include file="../includes/footer.jsp"%>

