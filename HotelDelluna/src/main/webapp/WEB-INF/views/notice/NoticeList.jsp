<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html dir="ltr" lang="en-US">
<head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
   <meta name="description" content="Bootstrap 3 Website Template" />

    <!-- Stylesheets
    ============================================= -->
    <link rel="icon" type="image/png" sizes="16x16" href="<c:url value='/resources/images/favicon/favicon-16x16.png' />">
	<link rel="icon" type="image/png" sizes="32x32" href="<c:url value='/resources/images/favicon/favicon-32x32.png'/>">
	<link href="http://fonts.googleapis.com/css?family=PT+Sans:300,400,500,600,700" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.css'/>" type="text/css" />
	<link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>"type="text/css" />
	<link rel="stylesheet"  href="<c:url value='/resources/css/dark.css'/>" type="text/css" />
	<link rel="stylesheet" href="<c:url value='/resources/css/font-icons.css'/>" type="text/css" />
	<link rel="stylesheet" href="<c:url value='/resources/css/animate.css'/>" type="text/css" />
	<link rel="stylesheet"  href="<c:url value='/resources/css/magnific-popup.css'/>"  type="text/css" />
	<link rel="stylesheet"href="<c:url value='/resources/css/responsive.css'/>"  type="text/css" />
	<link rel="stylesheet"  type="text/css" href="https://unpkg.com/vue-airbnb-style-datepicker@latest/dist/vue-airbnb-style-datepicker.min.css" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <!--[if lt IE 9]>
       <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
    <![endif]-->

    <!-- External JavaScripts
    ============================================= -->
	   <script type="text/javascript" src="<c:url value='/resources/js/jquery.js'/>"></script>
   <script type="text/javascript" src="<c:url value='/resources/js/plugins.js'/>"></script>

    <!-- Document Title
    ============================================= -->
   <title>Hotel Delluna | Notice </title>
<!-- <script language="JavaScript" src="script.js"></script> -->

<style>
   form{
      margin: 0 auto;
      width: 400px;
   }
   table{
      margin: 0 auto;
      width: 1300px;
      border-top: 1px solid black;
      border-collapse: collapse;
   }
   hr{
      margin: 0 auto;
      width: 1100px;
   }
     th, td {
       border-bottom: 1px solid black;
       padding: 18px;
       text-align: center;
      }
</style>
</head>

<body class="stretched">

    <!-- Document Wrapper
    ============================================= -->
    <div id="wrapper" class="clearfix">

        <!-- Header
        ============================================= -->
        <header id="header" class="full-header">

            <div id="header-wrap">

                <div class="container clearfix">

                    <div id="primary-menu-trigger"><i class="icon-reorder"></i></div>

                    <!-- Logo
                    ============================================= -->
                  <div id="logo">
                        <a href= "<c:url value='/'/>" class="standard-logo" data-dark-logo="<c:url value='/resources/images/logo/mainlogo.png'/>"><img src="<c:url value='/resources/images/logo/mainlogo.png'/>" alt="Chocolat Logo"></a>
                        <a href="<c:url value='/'/>" class="retina-logo" data-dark-logo="<c:url value='/resources/images/logo/mainlogo.png' />"><img src="<c:url value='/resources/images/logo/mainlogo.png'/>" alt="Chocolat Logo"></a>                   
                    </div>

                    <!-- Primary Navigation
                    ============================================= -->
                    <nav id="primary-menu">

                        <ul class="">
                            <li class="current"><a href="#" onclick="return false;"><div>호텔소개</div></a>
                                        <ul>                                
                                    		<li><a href="hotel-About-Us.html"><div>호텔소개</div></a></li>
                                    		<li><a href="Location.html"><div>호텔위치</div></a></li>
                                    		<li><a href="list.do"><div>공지사항</div></a></li>
                                         </ul>                                                              
                            </li>
                            <li><a href="#" onclick="return false;"><div>객실</div></a>
                                <ul>
                                    <li><a href="deluxe-1.html"><div>디럭스</div></a>
                                        <ul>
                                            <li><a href="deluxe-1.html"><div>디럭스 더블</div></a></li>
                                            <li><a href="deluxe-2.html"><div>디럭스 트윈</div></a></li>
                                            
                                        </ul>
                                    </li>
                                    <li><a href="suite-1.html"><div>스위트</div></a>
                                        <ul>
                                            <li><a href="suite-1.html"><div>패밀리 스위트</div></a></li>
                                            <li><a href="suite-2.html"><div>그랜드 스위트</div></a></li>
                     
                                        </ul>
                                    </li>                                                                                                                                       
                                </ul>
                            </li>
                            <li><a href="dining-1.html"><div>다이닝</div></a>
                                <ul>
                                    <li><a href="dining-1.html"><div>파노라마 (올 데이 다이닝)</div></a></li>
                                </ul>
                            </li>
                            <li><a href="#" onclick="return false;"><div>부대시설</div></a>
                                <ul>
                                	<li><a href="menu-item.jsp"><div>사계절 온수풀 해온</div></a></li>
                                	<li><a href="menu-item2.jsp"><div>해온 루프탑 테라스</div></a></li>
                            		<li><a href="menu-item3.jsp"><div>프라이빗 카바나</div></a></li>
                                </ul>
                            </li>
                            <li><a href="contact-1.jsp"><div>고객의 소리</div></a></li>
                            
                 			<c:choose>
	                            <c:when test="${m_id ne null}">
		                            <li><a href="<c:url value='/reservation/r'/>"><div>예약하기</div></a></li>   
		                            <li><a href="<c:url value='/reservation/ReservationSelect'/>"><div>예약조회 및 취소</div></a></li>
	                            </c:when>
	                           <c:otherwise>
		                            <li><a href="<c:url value='/member/LoginLogOut'/>"><div>예약하기</div></a></li>   
		                            <li><a href="<c:url value='/member/LoginLogOut'/>"><div>예약조회 및 취소</div></a></li>
	                           </c:otherwise>
                            </c:choose>
                            
                      			 <c:choose>
                               		<c:when test="${m_id eq null}">         
                           		 			<li><a href="<c:url value ='/member/LoginLogOut'/>"><div>로그인</div></a>
                           		 		<ul>
                                	    	<li><a href="<c:url value ='/member/LoginLogOut'/>"><div>로그인</div></a></li>
                                	   		<li><a href="<c:url value='/member/MemberInsert'/>"><div>회원가입</div></a></li>
                                  	    </ul>                
                           				 </li>
                                  </c:when>     
                                  <c:otherwise>
                                   		 <li><a href="<c:url value='/member/Logout'/>"><div>로그아웃</div></a></li>
                                    </c:otherwise>
                            </c:choose>   
                        </ul>
                    </nav><!-- #primary-menu end -->
                </div>
          </div>

        </header><!-- #header end -->    
        
        <!-- Page Title
        ============================================= -->
        <section id="page-title" class="page-title-parallax" style="background-image: url('<c:url value="/resources/images/logo/room.PNG"/>'); padding: 120px 0;" data-stellar-background-ratio="0.3">

            <div class="container clearfix">
                <FONT SIZE="6" COLOR="white">Hotel Delluna | 공지사항 </span></FONT>
                <ol class="breadcrumb">
                </ol>
            </div><br>
        </section><!-- #page-title end -->

<!-- 검색창  -->
<br>
<form name="test"  action="/hotel/list.do">
   <select name="search">
      <option value="subject_content">통합검색</option>
   </select>
   <input type="text" size="30" name="searchtext">&nbsp;
   <input type="submit" value="검색">
</form>

<!--관리자만 글쓰기 가능 ----------------------------------------------------------------------------------------- -->
<br>
<input type="button" onclick="location.href='<c:url value='/notice/NoticeWrite'/>'" value="글 작성">


<%-- <c:if test="${m_id eq 'admin'}"> 
 <input type="button" value="글작성" style="border:1px solid red; font-size:11pt; background-color:white; color:red; border-radius:5px; margin-left:150px;'"
			 onclick="document.location.href='/hotel/writeForm.do'">
</c:if> --%>

<!-- ---------------------------------------------------------------------------------------------------- -->
<!-- 게시글 없을때  -->

<%-- <br>
<c:if test="${pgList.count==0}">
<div class="entry clearfix">
<table border="1" width="700" cellpadding="0" cellspacing="0" align="center">
   <tr>
        <td align="center">저장된 글이 없습니다.</td>
   </tr>
</table>
</div>
</c:if> --%>
		<table>
			<tr>
			<th>NO</th>
			<th>제목</th>
			<th>작성일</th>
			<th>조회수</th>
			</tr>
		<c:forEach items="${list}" var="NoticeList"> 
	      <tr> 
		      <td><c:out value="${NoticeList.b_no}"/> </td>
		      <td onclick="location.href='<c:url value="/notice/NoticeContent?b_no=${NoticeList.b_no}"/>'"><a href ="#"><c:out value="${NoticeList.b_title}"/></a></td>
		      <td> <fmt:formatDate value="${NoticeList.b_date}" pattern="yyyy-MM-dd"/></td>
		      <td><c:out value="${NoticeList.b_count}"/> </td>
	      </tr>
		</c:forEach>
      </table>
<%-- <!--게시글 있을때 -->
<br>
<c:if test="${pgList.count > 0}">
<div class="entry clearfix">   
   <table style="font-size:17px; color:black">
    <tr height="40" style="font-weight:bolder"> 
      <td align="center" width="50">번호</td> 
      <td align="center" width="250" >제목</td> 
      <td align="center" width="50" >작성일</td> 
    </tr>
    
    <c:set var="number" value="${pgList.number}" />
    <c:forEach var="article" items="${articleList}">
    <td align="center"  width="70" >
          <c:out value="${number}" />
          <c:set var="number"  value="${number-1}" />
    </td>
    <td width="250" >
    
    <!-- num(게시물번호),pageNum(페이지번호)  -->           
      <a href="/hotel/content.do?num=${article.notice_number}&pageNum=${pgList.currentPage}" style="color:black">${article.notice_title}</a> 
    </td>
    <td align="center" width="150">
        <fmt:formatDate value="${article.notice_date}" timeStyle="medium" pattern="yyyy-MM-dd"/>
    </td>
    <td align="center" width="50">${article.readcount}</td>
  </tr>
   </c:forEach>
</table>
</div>
</c:if>
 --%>
<!-- 페이징 처리  -->
      <%-- <center>
         <c:if test="${pgList.startPage > pgList.blockSize}">
            <a
               href="/hotel/list.do?pageNum=${pgList.startPage-pgList.blockSize}&search=${search}&searchtext=${searchtext}">[이전]</a>
         </c:if>

         <c:forEach var="i" begin="${pgList.startPage}" end="${pgList.endPage}">
            <a href="/hotel/list.do?pageNum=${i}&search=${search}&searchtext=${searchtext}">
         <c:if test="${pgList.currentPage==i}">
            <font color="black"><b>[${i}]</b></font>
         </c:if> <c:if test="${pgList.currentPage!=i}">${i}
      </c:if>
     
            </a>
         </c:forEach>

         <c:if test="${pgList.endPage < pgList.pageCount}">
            <a href="/hotel/list.do?pageNum=${pgList.startPage+pgList.blockSize}&search=${search}&searchtext=${searchtext}">[다음]</a>
         </c:if>
      </center>

 --%>
    
        </section><!-- #content end --> 

        <!-- Footer
        ============================================= -->
        <footer id="footer" class="footer">
        
            <div class="container">

                <!-- Footer Widgets
                ============================================= -->
                <div class="footer-widgets-wrap clearfix">

                    <div class="col_two_third">

                        <div class="widget clearfix">

                            <h3>(주)호텔 델루나 <span>02-1544-1111</span></h3>
                            <p>63535, 제주특별자치도 서귀포시 중문관광로 72번길, 호텔 델루나.</p>

                            <div class="line" style="margin: 30px 0;"></div>
                           <div class="col_half">
                                <div class="widget subscribe-widget clearfix">
                                    <h5>Email : hoteldelluna@hoteldelluna.co.kr
                                    <div id="widget-subscribe-form-result" data-notify-type="success" data-notify-msg=""></div>
                                    <form id="widget-subscribe-form" action="include/subscribe.php" role="form" method="post" class="nobottommargin">
                          
                                    </form>
                                    <script type="text/javascript">
                                        $("#widget-subscribe-form").validate({
                                            submitHandler: function(form) {
                                                $(form).find('.input-group-addon').find('.icon-email2').removeClass('icon-email2').addClass('icon-line-loader icon-spin');
                                                $(form).ajaxSubmit({
                                                    target: '#widget-subscribe-form-result',
                                                    success: function() {
                                                        $(form).find('.input-group-addon').find('.icon-line-loader').removeClass('icon-line-loader icon-spin').addClass('icon-email2');
                                                        $('#widget-subscribe-form').find('.form-control').val('');
                                                        $('#widget-subscribe-form-result').attr('data-notify-msg', $('#widget-subscribe-form-result').html()).html('');
                                                        IGNITE.widget.notifications($('#widget-subscribe-form-result'));
                                                    }
                                                });
                                            }
                                        });
                                    </script>
                                </div>                            
                            </div>
                            <div class="col_half">
                            
                                    
                                
                                </div>                            
                            </div>

                            <div class="col_half col_last">
                                <div class="widget clearfix">

                                    <div class="hidden-xs hidden-sm"><div class="clear" style="padding-top: 10px;"></div></div>

                                    <div class="col-md-6 bottommargin-sm">

                                     <div class="widget_links clearfix">
                                			<ul>
                                    			<li><a href="index.do"><div>메인</div></a></li>
                                    			<li><a href="list.do"><div>공지사항</div></a></li>
                                    			<li><a href="hotel-About-Us.html"><div>호텔소개</div></a></li>
                                    			<li><a href="Location.html"><div>호텔위치</div></a></li>
                                                <li><a href="contact-1.jsp"><div>고객의 소리</div></a></li>
                                			</ul>
                            			</div>
                                    </div>

                                    <div class="col-md-6 bottommargin-sm col_last">

                            			<div class="widget_links clearfix">
                                			<ul>
                                    			<li><a href="deluxe-1.html"><div>객실 - 디럭스</div></a></li>
                                    			<li><a href="suite-1.html"><div>객실 - 스위트</div></a></li>
                                    			<li><a href="dining-1.html"><div>다이닝</div></a></li>
                                    			<li><a href="Reseravtion.do"><div>예약하기</div></a></li>
                                                <li><a href="ReservationConfirm.do"><div>예약조회 및 취소</div></a></li>
                                			</ul>
                                     </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col_one_third col_last">

                        <div class="widget clearfix">
                        <div class="fancy-title title-border">
                            <h4>Hours</h4>
                        </div>
                        <ul class="nobottommargin nobullets">
                            <li><strong>호텔서비스.</strong><br>00:00 ~ 24:00</li><br>
                            <li><strong>객실예약(주중)안내.</strong><br>전화예약 09:00 ~ 18:00</li><p>온라인예약 00:00 ~ 24:00<br>
                            <li>업무시간 외에는<br> 온라인 예약을 이용해주시기 바랍니다.</li>
                        </ul>
                        </div>
                        
                        <div class="widget clearfix">
                        <div class="fancy-title title-border">
                            <h4>Address</h4>
                        </div>

                        <ul class="nobottommargin nobullets">
                            <li>63535, 제주특별자치도 </li>
                            <li>서귀포시 중문관광로 72번길, 호텔 델루나.</li>
                        </ul>
                        </div>                                                
                    </div>
                </div>
              <!-- .footer-widgets-wrap end -->

            </div>        

            <!-- Copyrights
            ============================================= -->
            <div id="copyrights">

                <div class="container clearfix">

                    <div class="col_half">
                          <img src="<c:url value='/resources/images/logo/footer-logo.png'/>" alt="" class="footer-logo standard-logo">
                        <img src="<c:url value='/resources/images/logo/footer-logo-large.png' />" alt="" class="footer-logo retina-logo">
                        Copyright &copy; 2020 Hotel Delluna. All Rights Reserved.
                    </div>

                    <div class="col_half col_last tright">
                        <div class="copyrights-menu copyright-links fright clearfix">
                            <a href="#">공지사항</a> <a href="hotel-About-Us.html">호텔소개</a> <a href="deluxe-1.html">객실</a> <a href="contact-2.jsp">예약조회 및 취소</a> <a href="contact-1.jsp">고객의 소리</a>
                        </div>
                        <div class="fright clearfix">
                            <a href="#" class="social-icon si-small si-borderless nobottommargin si-facebook">
                                <i class="icon-facebook"></i>
                                <i class="icon-facebook"></i>
                            </a>

                            <a href="#" class="social-icon si-small si-borderless nobottommargin si-twitter">
                                <i class="icon-twitter"></i>
                                <i class="icon-twitter"></i>
                            </a>

                            <a href="#" class="social-icon si-small si-borderless nobottommargin si-gplus">
                                <i class="icon-gplus"></i>
                                <i class="icon-gplus"></i>
                            </a>

                            <a href="#" class="social-icon si-small si-borderless nobottommargin si-pinterest">
                                <i class="icon-pinterest"></i>
                                <i class="icon-pinterest"></i>
                            </a>

                            <a href="#" class="social-icon si-small si-borderless nobottommargin si-vimeo">
                                <i class="icon-vimeo"></i>
                                <i class="icon-vimeo"></i>
                            </a>

                            <a href="#" class="social-icon si-small si-borderless nobottommargin si-github">
                                <i class="icon-github"></i>
                                <i class="icon-github"></i>
                            </a>

                            <a href="#" class="social-icon si-small si-borderless nobottommargin si-yahoo">
                                <i class="icon-yahoo"></i>
                                <i class="icon-yahoo"></i>
                            </a>
                            <a href="#" class="social-icon si-small si-borderless nobottommargin si-linkedin">
                                <i class="icon-linkedin"></i>
                                <i class="icon-linkedin"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div><!-- #copyrights end -->
        </footer><!-- #footer end -->
    </div><!-- #wrapper end -->

    <!-- Go To Top
    ============================================= -->
    <div id="gotoTop" class="icon-angle-up"></div>

    <!-- Footer Scripts
    ============================================= -->
    <script type="text/javascript" src="<c:url value='/resources/js/functions.js'/>"></script>

</body>
</html>