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
<!--  -->
    <!-- External JavaScripts
    ============================================= -->
	<script src="<c:url value='/resources/js/jquery.js'/>"> </script>
	<script src="<c:url value='/resources/js/plugins.js'/>"> </script>

    <!-- Document Title
    ============================================= -->
	<title> Hotel Delluna </title>
	<!-- google-font  
	====================================================
	 -->
	 <style>
	@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap&subset=korean');
	</style>
</head>

<!--  -->
<body class="stretched">

	<!-- Document Wrapper
    ============================================= -->
	<div id="wrapper" class="clearfix">

		<!-- Header
        ============================================= -->
		<header id="header" class="full-header">

			<div id="header-wrap">

				<div class="container clearfix">

					<div id="primary-menu-trigger">
						<i class="icon-reorder"></i>
					</div>

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
                            <li class="current"><a href="<c:url value="/hotel-About-Us"/>"><div>호텔소개</div></a>
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
        <section id="page-title" class="page-title-parallax" style="background-image: url('<c:url value="resources/images/hotel-about/main.jpg"/>'); padding: 120px 0;" data-stellar-background-ratio="0.3">
            <div class="container clearfix">
                <h1>호텔 델루나 소개</h1>
                <ol class="breadcrumb">
                    <li><a href="<c:url value="/"/>">홈</a></li>
                    <li class="active">호텔 델루나 소개</li>
                </ol>
            </div>

      	</section><!-- #page-title end -->

        <!-- Content
        ============================================= -->
        <section id="content">

            <div class="content-wrap bgcolor-grey-light">

                <div class="container clearfix">

                    <!-- Post Content
                    ============================================= -->
                    <div >
						
                        <!-- Posts
                        ============================================= -->
                        <div id="posts">

                            <div class="entry clearfix">
                             
                                <div class="entry-title">
                                    <h2><a href="<c:url value="/"/>">호텔 델루나</a></h2>
                                </div>
                                
                                <div class="entry-content">
                          
                                    <p>환상의 섬 제주도 중문단지에 위치한 호텔 델루나는 500개의 객실을 갖춘 한국 최고의 리조트 호텔입니다.
                                    <br>남아프리카의 리조트 호텔 ‘The Palace of the Lost City’를 모델로 설계되어 천혜의 제주 자연과 어우러진 이국적인 분위기를 느낄 수 있습니다.
                                    <br>8개의 레스토랑 및 라운지, 7개의 연회장을 구비해 대규모 국제행사와 세미나에 최적일 뿐만 아니라 4계절 온수풀, 헬로키티 캐릭터 룸 등 다양한 시설을 갖춰 가족과 연인들에게 사랑 받는 호텔입니다.</p>
                                    
                                   <!--  <a href="blog-single.html" class="more-link">Read More</a> -->
                                </div>
                                <div class="row">
                                <div class="col-md-6">
                                    <a href="<c:url value="/deluxe-1"/>">
                                    <img class="image_fade img-rounded img-responsive" src="<c:url value="/resources/images/hotel-about/accommodation.jpg"/>" alt="Standard Post with Image"></a>
                                    	<B>객실</B><br>
                                     	<strong>초고층 타워의 전 객실에서 서울의 환상적인 경관을 파노라믹뷰로 조망할 수 있습니다.</strong><br>
										- 여유로운 면적의 최고급 객실<br>
										- 세련미와 편안함이 어우러진 격조 높은 인테리어<br>
										- 최상의 평온함을 위한 Super-premium Bedding System (Simmons사 공동 개발)<br>
                              	  </div>
                              
                                <div class="col-md-6">
                                	<a href="<c:url value="/dining-1"/>">
                                    <img class="image_fade img-rounded img-responsive" src="<c:url value="/resources/images/hotel-about/dining.jpg"/>" alt="Standard Post with Image"></a>
                                    <B>다이닝</B><br>
                                     	<strong>호텔 델루나는 바다 위로 반짝이는 석양을 바라보며 즐기는 테라스 만찬, 한식부터 일식, 중식, 양식까지 호텔 셰프들이 직접 엄선한 최상의 식재료를 비롯하여 프리미엄 와인을 경험할 수 있는 레스토랑과 라운지를 갖추고 있습니다.</strong><br>
										- 세계 각국의 다양한 요리를 즐길 수 있는 야외 뷔페<br>				
                               		 </div>
                                 </div>
                                 
                                 <p>
                                <div class="row">
                                  <div class="col-md-6">
                                	<a href="<c:url value="/menu-item2"/>">
                                    <img class="image_fade img-rounded img-responsive" src="<c:url value="resources/images/hotel-about/meetings&banquets.jpg"/>" alt="Standard Post with Image"></a>
                                    <B>미팅&웨딩</B><br>
                                     	<strong>호텔 델루나는 대규모 국제 행사와 세미나, 컨퍼런스, 가족연회, 음악회, 각종 공연 등이 가능한 실내 외 연회장을 갖추고 있습니다.</strong><br>
										- 중문관광단지에서 가장 큰 규모의 연회장인 크리스탈 볼룸<br>
										- 야외 리셉션 장소 구비<br>
										- 첨단시설이 구비된 현대적인 비즈니스 회의실<br>
                                </div>
                                
                                <div class="col-md-6">
                                	<a href="<c:url value="/menu-item"/>">
                                    <img class="image_fade img-rounded img-responsive" src="<c:url value="/resources/images/hotel-about/facilities.jpg"/>" alt="Standard Post with Image"></a>
                                    <B>부대시설</B><br>
                                     	<strong>호텔 델루나는 제주의 자연과 더불어 최상의 휴식을 즐길 수 있는 다양한 공간과 아이들을 위한 특별한 즐거움이 마련되어 있습니다.</strong><br>
										- 로맨틱하고 환상적인 분위기의 사계절 럭셔리 야외 스파 & 가든 해온(he:on)<br>
										- 가족단위 여행객을 위한 어린이 멀티 체험 놀이공간, 키즈월드<br>
                               	  </div>
                                </div>
                         </div>
                	</div>
				</div>
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
                            <li><strong>호텔서비스</strong><br>00:00 ~ 24:00</li><br>
                            <li><strong>객실예약(주중)</strong><br>09:00 ~ 18:00</li><br>
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