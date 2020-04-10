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
                            <li class="current"><a href="#" onclick="return false;"><div>부대시설</div></a>
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
        <section id="page-title" class="page-title-parallax"
         style="background-image: url('<c:url value="/resources/images/favicon/on2.jpg"/>'); 
         padding: 300px 0;" data-stellar-background-ratio="0.3">

            <div class="container clearfix">
               
             <!-- 여기 글적으면 메인에 글씨  -->
      
              
              
      
            </div>

   	  </section><!-- #page-title end -->        

        <!-- Content
        ============================================= -->
        <section id="content">

            <div class="content-wrap bgcolor-grey-light">

                <div class="container clearfix">

                    <!-- Portfolio Single Image
                    ============================================= -->
                    <div class="col_two_third portfolio-single-image nobottommargin">
                    <!--menu-item.jpg  -->
                        <img src="<c:url value="/resources/images/favicon/on.jpg"/>" alt="" width="300" height="430">                     
                    </div><!-- .portfolio-single-image end -->

                    <!-- Portfolio Single Content
                    ============================================= -->
                    <div class="col_one_third portfolio-single-content col_last nobottommargin">

                        <!-- Portfolio Single - Description
                        ============================================= -->
                        <div class="fancy-title title-bottom-border">
                            <h1>해온 루프탑 테라스</h1>
                        </div>
                      <p>이국적인 야자수와 제주의 파란 하늘 아래 특별한 휴식을 선사할 롯데호텔제주 신규 휴양시설 해온 루프탑 테라스를 만나보세요. </p>
                      <p>황금빛 석양이 비치는 해온 루프탑 테라스에서 그 동안 꿈꿔온 여행의 로망을 완성할 수 있습니다.</p>
                       
                        <!-- Portfolio Single - Description End -->

                        <!-- Portfolio Single - Share
                        ============================================= -->
                        <div class="si-share clearfix">
                            <span>Share:</span>
                            <div>
                         	<a href="https://www.facebook.com/" class="social-icon si-light si-small si-facebook">
                            	<i class="icon-facebook"></i>
                                <i class="icon-facebook"></i></a>
                            <a href="https://twitter.com/?lang=ko" class="social-icon si-light si-small si-twitter">
                                <i class="icon-twitter"></i>
                                <i class="icon-twitter"></i></a>
                            <a href="https://www.pinterest.co.kr/" class="social-icon si-light si-small si-pinterest">
                                <i class="icon-pinterest"></i>
                                <i class="icon-pinterest"></i></a>
                            <a href="https://plus.google.com/" class="social-icon si-light si-small si-gplus">
                                <i class="icon-gplus"></i>
                                <i class="icon-gplus"></i></a>
                            <a href="https://www.moakt.com/ko" class="social-icon si-light si-small si-email3">
                                <i class="icon-email3"></i>
                                <i class="icon-email3"></i></a>                                  
                        	</div>
                        </div>
                        <!-- Portfolio Single - Share End -->
                    </div><!-- .portfolio-single-content end -->

                    <div class="clear"></div>
                    
                            <!-- Comments
                            ============================================= -->
                            <div id="comments" class="clearfix">

                                <h2 id="comments-title">부대시설 개요 </h2>
							<b>타입</b> He:on Rooftop Terrace <br>                   
							<b>위치</b>   Garden 2F	<br>
							<b>이용시간</b><br>
							   	09:00 ~ 23:00 (5월~10월)   <br>
								09:30 ~ 23:00 (11월~4월)
							<p>

                                <h2 id="comments-title2">추가 정보 </h2>
                        
							<br>360도 워터 슬라이드, 3가지 타입의 자쿠지, 어린이 전용 키즈풀,<br>
							프라이빗 카바나 등 다채로운 시설로 많은 사랑을 받고 있는 롯데호텔제주 해온에 또 하나의 신규 휴양시설이 오픈하였습니다.<br>
							트로피칼 칵테일을 즐길 수 있는 풀사이드 카페와 눈부시도록 아름다운 석양이 비치는 2층 테라스로 구성된 해온 루프탑 테라스에서 <br>
							그 동안 꿈꿔온 여름 바캉스의 모든 로망을 완성해보시기 바랍니다.   <br> <br> <br>
							 </div>
							
							
							<h2>문의안내</h2>
							<b>TEL +82-1234-1234 </b><br>
							<b>※ </b>해온 루프탑 테라스는 호텔 투숙객 전용으로 운영되고 있습니다. <br>
							<b>※ </b>어린이는 키즈풀 이용을 권장하며, 반드시 보호자 동반을 부탁드립니다. <br>
							<b>※ </b>귀중품은 객실에 보관해 주시기 바랍니다.<br>


                                <!-- Disqus Comments
                                ============================================= -->
                                       

                    <div class="divider divider-center"><i class="icon-circle"></i></div>

                    <!-- Related Portfolio Items
                    ============================================= -->
                    <h3>갤러리</h3>

                    <div id="related-portfolio" class="owl-carousel portfolio-carousel">

                        <div class="oc-item">
                            <div class="iportfolio">
                                <div class="portfolio-image">
                                    <a href="#">
                                    <img src="<c:url value="/resources/images/favicon/on.jpg"/>" alt=""></a>
                                	<div class="portfolio-overlay">
                                    	<a href="<c:url value="/resources/images/favicon/on.jpg"/>" class="left-icon" data-lightbox="image">
                                    	<i class="icon-picture"></i></a>
                                	</div>
                            	</div>
                            	<div class="portfolio-desc">
                            		              
                            	</div>
                        	</div>                        
                        </div>
                        
                        <div class="oc-item">
                            <div class="iportfolio">
                                <div class="portfolio-image">
                                    <a href="#"><img src="<c:url value="/resources/images/favicon/on2.jpg"/>" alt=""></a>
                                    <div class="portfolio-overlay">
                                    	<a href="<c:url value="/resources/images/favicon/on2.jpg"/>" class="left-icon" data-lightbox="image"><i class="icon-picture"></i></a>
                                                                    
                                    </div>
                                </div>
                      
                        	</div>
                        </div>
                        
                        <div class="oc-item">
                            <div class="iportfolio">
                                <div class="portfolio-image">
                                    <a href="#"><img src="<c:url value="/resources/images/favicon/on3.jpg"/>" alt=""></a>
                                    <div class="portfolio-overlay">
                                        <a href="<c:url value="/resources/images/favicon/on3.jpg"/>" class="left-icon" data-lightbox="image"><i class="icon-picture"></i></a>
                                                            
                                    </div>
                                </div>
                                <div class="portfolio-desc">
                                       
                                </div>
                            </div>
                        </div>
                        
                       
                        <div class="oc-item">
                            <div class="iportfolio">
                                <div class="portfolio-image">
                                    <a href="portfolio-single.html"><img src="<c:url value="/resources/images/favicon/on5.jpg"/>" alt=""></a>
                                    <div class="portfolio-overlay">
                                        <a href="<c:url value="/resources/images/favicon/on5.jpg"/>" class="left-icon" data-lightbox="image"><i class="icon-picture"></i></a>
                                                                   
                                    </div>
                                </div>
                            
                            </div>
                        </div>
                        
                        <div class="oc-item">
                            <div class="iportfolio">
                                <div class="portfolio-image">
                                    <a href="portfolio-single.html"><img src="<c:url value="/resources/images/favicon/on6.jpg"/>" alt=""></a>
                                    <div class="portfolio-overlay">
                                        <a href="<c:url value="/resources/images/favicon/on6.jpg"/>" class="left-icon" data-lightbox="image"><i class="icon-picture"></i></a>
                                                            
                                    </div>
                                </div>
                            
                            </div>
                        </div>
                        
                    </div><!-- .portfolio-carousel end -->

                    <script type="text/javascript">

                        jQuery(document).ready(function($) {

                            var relatedPortfolio = $("#related-portfolio");

                            relatedPortfolio.owlCarousel({
                                margin: 20,
                                nav: true,
                                dots:true,
                                autoplay: true,
                                autoplayHoverPause: true,
                                responsive:{
                                    0:{ items:1 },
                                    480:{ items:2 },
                                    768:{ items:3 },
                                    992: { items:4 }
                                }
                            });

                        });

                    </script>
                </div>

          </div>

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
                            <p>Email : hoteldelluna@hoteldelluna.co.kr</p>

                            <div class="line" style="margin: 30px 0;"></div>

                            <div class="col_half">
                                <div class="widget subscribe-widget clearfix">
                                   
                                    <div id="widget-subscribe-form-result" data-notify-type="success" data-notify-msg=""></div>
                                    <form id="widget-subscribe-form" action="include/subscribe.php" role="form" method="post" class="nobottommargin">
                                        <div class="input-group divcenter">                                            
                                            
                                            <span class="input-group-btn">
                                              
                                            </span>                                        </div>
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
                       <a href="https://www.facebook.com/" class="social-icon si-light si-small si-facebook">
                            	<i class="icon-facebook"></i>
                                <i class="icon-facebook"></i></a>
                            <a href="https://twitter.com/?lang=ko" class="social-icon si-light si-small si-twitter">
                                <i class="icon-twitter"></i>
                                <i class="icon-twitter"></i></a>
                            <a href="https://www.pinterest.co.kr/" class="social-icon si-light si-small si-pinterest">
                                <i class="icon-pinterest"></i>
                                <i class="icon-pinterest"></i></a>
                            <a href="https://plus.google.com/" class="social-icon si-light si-small si-gplus">
                                <i class="icon-gplus"></i>
                                <i class="icon-gplus"></i></a>
                            <a href="https://www.moakt.com/ko" class="social-icon si-light si-small si-email3">
                                <i class="icon-email3"></i>
                                <i class="icon-email3"></i></a>                   
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
     <script type="text/javascript" src="<c:url value="/resources/js/functions.js"/>"></script>

</body>
</html>