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
	<link rel="stylesheet"href="<c:url value='/resources/css/responsive.css'/>"  type="text/css" />
	<link rel="stylesheet"  type="text/css" href="https://unpkg.com/vue-airbnb-style-datepicker@latest/dist/vue-airbnb-style-datepicker.min.css" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
	<script src="<c:url value='/resources/js/jquery.js'/>"> </script>
	<script src="<c:url value='/resources/js/plugins.js'/>"> </script>

    <!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
    <script type="text/javascript" src="<c:url value='/resources/include/rs-plugin/js/jquery.themepunch.tools.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/resources/include/rs-plugin/js/jquery.themepunch.revolution.min.js' />"></script>
	
 
	
    <!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
    <link rel="stylesheet" type="text/css" href="<c:url value='/resources/include/rs-plugin/css/settings.css'/>" media="screen" />

    <!-- Document Title
    ============================================= -->
	<title>Hotel Delluna</title>

    <style>

        .revo-slider-emphasis-text {
            font-size: 70px;
            font-weight: 700;
            letter-spacing: 0px;
            padding: 15px 20px;
            border-top: 2px solid #FFF;
            border-bottom: 2px solid #FFF;
        }

        .revo-slider-desc-text {
            font-size: 26px;
            width: 650px;
            text-align: center;
            line-height: 1.5;
        }

        .revo-slider-caps-text {
            font-size: 30px;
            font-weight: 400;
        }
		
		.tparrows.preview2 .tp-arr-titleholder {
			text-transform: uppercase;
			font-weight:bold;
		}

    </style>
</head>

<body class="stretched">

    <!-- Document Wrapper
    ============================================= -->
    <div id="wrapper" class="clearfix">
    
        <!-- Header
        ============================================= -->
        <header id="header">

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
                            <li class="current"><a href="#" onclick="return false;"><div>호텔소개</div></a>
                                        <ul>                                
                                    		<li><a href="hotel-About-Us.html"><div>호텔소개</div></a></li>
                                    		<li><a href="Location.html"><div>호텔위치</div></a></li>
                                    		<li><a href="<c:url value='/notice/NoticeList'/>"><div>공지사항</div></a></li>
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

        <section id="slider" class="slider-parallax revoslider-wrap clearfix">

            <!--
            #################################
                - Revolution Slider -
            #################################
            -->
            <div class="tp-banner-container">
                <div class="tp-banner" >
                	<ul>    
                    
                    <!-- 메인 슬라이드 부분  -->
                    <li data-transition="fade" data-slotamount="1" data-masterspeed="1000" data-thumb="" data-saveperformance="off" data-title="">
                        <img src="<c:url value='/resources/images/logo/mainslide.jpg'/>" alt="" data-bgposition="left top" data-kenburns="on" data-duration="10000" data-ease="Linear.easeNone" data-bgfit="130" data-bgfitend="100" data-bgpositionend="right bottom">

                        <div class="tp-caption customin ltl tp-resizeme revo-slider-caps-text uppercase"
                        data-x="340"
                        data-y="235"
                        data-customin="x:0;y:150;z:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                        data-speed="800"
                        data-start="1000"
                        data-easing="easeOutQuad"
                        data-splitin="none"
                        data-splitout="none"
                        data-elementdelay="0.01"
                        data-endelementdelay="0.1"
                        data-endspeed="1000"
                        data-endeasing="Power4.easeIn" style="z-index: 3; color:#FFF"></div>

                        <div class="tp-caption customin ltl tp-resizeme revo-slider-emphasis-text nopadding noborder uppercase"
                        data-x="190"
                        data-y="280"
                        data-customin="x:0;y:150;z:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                        data-speed="800"
                        data-start="1200"
                        data-easing="easeOutQuad"
                        data-splitin="none"
                        data-splitout="none"
                        data-elementdelay="0.01"
                        data-endelementdelay="0.1"
                        data-endspeed="1000"
                        data-endeasing="Power4.easeIn" style="z-index: 3; color:#FFF"><span style="color:#EAAF22"></span></div>

                        <div class="tp-caption customin ltl tp-resizeme revo-slider-desc-text"
                        data-x="200"
                        data-y="390"
                        data-customin="x:0;y:150;z:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                        data-speed="800"
                        data-start="1400"
                        data-easing="easeOutQuad"
                        data-splitin="none"
                        data-splitout="none"
                        data-elementdelay="0.01"
                        data-endelementdelay="0.1"
                        data-endspeed="1000"
                        data-endeasing="Power4.easeIn" style="z-index: 3; width: 750px; max-width: 750px; white-space: normal; color:#FFF"></div>
                    </li>
                    <!-- END SLIDE  -->
                    
                    <!-- SLIDE  -->
                    <li data-transition="slideup" data-slotamount="1" data-masterspeed="1000" data-thumb="" data-fstransition="fade" data-fsmasterspeed="1000" data-fsslotamount="7" data-saveperformance="off"  data-title="">
                        <img src="<c:url value='/resources/images/logo/mainslide2.jpg'/>" alt="" data-bgposition="left top" data-kenburns="on" data-duration="10000" data-ease="Linear.easeNone" data-bgfit="130" data-bgfitend="100" data-bgpositionend="right bottom">

                        <div class="tp-caption customin ltl tp-resizeme revo-slider-caps-text"
                        data-x="200"
                        data-y="170"
                        data-customin="x:0;y:150;z:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                        data-speed="800"
                        data-start="1200"
                        data-easing="easeOutQuad"
                        data-splitin="none"
                        data-splitout="none"
                        data-elementdelay="0.01"
                        data-endelementdelay="0.1"
                        data-endspeed="1000"
                        data-endeasing="Power4.easeIn" style="z-index: 11; color: #222;"></div>

                        <div class="tp-caption customin ltl tp-resizeme revo-slider-emphasis-text nopadding noborder uppercase"
                        data-x="197"
                        data-y="210"
                        data-customin="x:5;y:0;z:0;rotationZ:0;scaleX:1;scaleY:1;skewX:5;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                        data-speed="800"
                        data-start="1400"
                        data-easing="easeOutQuad"
                        data-splitin="chars"
                        data-splitout="none"
                        data-elementdelay="0.1"
                        data-endelementdelay="0.1"
                        data-endspeed="1000"
                        data-endeasing="Power4.easeIn" style="z-index: 11; font-size: 56px; color: #222;"></div>

                        <div class="tp-caption customin ltl tp-resizeme revo-slider-desc-text tleft"
                        data-x="200"
                        data-y="310"
                        data-customin="x:0;y:150;z:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                        data-speed="800"
                        data-start="1600"
                        data-easing="easeOutQuad"
                        data-splitin="none"
                        data-splitout="none"
                        data-elementdelay="0.01"
                        data-endelementdelay="0.1"
                        data-endspeed="1000"
                        data-endeasing="Power4.easeIn" style="z-index: 11; max-width: 550px; white-space: normal; color: #222;"></div>

                    </li>
                    <!-- END SLIDE  -->
                   
                    <!-- SLIDE  -->
                    <li data-transition="slideup" data-slotamount="1" data-masterspeed="1500" data-thumb="" data-delay="10000" data-saveperformance="off"  data-title="">
                    <img src="<c:url value='/resources/images/logo/mainslide3.jpg' />" alt="" data-bgposition="left top" data-kenburns="on" data-duration="10000" data-ease="Linear.easeNone" data-bgfit="130" data-bgfitend="100" data-bgpositionend="right bottom">

                    <div class="tp-caption customin ltl tp-resizeme revo-slider-caps-text uppercase"
                    data-x="200"
                    data-y="200"
                    data-customin="x:-200;y:0;z:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                    data-speed="800"
                    data-start="1500"
                    data-easing="easeOutQuad"
                    data-splitin="none"
                    data-splitout="none"
                    data-elementdelay="0.01"
                    data-endelementdelay="0.1"
                    data-endspeed="1000"
                    data-endeasing="Power4.easeIn" style="z-index: 3; color: #FFF;"></div>

                    <div class="tp-caption customin ltl tp-resizeme revo-slider-emphasis-text nopadding noborder"
                    data-x="197"
                    data-y="240"
                    data-customin="x:10;y:0;z:0;rotationY:120;rotationZ:0;scaleX:0.8;scaleY:0.8;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 50%;"
                    data-speed="300"
                    data-start="1700"
                    data-easing="easeOutQuad"
                    data-splitin="chars"
                    data-splitout="none"
                    data-elementdelay="0.1"
                    data-endelementdelay="0.1"
                    data-endspeed="1000"
                    data-endeasing="Power4.easeIn" style="z-index: 3; color: #FFF; line-height: 1.2; max-width: 450px; width: 450px; white-space: normal;"></div>
                    
                </li>
                <!-- END SLIDE  -->
                
                </ul>

                </div>
            </div>

            <script type="text/javascript">

                var tpj=jQuery;
                tpj.noConflict();

                tpj(document).ready(function() {

                    var apiRevoSlider = tpj('.tp-banner').show().revolution(
                    {
                        dottedOverlay:"none",
                        delay:9000,
                        startwidth:1140,
                        startheight:700,
                        hideThumbs:200,

                        thumbWidth:100,
                        thumbHeight:50,
                        thumbAmount:3,

                        navigationType:"none",
                        navigationArrows:"solo",
                        navigationStyle:"preview2",

                        touchenabled:"on",
                        onHoverStop:"on",

                        swipe_velocity: 0.7,
                        swipe_min_touches: 1,
                        swipe_max_touches: 1,
                        drag_block_vertical: false,


                        parallax:"mouse",
                        parallaxBgFreeze:"on",
                        parallaxLevels:[8,7,6,5,4,3,2,1],
                        parallaxDisableOnMobile:"on",


                        keyboardNavigation:"on",

                        navigationHAlign:"center",

                        navigationVAlign:"bottom",
                        navigationHOffset:0,
                        navigationVOffset:20,

                        soloArrowLeftHalign:"left",
                        soloArrowLeftValign:"center",
                        soloArrowLeftHOffset:20,
                        soloArrowLeftVOffset:0,

                        soloArrowRightHalign:"right",
                        soloArrowRightValign:"center",
                        soloArrowRightHOffset:20,
                        soloArrowRightVOffset:0,

                        shadow:0,
                        fullWidth:"off",
                        fullScreen:"off",

                        spinner:"spinner0",

                        stopLoop:"off",
                        stopAfterLoops:-1,
                        stopAtSlide:-1,

                        shuffle:"off",


                        forceFullWidth:"off",
                        fullScreenAlignForce:"off",
                        minFullScreenHeight:"400",

                        hideThumbsOnMobile:"on",
                        hideNavDelayOnMobile:1500,
                        hideBulletsOnMobile:"on",
                        hideArrowsOnMobile:"on",
                        hideThumbsUnderResolution:0,

                        hideSliderAtLimit:0,
                        hideCaptionAtLimit:0,
                        hideAllCaptionAtLilmit:0,
                        startWithSlide:0,
                        fullScreenOffsetContainer: ".header"
                    });

                }); //ready

            </script>

            <!-- END REVOLUTION SLIDER -->

        </section>

        <!-- Content
        ============================================= -->
              
          		<div class="section bgcolor-grey-light notopmargin noborder nobottommargin">
                    <div class="container clearfix">
                        <div class="col_half nobottommargin center">
                            <img src="<c:url value='/resources/images/logo/mainpanorama.PNG' />" alt="" data-animate="fadeInUp">
                        </div>
                        <div class="col_half nobottommargin col_last">
                            <div class="heading-block" style="padding-top: 40px;">
                                <h3 data-animate="fadeInDown">DINING</h3>
                                <span data-animate="fadeInUp">Panorama ( All day Dining )</span>
                            </div>
                            <p>국내 최초 270˚파노라마 뷰를 조망할 수 있는<br> 자연 속 레스토랑 올 데이 다이닝 ‘파노라마 (Panorama)’에서는
							<p>엄선된 재료로 정성스럽게 만들어진 조식 뷔페 부터 다채로운 디너까지 다양한 메뉴의 올 데이 다이닝을 사랑하는 사람들과 함께 즐기실 수 있습니다.</p>
                            <a href="dining-1.html" class="btn btn-primary" role="button">자세히 보기</a>
                    </div>
           	  </div>
           	  
           	            		<div class="section bgcolor-grey-light notopmargin noborder nobottommargin">
                    <div class="container clearfix">
                        <div class="col_half nobottommargin center">
                            <img src="<c:url value='/resources/images/logo/mainheon.PNG' />" alt="" data-animate="fadeInUp">
                        </div>
                        <div class="col_half nobottommargin col_last">
                            <div class="heading-block" style="padding-top: 40px;">
                                <h3 data-animate="fadeInDown">FACILITIES</h3>
                                <span data-animate="fadeInUp">All-season Outdoor Spa Pool He:on</span>
                            </div>
                            <p>오감만족 힐링, 사계절 따뜻한 롯데호텔제주 럭셔리 스파, 가든 해온(海溫).
                            <p>바다 해(海)와 따뜻할 온(溫)을 품은 이름처럼,<br>제주의 자연을 그대로 닮은 사계절 온수풀입니다.</p>
                            <a href="menu-item.jsp" class="btn btn-primary" role="button">자세히 보기</a>
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
                            <a href="#">공지사항</a> <a href="hotel-About-Us.html">호텔소개</a> <a href="deluxe-1.html">객실</a> <a href="<c:url value='/reservation/ReservationSelect'/>">예약조회 및 취소</a> <a href="contact-1.jsp">고객의 소리</a>
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