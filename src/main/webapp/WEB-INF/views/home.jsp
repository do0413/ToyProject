<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@include file="./includes/header.jsp"%>
<%@ page import="com.dohyeong.domain.*"%> 
<!-- 템플릿 https://colorlib.com/wp/template/ogani/ --> 

<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/css/mainPage.css"
   type="text/css">
   
<!-- Hero Section Begin -->
<!-- Hero 좌측 네비 -->
<section class="hero">
   <div class="container">
      <div class="row">
         <div class="col-lg-3">
            <div class="hero__categories">
               <div class="hero__categories__all">
                  <i class="fa fa-bars"></i> <span>All departments</span>
               </div>
               <ul>
               	<li><a href="./boardlist">게시판 보기</a></li>
                  <li><a href="./storeList.st">전체가게 보기</a></li>
                  <li><a href="./reviewList.re">전체리뷰 보기</a></li>
                  <li><a href="noticelist.no">공지사항</a></li>
                  <li><a href="qnalist.qn">문의</a></li>
                  <li><a href="eventList.ev">이벤트</a></li>
                  <li><a href="./updateList.me">마이페이지</a></li>
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
               <div class="hero__text">   
               </div>
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
               <a href="#"><img src="./resources/img/index-store8.png" alt="" ></a>
            </div>
            <div class="featured__controls">
               
            </div>
         <!-- </div> --> 
         <div class="categories__slider owl-carousel">
            
            <div class="col-lg-3">
               
            </div>
           

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
               <a href="#"><img src="./resources/img/index-store10.png" alt="" ></a>
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
               <a href="./eventList.ev"><img src="./resources/img/banner/banner_5.png" alt=""></a>
            </div>
         </div>
         <div class="col-lg-6 col-md-6 col-sm-6">
            <div class="banner__pic">
               <a href="./eventList.ev"><img src="./resources/img/banner/banner_4.PNG" alt="" style="height: 262.99px;"></a>
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
      return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
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
    "pluginKey": "9d8b1c37-e3a6-4847-87c5-54c6329a6235"
  });
</script>
<!-- End Channel Plugin -->

<%@include file="./includes/footer.jsp"%>