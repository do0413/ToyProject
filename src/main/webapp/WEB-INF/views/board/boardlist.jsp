<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../includes/header.jsp"%>

<%@ page import="com.dohyeong.domain.*"%>
<%@ page import="java.util.List"%>
<%
	List<BoardVO> BoardList = (List<BoardVO>) request.getAttribute("list");
%>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/qna.css"
	type="text/css">

<!-- 게시판시작 -->
<div class="col-lg-9">
	<div class="section-title product__discount__title"
		style="width: 100%; height: 100%;">
		<h2 align="center">흠냐뤼.. 게시판입니다.</h2>
	</div>

	<table border="1px" class="table table-striped"
		style="width: 100%; height: 100%;">
		<thead style="align: center;">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>수정일</th>
			</tr>
		</thead>
		<%
			for (int i = 0; i < BoardList.size(); i++) {
				BoardVO bvo = (BoardVO) BoardList.get(i);
		%>
		<tr>
			<td><%=bvo.getBno()%></td>
			<td><a href="/board/get?bno=<%=bvo.getBno()%>"> <%=bvo.getTitle()%></td>
			<td><%=bvo.getWriter()%></td>
			<td><fmt:formatDate pattern="yyyy-MM-dd" value="<%=bvo.getRegdate()%>"></fmt:formatDate></td>
			<td><fmt:formatDate pattern="yyyy-MM-dd" value="<%=bvo.getUpdateDate()%>"></fmt:formatDate></td>

		</tr>
		<%
			}
		%>
	</table>


	<div class="join_btns">
		<div class="join_btn">
			<button  onClick="location.href='/board/register'" type="button" class="site-btn"   >
				글작성
			</button>
		</div>
	</div>

</div><!--class="col-lg-9" end  -->


<!-- Banner Begin -->

<!-- Banner End -->

<!-- Channel Plugin Scripts -->
<script src="//code.jquery.com/jquery.min.js"></script>


<script>

</script>

<!-- End Channel Plugin -->
<%@include file="../includes/footer.jsp"%>
