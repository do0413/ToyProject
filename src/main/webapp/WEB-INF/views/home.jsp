<%@page import="com.dohyeong.controller.CommonController"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="./includes/header.jsp"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

<%@ page import="com.dohyeong.domain.*"%>
<%@ page import="com.dohyeong.controller.CommonController.*"%>
<%@ page import="com.dohyeong.security.CustomLoginSuccessHandler"%>
<%@ page import="org.springframework.security.core.Authentication"%>
<%@ page
	import="org.springframework.security.web.authentication.AuthenticationSuccessHandler"%>
<%@ page import="java.io.IOException"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="javax.servlet.ServletException"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>
<%@ page import="java.util.Stack"%>

<%@ page import="org.springframework.ui.Model"%>
<%@ page import="com.dohyeong.domain.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	/* List<String> roleNames = new ArrayList<>(); */
	String roleNames = (String) request.getAttribute("roleNames");
	System.out.println("------roleNames222------" +roleNames);
%>
<%--  <%
	MemberVO aut = (MemberVO) session.getAttribute("aut");
 	List<AuthVO> auth= null;
	if(aut != null ) {
		auth = aut.getAuthList();
	} else {
		auth = null;
	}
%>  --%>
<%--  <%
	AuthVO aut = (AuthVO) session.getAttribute("auth");
 	String auth= null;
	if(aut != null ) {
		auth = aut.getAuth();
	} else {
		auth = null;
	}
%>  --%>

<!--  authList=[AuthVO(userid=2222, auth=ROLE_MEMBER)], auth=null,  -->
<%-- <%
	MemberVO mvo = (MemberVO) session.getAttribute("memberVO");
	List<AuthVO> auth= new ArrayList(); 
	String ele = auth.get(0).getAuth().toString();
	List<MemberVO> authm = new ArrayList();
%> --%>
<!-- 템플릿 https://colorlib.com/wp/template/ogani/ -->

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/mainPage.css"
	type="text/css">

<!-- header -->
<!-- Header Section Begin -->
<header class="header">
	<div class="header__top">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6">
					<div class="header__top__left">
						<ul>
							<li><i class="fa fa-envelope"></i> do0413do@colorlib.com</li>
							<li>안녕하세요.</li>
						</ul>
					</div>
				</div>
				<div class="col-lg-6 col-md-6">
					<div class="header__top__right">
						<div class="header__top__right__social">
							<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
								class="fa fa-twitter"></i></a> <a href="#"><i
								class="fa fa-linkedin"></i></a> <a href="#"><i
								class="fa fa-pinterest-p"></i></a>
						</div>
						<div class="header__top__right__auth">
						<%
						System.out.println("------roleNames------" +roleNames);
						System.out.println("------roleNames------" +roleNames);
						System.out.println("------roleNames------" +roleNames);
							if(roleNames != null) {			
						%>
							<a href="/member/customLogout" style="margin: 0px;"><i class="fa fa-user"></i> 로그아웃 </a>
						</div>
						<%
							} else {

						%>
							<a href="/member/customLogin" style="margin: 0px;"><i class="fa fa-user"></i> 로그인</a> 
							<a href="/member/joinForm">회원가입</a>
						</div>
						<%
							}
						%>
						<%--   <sec:authorize access="isAnonymous()">
								<a href="${CONTEXT }/j_spring_security_check">로그인</a>
							</sec:authorize> --%>

						<%-- <sec:authorize access="isAuthenticated()">
								<a href="${CONTEXT }/j_spring_security_logout">로그아웃</a>
							</sec:authorize> --%>

						<%-- <div class="header__top__right__auth">
						<c:set var="auth" value='${auth.getAuthorities() }'/>
						<c:choose>
 						<c:when test="${auth eq null }">
							<a href="/member/customLogin" style="margin: 0px;"><i class="fa fa-user"></i> 로그인</a> 
							<a href="/member/joinForm">회원가입</a>
						</c:when>
						<c:when test="${auth eq 'ROLE_MEMBER' }">
							<a href="/member/customLogout" style="margin: 0px;"><i class="fa fa-user"></i> 로그아웃 </a> 
						</c:when> 
						</c:choose>
					</div> --%>
					

				</div>
			</div>
		</div>
	</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<div class="header__logo">
					<a href="./index.html"><img src="img/logo.png" alt=""></a>
				</div>
			</div>
			<div class="col-lg-7">
				<nav class="header__menu" style="padding-left: 30px;">
					<ul style="width: 509px;">
						<li class="active"><a href="./index.html">Home</a></li>

						<li><a href="#">Pages</a> <!--  <ul class="header__menu__dropdown">
                                    <li><a href="./shop-details.html">Shop Details</a></li>
                                    <li><a href="./shoping-cart.html">Shoping Cart</a></li>
                                    <li><a href="./checkout.html">Check Out</a></li>
                                    <li><a href="./blog-details.html">Blog Details</a></li>
                                </ul> --></li>
						<!-- <li><a href="./shop-grid.html">Shop</a></li> -->
						<li><a href="#">Shop</a></li>
						<li><a href="#">Git</a></li>
						<li><a href="#">Contact</a></li>
					</ul>
				</nav>
			</div>
			<div class="col-lg-2">
				<div class="header__cart">
					<ul>
						<li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
						<li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
					</ul>

				</div>
			</div>
		</div>
		<div class="humberger__open">
			<i class="fa fa-bars"></i>
		</div>
	</div>
</header>
<!-- Header Section End -->


<!-- Hero Section Begin -->
<!-- Hero 좌측 네비 -->
<section class="hero">
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<div class="hero__categories">
					<div class="hero__categories__all">
						<i class="fa fa-bars"></i> <span> 목 록 </span>
					</div>
					<ul>
						<li><a href="/board/boardlist">전체 글</a></li>


						<li><a href="#">인기 글</a></li>
						<li><a href="#">공지사항</a></li>
						<li><a href="#">마이페이지</a></li>
						<!-- <li><a href="qnalist.qn">문의</a></li>
                  <li><a href="eventList.ev">이벤트</a></li>
                  <li><a href="./updateList.me">마이페이지</a></li> -->
						<!--<li><a href="#">Fastfood</a></li>
                            <li><a href="#">Fresh Onion</a></li>
                            <li><a href="#">Papayaya & Crisps</a></li>
                             <li><a href="#">Oatmeal</a></li>
                            <li><a href="#">Fresh Bananas</a></li> -->
					</ul>
				</div>
			</div>


			<div class="col-lg-9">
				<div class="hero__item set-bg"
					data-setbg="./resources/img/hero/top-banner-test3.jpg">
					<div class="hero__text"></div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Hero Section End -->

<!-- Categories Section Begin -->
<!-- 추천가게 -->
<section class="categories">
	<div class="container">
		<div class="row">
			<!-- <div class="col-lg-12"> -->
			<div class="section-title">
				<!-- <h2 class="index_h"><a href="./storeList.st">추천가게</a></h2> -->
				<a href="#"><img src="./resources/img/index-store8.png" alt=""></a>
			</div>
			<div class="featured__controls"></div>
			<!-- </div> -->
			<div class="categories__slider owl-carousel">

				<div class="col-lg-3"></div>


			</div>
			<!-- row -->
		</div>
	</div>
</section>
<!-- Categories Section End -->

<!-- Categories Section Begin -->
<!-- 베스트리뷰 -->

<section class="categories">
	<div class="container">
		<div class="row">
			<!-- <div class="col-lg-12"> -->
			<div class="section-title">
				<!-- <h2 class="index_h"><a href="./storeList.st">추천가게</a></h2> -->
				<a href="#"><img src="./resources/img/index-store10.png" alt=""></a>
			</div>
			<div class="featured__controls">
				<!-- 테스트 주석  -->

				<!-- row -->
			</div>
		</div>
</section>
<!-- 베스트리뷰 디자인 수정추가 끝 -->
<!-- Categories Section End -->

<!-- Featured Section Begin -->
<!-- Featured Section End -->


<!-- Banner Begin -->
<div class="banner">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6">
				<div class="banner__pic">
					<a href="./eventList.ev"><img
						src="./resources/img/banner/banner_5.png" alt=""></a>
				</div>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6">
				<div class="banner__pic">
					<a href="./eventList.ev"><img
						src="./resources/img/banner/banner_4.PNG" alt=""
						style="height: 262.99px;"></a>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Banner End -->

<!-- Channel Plugin Scripts -->
<script>
	(function() {
		var w = window;
		if (w.ChannelIO) {
			return (window.console.error || window.console.log || function() {
			})('ChannelIO script included twice.');
		}
		var ch = function() {
			ch.c(arguments);
		};
		ch.q = [];
		ch.c = function(args) {
			ch.q.push(args);
		};
		w.ChannelIO = ch;
		function l() {
			if (w.ChannelIOInitialized) {
				return;
			}
			w.ChannelIOInitialized = true;
			var s = document.createElement('script');
			s.type = 'text/javascript';
			s.async = true;
			s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
			s.charset = 'UTF-8';
			var x = document.getElementsByTagName('script')[0];
			x.parentNode.insertBefore(s, x);
		}
		if (document.readyState === 'complete') {
			l();
		} else if (window.attachEvent) {
			window.attachEvent('onload', l);
		} else {
			window.addEventListener('DOMContentLoaded', l, false);
			window.addEventListener('load', l, false);
		}
	})();
	ChannelIO('boot', {
		"pluginKey" : "9d8b1c37-e3a6-4847-87c5-54c6329a6235"
	});
</script>
<!-- End Channel Plugin -->

<%@include file="./includes/footer.jsp"%>