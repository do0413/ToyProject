<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../includes/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
	<div class='product__pagination'>
		<c:if test="${pageMaker.prev}">
			<class="pageinate_button previous">
			<a href="${pageMaker.startPage -1}">Pre</a>
		</c:if>
		<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
			<div class="pageinate_button" ${pageMaker.cri.pageNum ==num ? " active" : "" }">
				<a href="${num}">${num}</a>
			</div>
		</c:forEach>
		
		<c:if test="${pageMaker.next}">
			<div class="pageinate_button next">
			<a href="${pageMaker.endPage +1 }">Next</a></div>
		</c:if>
	</div>


	<div class="join_btns">
		<div class="join_btn">
			<button  onClick="location.href='/board/register'" type="button" class="site-btn"   >
				글작성
			</button>
		</div>
	</div>
	
	<!--페이지 번호를 누를때마다 해당 값이 바뀐다.  -->
	<form id='actionForm' action="/board/boardlist" method='get'>
		<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum }'>
		<input type='hidden' name='amount' value='${pageMaker.cri.amount }'>
		<input type='hidden' name='amount' value='<c:out value="${cri.amount }"/>'>
	</form>

</div><!--class="col-lg-9" end  -->
<!-- End Channel Plugin -->
<%@include file="../includes/footer.jsp"%>

<!-- Channel Plugin Scripts -->
<script src="//code.jquery.com/jquery.min.js"></script>


<script type="text/javascript">
	$(document).ready(function() {
		var actionForm = $("#actionForm");
		$(".pageinate_button a").on("click", function(e) {
			e.preventDefault();
			console.log('click');
			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
			actionForm.submit();
		});
	});

</script>


