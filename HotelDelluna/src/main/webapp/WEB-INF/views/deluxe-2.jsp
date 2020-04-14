<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html dir="ltr" lang="UTF-8">
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
	<link rel="stylesheet" href="<c:url value='/resources/css/responsive.css'/>"  type="text/css" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <!--[if lt IE 9]>
    	<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
    <![endif]-->

    <!-- External JavaScripts
    ============================================= -->
	<script src="<c:url value='/resources/js/jquery.js'/>"> </script>
	<script src="<c:url value='/resources/js/plugins.js'/>"> </script>

    <!-- Document Title
    ============================================= -->
	<title>Hotel Delluna | Room - Deluxe Twin</title>

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
                      <!-- Logo
                    ============================================= -->
                    <div id="logo">
                        <a href= "<c:url value='/'/>" class="standard-logo" data-dark-logo="<c:url value='/resources/images/logo/mainlogo.png'/>"><img src="<c:url value='/resources/images/logo/mainlogo.png'/>" alt="Chocolat Logo"></a>
                        <a href="<c:url value='/'/>" class="retina-logo" data-dark-logo="<c:url value='/resources/images/logo/mainlogo.png' />"><img src="<c:url value='/resources/images/logo/mainlogo.png'/>" alt="Chocolat Logo"></a>                   
                    </div><!-- #logo end -->

                    <!-- Primary Navigation
                    ============================================= -->
                 <nav id="primary-menu">

                        <ul class="">
                            <li><a href="<c:url value="/hotel-About-Us"/>"><div>호텔소개</div></a>
                                        <ul>                                
                                    		<li><a href="<c:url value="/hotel-About-Us"/>"><div>호텔소개</div></a></li>
                                    		<li><a href="<c:url value="/Location"/>"><div>호텔위치</div></a></li>
                                    		<li><a href="<c:url value='/notice/NoticeList'/>"><div>공지사항</div></a></li>
                                         </ul>                                                              
                            </li>
                            <li  class="current"><a href="#" onclick="return false;"><div>객실</div></a>
                                <ul>
                                    <li><a href="<c:url value="/deluxe-1"/>"><div>디럭스</div></a>
                                        <ul>
                                            <li><a href="<c:url value="/deluxe-1"/>"><div>디럭스 더블</div></a></li>
                                            <li><a href="<c:url value="/deluxe-2"/>"><div>디럭스 트윈</div></a></li>
                                            
                                        </ul>
                                    </li>
                                    <li><a href="<c:url value="/suite-1"/>"><div>스위트</div></a>
                                        <ul>
                                            <li><a href="<c:url value="/suite-1"/>"><div>패밀리 스위트</div></a></li>
                                            <li><a href="<c:url value="/suite-2"/>"><div>그랜드 스위트</div></a></li>
                     
                                        </ul>
                                    </li>                                                                                                                                       
                                </ul>
                            </li>
                            <li><a href="<c:url value="/dining-1"/>"><div>다이닝</div></a>
                                <ul>
                                    <li><a href="<c:url value="/dining-1"/>"><div>파노라마 (올 데이 다이닝)</div></a></li>
                                </ul>
                            </li>
                            <li><a href="#" onclick="return false;"><div>부대시설</div></a>
                                <ul>
                                	<li><a href="<c:url value="/menu-item"/>"><div>사계절 온수풀 해온</div></a></li>
                                	<li><a href="<c:url value="/menu-item2"/>"><div>해온 루프탑 테라스</div></a></li>
                            		<li><a href="<c:url value="/menu-item3"/>"><div>프라이빗 카바나</div></a></li>
                                </ul>
                            </li>
                            <li><a href="<c:url value="/contact-1"/>"><div>고객의 소리</div></a></li>
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
        <section id="page-title" class="page-title-parallax" style="background-image: url('<c:url value="resources/images/logo/room.PNG"/>'); padding: 120px 0;" data-stellar-background-ratio="0.3">

            <div class="container clearfix">
                <FONT SIZE="6" COLOR="white">Hotel Delluna | Deluxe Room</span></FONT>
                <ol class="breadcrumb">
                </ol>
            </div>

   	  </section><!-- #page-title end -->

        <!-- Content
        ============================================= -->
        <section id="content">

            <div class="content-wrap bgcolor-grey-light">

                <div class="container clearfix">

                    <div class="nobottommargin clearfix">

                        <div class="nobottommargin">

                            <div class="clearfix">

                                <h2>디럭스 트윈(Deluxe Twin)</h2>
                              <p>
                              <c:choose>
	                              <c:when test="${m_id ne null}">
	                               		<a href="<c:url value='/reservation/r'/>" class="btn btn-primary" role="button">예약하기</a>
	                               </c:when>
                               <c:otherwise>
                                    <a href="<c:url value='/member/LoginLogOut'/>" class="btn btn-primary" role="button">예약하기</a>
                               </c:otherwise>
                                </c:choose>
                               <a href="<c:url value="/contact-1"/>" class="btn btn-primary" role="button">문의하기</a>
                               </p>
                               <div class="entry clearfix">
                                <div class="entry-image">
                                    <div class="fslider" data-arrows="false" data-lightbox="gallery">
                                        <div class="flexslider">
                                            <div class="slider-wrap">
                                                <div class="slide"><a href="<c:url value="/resources/images/logo/room-5.PNG"/>" data-lightbox="gallery-item"><img class="image_fade" src="<c:url value="/resources/images/logo/room-5.PNG"/>" alt=""></a></div>
                                                <div class="slide"><a href="<c:url value="/resources/images/logo/room-6.PNG"/>" data-lightbox="gallery-item"><img class="image_fade" src="<c:url value="/resources/images/logo/room-6.PNG"/>" alt=""></a></div>
                                                <div class="slide"><a href="<c:url value="/resources/images/logo/room-7.PNG"/>" data-lightbox="gallery-item"><img class="image_fade" src="<c:url value="/resources/images/logo/room-7.PNG"/>" alt=""></a></div>
                                                <div class="slide"><a href="<c:url value="/resources/images/logo/room-8.PNG"/>" data-lightbox="gallery-item"><img class="image_fade" src="<c:url value="/resources/images/logo/room-8.PNG"/>" alt=""></a></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>                 
                             </div>
                               
                                <div class="topmargin-sm">
								
                                    <h3>객실개요</h3><p> 
                                    침대 타입 : 더블침대 1개 + 싱글침대 1개 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 체크인/체크아웃 : 14:00 / 11:00<br>
                                    최대 수용인원 : 3명 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 전망 : 가든 뷰
									<hr style="border: solid 1px navy;">
                              		<h3>서비스</h3><p> 
                                    &middot; 제주도의 아름다운 자연 전망(가든 뷰)<p>
                                    &middot; Spa & Garden 해온: 사계절 야외수영장 및 자쿠지, 사우나<br>
                                    &middot; 해온(he:on) 베딩 시스템: 최상의 숙면을 위한 침대 및 침구류<br>
                                    &middot; 맞춤형 베개 제공<br>
                                    &middot; 요청 시 한실 베개, 젠 메밀 베개, 바이오 베개, 메모리폼 베개, 양모 베개 제공<br>
                                    &middot; 전 객실 초고속 무료 인터넷 (유선, 와이파이)
									<hr style="border: solid 1px navy;">
                              		<h3>어메니티</h3><p> 
                                    일반 : 55" LCD TV / 발코니 / 손전등 / 금고 / 사무용 데스크 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 욕실 : 욕실용품(몰튼브라운) / 비데 / 면도기 / 목욕 가운 / 헤어드라이어<br>
                                    기타 : 케이블,위성 TV채널 / 무료 생수 1일 3병 / 무료 차(Tea) 서비스 제공
                                    <hr style="border: solid 1px navy;">

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

                            <div class="col_half col_last">
                                <div class="widget clearfix">

                                    <div class="hidden-xs hidden-sm"><div class="clear" style="padding-top: 10px;"></div></div>

                                    <div class="col-md-6 bottommargin-sm">

                            			<div class="widget_links clearfix">
                                			<ul>
                                    			<li><a href="<c:url value='/'/>"><div>메인</div></a></li>
                                    		<li><a href="<c:url value='/notice/NoticeList'/>"><div>공지사항</div></a></li>
                                    		<li><a href="<c:url value="/hotel-About-Us"/>"><div>호텔소개</div></a></li>
                                    		<li><a href="<c:url value="/Location"/>"><div>호텔위치</div></a></li>
                                            <li><a href="<c:url value="/contact-1"/>"><div>고객의 소리</div></a></li>
                                			</ul>
                            			</div>
                                    </div>

                                    <div class="col-md-6 bottommargin-sm col_last">

                            			<div class="widget_links clearfix">
                                			<ul>
                                    			<li><a href="<c:url value="/deluxe-1"/>"><div>객실 - 디럭스</div></a></li>
                                    			<li><a href="<c:url value="/suite-1"/>"><div>객실 - 스위트</div></a></li>
                                    			<li><a href="<c:url value="/dining-1"/>"><div>다이닝</div></a></li>
                                    			<li><a href="<c:url value='/reservation/r'/>"><div>예약하기</div></a></li>
                                                <li><a href="<c:url value='/reservation/ReservationSelect'/>"><div>예약조회 및 취소</div></a></li>
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
                            <a href="<c:url value='/notice/NoticeList'/>">공지사항</a>
                             <a href="<c:url value="/hotel-About-Us"/>">호텔소개</a>
                              <a href="<c:url value="/deluxe-1"/>">객실</a>
                               <a href="<c:url value='/reservation/ReservationSelect'/>">예약조회 및 취소</a>
                                <a href="<c:url value="/contact-1"/>">고객의 소리</a>
                        </div>
                        <div class="fright clearfix">
                            <a href="https://www.facebook.com/" class="social-icon si-small si-borderless nobottommargin si-facebook">
                                <i class="icon-facebook"></i>
                                <i class="icon-facebook"></i>
                            </a>

                            <a href="https://twitter.com/explore" class="social-icon si-small si-borderless nobottommargin si-twitter">
                                <i class="icon-twitter"></i>
                                <i class="icon-twitter"></i>
                            </a>
                            <a href="https://github.com/park002" class="social-icon si-small si-borderless nobottommargin si-github">
                                <i class="icon-github"></i>
                                <i class="icon-github"></i>
                            </a>

                            <a href="https://www.yahoo.com/" class="social-icon si-small si-borderless nobottommargin si-yahoo">
                                <i class="icon-yahoo"></i>
                                <i class="icon-yahoo"></i>
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