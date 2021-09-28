<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>

<%@ page import="com.dohyeong.domain.*"%>
<%@ page import="java.util.List"%>

<%
	List<BoardVO> BoardList = (List<BoardVO>) request.getAttribute("list");
%>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/boardRegister.css"
	type="text/css">

<div class="boardlist">
	<div class="section-title product__discount__title">
		<h2>흠냐.. 게시판 글 작성</h2>
	</div>
	<!-- <div class="qnaboardsl"> -->
	<div class="boardRegister">
		<form action="./register_st" method="post" name="qnaform">
			<div class="id_input_box_t">
				<ts > 글쓴이 </ts>
				<td><input name="writer" type="text" size="50" maxlength="100" /></td>
			</div>
			<div class="id_input_box_t">
				<ts> 제 목 </ts>
				<td><input name="title" type="text" size="50" />
				</td>
			</div>
			<div class="id_input_box_t">
				<ts> 내 용 </ts>
				<td><textarea name="content" id="editor4" ></textarea></td>
			</div>
			
	<div class="join_btns">
		<div class="join_btn">
			<button type="submit"  class="site-btn"
				 >등록</button>
			<button type="button"  class="site-btn"
				onClick="history.go(-1)">리스트로</button>
		</div>
	</div>
	
	
		</form>
	</div>


</div>
