<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html dir="ltr" lang="UTF-8">
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="description" content="Bootstrap 3 Website Template" />
    <!-- Stylesheets
    ============================================= -->
	<link rel="icon" type="image/png" sizes="16x16" href="<c:url value='/resources/images/favicon/favicon-16x16.png' />">
	<link rel="icon" type="image/png" sizes="32x32" href="<c:url value='/resources/images/favicon/favicon-32x32.png'/>">
	<link href="http://fonts.googleapis.com/css?family=PT+Sans:300,400,500,600,700" rel="stylesheet" type="text/css" />
	<!-- <link rel="stylesheet" href="css/bootstrap.css" type="text/css" /> -->
	      <link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.css'/>" type="text/css" />
	<link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>"type="text/css" />
	<link rel="stylesheet"  href="<c:url value='/resources/css/dark.css'/>" type="text/css" />
	<link rel="stylesheet" href="<c:url value='/resources/css/font-icons.css'/>" type="text/css" />
	<link rel="stylesheet" href="<c:url value='/resources/css/animate.css'/>" type="text/css" />
	<link rel="stylesheet"  href="<c:url value='/resources/css/magnific-popup.css'/>"  type="text/css" />
	<link rel="stylesheet"href="<c:url value='/resources/css/responsive.css'/>"  type="text/css" />
	   <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
	   <!--[if lt IE 9]>
    	<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
    <![endif]-->
    <!-- External JavaScripts
    ============================================= -->
       <script src="<c:url value='/resources/js/jquery.js'/>"> </script>
<!-- <script type="text/javascript" src="js/plugins.js"></script> -->
       <script src="<c:url value='/resources/js/plugins.js'/>"> </script>
    <!-- Document Title
    ============================================= -->
	<title>Hotel Delluna</title>

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
                            <li><a href="#" onclick="return false;"><div>객실</div></a>
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
                           		 			<li class="current"><a href="<c:url value ='/member/LoginLogOut'/>"><div>로그인</div></a>
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
        <!-- Contact Form & Map Overlay Section
        ============================================= -->
      <section id="page-title" class="page-title-parallax" style="background-image: url('<c:url value="/resources/images/hotel-about/main.jpg"/>'); padding: 120px 0;" data-stellar-background-ratio="0.3">

            <div class="container clearfix" style="border-width:3px;">
                <h1> Member registration complete </h1>
                 <!--홈/호텔소개/회원가입 이거임  -->
                <ol class="breadcrumb">
                    <li><a href="<c:url value="/"/>">홈</a></li>
                    <li><a href="<c:url value="/member/LoginLogOut"/>">로그인</a></li>
                    <li class="active">회원가입완료</li>
                </ol>
            </div>

   	  </section><!-- #page-title end -->
   	  <p>
            <div class="container clearfix">

                <!-- Contact Form Overlay
                ============================================= -->
                <div id="contact-form-overlay" class="clearfix bgcolor-grey">

                    <div class="fancy-title title-dotted-border">
                        <h3>Hotel Delluna </h3>
                    </div>
                    <div id="contact-form-result" data-notify-type="success" data-notify-msg="<i class=icon-ok-sign></i> Message Sent Successfully!"></div>
         		
                    <!-- Contact Form
                    ============================================= -->
                    
                    <form name="form1" method="get" action="<c:url value='/member/LoginLogOut' />" >
					      <h4>호텔 델루나</h4> 
					       <h4>회원가입을 축하드립니다! 감사합니다</h4>
                        <div class="clearfix" style=" text-align:center;" >
                                <button class="button button-medium button-reveal button-3d button-rounded tright nomargin" style="color:black;">
                                <span>로그인</span> <i class="icon-angle-right"></i></button></div>
                        </form>
                    <div class="line"></div>

                    <!-- Contact Info
                    ============================================= -->
                 

                    <!-- Twitter
                    ============================================= -->
                  
                        <script type="text/javascript">

                            jQuery(document).ready(function($){
                                $.getJSON('include/twitter/tweets.php?username=envato&count=3', function(tweets){
                                    $("#twitter-scroller .slider-wrap").html(sm_format_twitter3(tweets));
                                });
                            });

                        </script>

                    </div><!-- Twitter End -->

                </div><!-- Contact Form Overlay End -->

            </div>
                    <script type="text/javascript">

                        jQuery(document).ready(function($) {

                            var ocTeam = $("#oc-team-list");

                            ocTeam.owlCarousel({
                                responsive:{
                                    0:{ items:1 },
                                    600:{ items:1 },
                                    1000:{ items:2 }
                                },
                                margin: 30,
                                nav: false,
                                dots:true
                            });

                        });

                    </script>       
                    <br>             

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
                          

                            <div class="line" style="margin: 30px 0;"></div>

                            <div class="col_half">
                                <div class="widget subscribe-widget clearfix">
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

                         <b>호텔서비스</b>
                         <br>00:00 ~ 24:00<br>
                         <br>
                        <ul class="nobottommargin nobullets">
                            <li><strong>객실예약 (주중) </strong> </li>
                            
                            09:00 ~ 18:00<br><br>
                              업무시간 외에는<br>
                              온라인 예약을 이용해주시기 바랍니다.
                        </ul>
                        </div>
                        
                        <div class="widget clearfix">
                        <div class="fancy-title title-border">
                            <h4>Address</h4>
                        </div>

                        <ul class="nobottommargin nobullets">
                             <li>63535, 제주특별자치도</li>
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