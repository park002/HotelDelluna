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
        <section id="page-title" class="page-title-parallax" style="background-image: url('<c:url value="/resources/images/favicon/onsu.jpg"/>'); 
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
                        <img src="<c:url value="/resources/images/favicon/menu-item.jpg"/>" alt="" width="300" height="430">                     
                    </div><!-- .portfolio-single-image end -->

                    <!-- Portfolio Single Content
                    ============================================= -->
                    <div class="col_one_third portfolio-single-content col_last nobottommargin">

                        <!-- Portfolio Single - Description
                        ============================================= -->
                        <div class="fancy-title title-bottom-border">
                            <h1>사계절 온수풀 해온</h1>
                        </div>
                        <p>오감만족 힐링, 사계절 따뜻한 호텔 델루나 제주 럭셔리 스파&가든 해온(海溫). 바다 해(海)와 따뜻할 온(溫)을 품은 이름처럼, 제주의 자연을 그대로 
                       닮은 사계절 온수풀입니다. </p>별빛이 쏟아지는 제주의 밤하늘 아래 즐기는 따뜻한 스타리 나이트 스위밍, 그리고 제주의 자연과 완벽한 조화를 이룬 이국적인 정원에서의 산책은 당신이 꿈꿔온 천상의 휴식을 선사합니다.</p>
                       
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
						<b>타입</b> Spa & Garden <br>
						<b>위치</b>   Garden 1F <br>
						<b>이용시간</b><br>
						   09:00 ~ 23:00 (5월~10월)  <br>
						09:30 ~ 23:00 (11월~4월)
						<p>
						
						                                <h2 id="comments-title2">추가 정보 </h2>
						
						<b>• 해온 시설 안내</b><br>
						
						[ 해온(he:on)스파 - 사계절 온수풀 해온(海溫)에서 즐기는 따뜻한 물놀이 ]<br>
						- 온 몸을 감싸는 ‘해온(海溫)’의 따스함이 전하는 로맨틱한 낭만!<br>
						- 해온은 29~32℃의 따뜻한 수온을 유지하고 있어 365일 신나는 물놀이를 즐길 수 있습니다.<p>
						
						[ 해온(he:on) 힐링 자쿠지 ]<br>
						- 모락모락 훈기가 올라오는 힐링 자쿠지는 수온 35~38℃를 유지하며 해온 곳곳에 마련되어있어 여유로운 스파를 즐길 수 있습니다.<br> 
						
						[ 해온(he:on) 키즈풀 ]<br>
						- 아이들이 마음껏 뛰어 놀 수 있는 어린이용 수영장, 워터 슬라이드, LED 바닥분수로 구성된 안전한 키즈풀<br>
						
						[ 카페 해온 ]
						- 수영을 즐기며 가볍게 즐길 수 있는 스낵과 음료를 제공합니다. 
						
						<p>
						
						<b>• 해온 이용 안내</b><br>
						[ 안전 ]
						- 130cm 이하 어린이는 반드시 구명조끼 착용과 보호자 동반 시 입장이 가능합니다.<br>
						- 기상 상황에 따라 사전 고지가 없이 이용이 제한될 수 있습니다. <br>
						- 귀중품은 객실 내 보관 또는 해온 데스크 귀중품 보관함에 보관해 주십시오.<br>
						- 온수풀 근처가 미끄러우니 뛰어다니거나 다이빙 등의 행동은 주의해 주시기 바랍니다. <br>
						- 고객님들의 안전을 위해 라이프 가드의 지시에 따라 주시기 바랍니다. <br>
						
						[ 장비 ]<br>
						- 지름 1m 이내 사이즈의 수중 장비만 반입 및 사용 가능합니다.<br>
						- 핀(오리발), 1m 이상 튜브(플라밍고, 돌고래형, 베드형), 스노쿨링, 지붕있는 튜브, 킥판, 아쿠아 슈즈는 사용이 불가합니다.<br>
						- 어린이 고객을 위한 구명조끼가 비치되어 있습니다. (4~6세용)<br>
						
						[ 복장 ]<br>
						- 수영복(비치웨어 또는 래쉬가드) 착용 시에만 이용하실 수 있습니다.<br>
						- 영유아 고객은 방수 기저귀 착용을 부탁드립니다.<br>
						
						[ 에티켓 ]<br>
						- 청결한 수질 관리를 위해 샤워 후 입수 부탁드립니다. <br>
						- 선탠 오일 등의 태닝 제품을 바르신 경우에는 이용이 제한될 수 있습니다.<br>
						- 아쿠아슈즈는 안전, 위생상 수영장 내에서 착용이 불가합니다. <br>
						
						[ 식음료 ]<br>
						- 외부 식음료 반입은 금지되어 있습니다.<br>
						- 특정 음식에 대한 알레르기가 있는 경우, 식음료 주문 전 직원에게 알려주시기 바랍니다. <br>
						<p>
						
						<b>• 해온 물교체 및 대청소 기간 : 2020년 1월 22일(수) ~ 23일(목) (2일간)</b><br>
						해당 기간동안 해온 풀 이용이 제한되오니, 참고해 주시기 바랍니다.<br>
						
						<b>• 키즈 워터 슬라이드 운영 안내</b><br>
						- 기간: 매일 　<br>
						- 대상: 10세 이하 어린이 (120cm 이하)<br>
						- 시간: 10:00~11:30 / 13:00~14:30 / 16:00~17:30<br>
						
						<b>• 자연을 생각하는 델루나 호텔 「Think Nature」</b> <br>
						- 환경 보호 운동의 일환으로 야외 수영장 타올, 가운 수량이 제한됩니다.<br>
						- 타올은 1회에 한하여 객실당 최대 3장이 제공되며, 타올 추가 시 1장당 5,000원 요금이 부과됩니다. <br>
						- 동절기 가운은 1회에 한하여 객실당 최대 3개가 제공되며, 가운 추가 시 1개당 5,000원 요금이 부과됩니다. <br>
						(동절기 가운 제공기간 : 2019년 11월 1일 ~ 2020년 3월 31일)<br>
						- 사용하신 타올과 가운은 다음 고객님들을 위해 데스크 또는 타올 수거함에 반납하여 주시기 바랍니다. <br>
						
						<b>• 시그니처 튜브 「해온 스위밍 쿠션」 판매</b> <br>
						- 판매장소: 해온 데스크(1F) <br>
						- 가격: 12,000원<br>
						
						<b>• 수영용품 판매 안내</b><br>
						- 수영복 : 남성 8-9만원대 / 여성 13-18만원대 / 어린이 7-10만원대<br>
						- 수경 : 성인 39,000원 / 어린이 29,000원<br>
						- 수모 : 19,000원<br>
						- 튜브 : 성인 30,000원 / 어린이 2-4만원대<br>
						- 방수팩 : 23,000원<br>
						- 판매장소 : 기프트샵 (본관 8F)<br>
						
						<b>• 데이베드 유료 운영</b><br>
						2019년 6월초부터 10월말까지 고객님께 더욱 여유롭고 품격 있는 서비스를 제공하기 위해 2인용 데이베드를 유료 운영합니다.<br>
						- 위치 : 해온 풀사이드<br>
						- 시간 : 09:00 ~ 23:00 <br>
						- 요금 : 22,000원 / 1회 (3시간 기준) <br>
						<p>
						
						<h2>문의안내</h2>
						<b>TEL +82-1234-1234 </b><br>
						<b>※ </b>사계절 온수풀 해온은 호텔 투숙객 전용으로 운영되고 있습니다. <br>
						<b>※ </b>어린이는 키즈풀 이용을 권장하며, 반드시 보호자 동반을 부탁드립니다. <br>
						<b>※ </b>귀중품은 객실에 보관해 주시기 바랍니다.<br>
						<b>※ </b>고객님의 안전을 위하여 상기의 해온 이용 규정을 준수해 주시기 바랍니다. <br>

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
                                    <a href="portfolio-single.html"><img src="<c:url value="/resources/images/favicon/onsu.jpg"/>" alt=""></a>
                                	<div class="portfolio-overlay">
                                    	<a href="<c:url value="/resources/images/favicon/onsu.jpg"/>" class="left-icon" data-lightbox="image">
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
                                    <a href="portfolio-single.html"><img src="<c:url value="/resources/images/favicon/onsu2.jpg"/>" alt=""></a>
                                    <div class="portfolio-overlay">
                                    	<a href="<c:url value="/resources/images/favicon/onsu2.jpg"/>" class="left-icon" data-lightbox="image"><i class="icon-picture"></i></a>
                                                                    
                                    </div>
                                </div>
                      
                        	</div>
                        </div>
                        
                        <div class="oc-item">
                            <div class="iportfolio">
                                <div class="portfolio-image">
                                    <a href="portfolio-single.html"><img src="<c:url value="/resources/images/favicon/onsu3.jpg"/>" alt=""></a>
                                    <div class="portfolio-overlay">
                                        <a href="<c:url value="/resources/images/favicon/onsu3.jpg"/>" class="left-icon" data-lightbox="image"><i class="icon-picture"></i></a>
                                                            
                                    </div>
                                </div>
                                <div class="portfolio-desc">
                                       
                                </div>
                            </div>
                        </div>
                        
                       
                        <div class="oc-item">
                            <div class="iportfolio">
                                <div class="portfolio-image">
                                    <a href="portfolio-single.html"><img src="<c:url value="/resources/images/favicon/onsu4.jpg"/>" alt=""></a>
                                    <div class="portfolio-overlay">
                                        <a href="<c:url value="/resources/images/favicon/onsu4.jpg"/>" class="left-icon" data-lightbox="image"><i class="icon-picture"></i></a>
                                                                   
                                    </div>
                                </div>
                            
                            </div>
                        </div>
                        
                        <div class="oc-item">
                            <div class="iportfolio">
                                <div class="portfolio-image">
                                    <a href="portfolio-single.html"><img src="<c:url value="/resources/images/favicon/onsu6.jpg"/>" alt=""></a>
                                    <div class="portfolio-overlay">
                                        <a href="<c:url value="/resources/images/favicon/onsu6.jpg"/>" class="left-icon" data-lightbox="image"><i class="icon-picture"></i></a>
                                                            
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