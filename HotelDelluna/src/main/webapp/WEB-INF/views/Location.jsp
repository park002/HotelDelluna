<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html dir="ltr" lang="UTF-8">
<head>
<!--  -->
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="description" content="Bootstrap 3 Website Template" />
	<meta name="viewport" content="initial-scale=1.0">
    <!-- Stylesheets
    ============================================= -->
    <link rel="icon" type="image/png" sizes="16x16" href="<c:url value='/resources/images/favicon/favicon-16x16.png' />">
	<link rel="icon" type="image/png" sizes="32x32" href="<c:url value='/resources/images/favicon/favicon-32x32.png'/>">
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
	<title>호텔 델루나 위치</title>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB2Pgbl1JjLRBLlmueNAGO5pfMsZzmFJ7U&callback=initMap" 
	async defer></script> <!--  -->
	<script>
		function initialize() { //맵을 초기화 해주기위한 함수 
	
			var Y_point = 33.248645;
			var X_point = 126.410565;	
			var zoomLevel = 18; // 지도의 확대 레벨 : 숫자가 클수록 확대정도가 큼

			var markerTitle	= "호텔 델루나"; // 현재 위치 마커에 마우스를 오버을때 나타나는 정보
			var markerMaxWidth	= 600; // 마커를 클릭했을때 나타나는 말풍선의 최대 크기
			
			// 말풍선 내용
			var contentString	= '<div>' +
			'<h2>호텔 델루나</h2>'+
			'<p>환상의 섬 제주도 중문단지에 위치한 호텔 델루나는 <br>500개의 객실을 갖춘 한국 최고의 리조트 호텔입니다.<br />' +
			'<a href="<c:url value="/"/>" target="_blank">http://www.HotalDelluna.co.kr</a>'
			'</div>';
		
			var myLatlng = new google.maps.LatLng(Y_point, X_point);
			var mapOptions = {
								zoom: zoomLevel,
								center: myLatlng,
								mapTypeId: google.maps.MapTypeId.ROADMAP
								
								/* 37.304800, 127.079497 */
								/*  mapTypeId 속성은 화면에 표시될 맵 타입을 정의합니다. 아래 나오는 맵 타입을 지원합니다:
										  - Roadmap(normal, default 2D map)
										  - Satellite(photographic map)
										  - Hybrid(photographic map + roads and city names)
										  - Terrain(map with mountains, rivers, etc.)
								*/
			}
			var map = new google.maps.Map(document.getElementById('google-map'), mapOptions); //새로운  맵 생성

			var marker = new google.maps.Marker({ //빨간색 마카는 어디에 둘건지 설정 
													position: myLatlng, // 어떤 위치에 있는가 
													map: map, // 맵에  이 마커가 어떤 지도안에 있는가 
													title: markerTitle //호텔 델루나
			});

			var infowindow = new google.maps.InfoWindow( //말풍선
														{
															content: contentString,
															maxWidth: markerMaxWidth
														}
			);

			google.maps.event.addListener(marker, 'click', function() {
				
				infowindow.open(map, marker);
			});
		}
	</script>

 
</head>

<body class="stretched" onload="initialize()">

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
        <section id="page-title" class="page-title-parallax" style="background-image: url('<c:url value="/resources/images/hotel-about/main.jpg"/>'); padding: 120px 0;" data-stellar-background-ratio="0.3">

            <div class="container clearfix" style="border-width:3px;">
                <h1>호텔 델루나 위치</h1>
                
                <ol class="breadcrumb">
                    <li><a href="<c:url value="/"/>">홈</a></li>
                    <li><a href="<c:url value="/hotel-About-Us"/>">호텔소개</a></li>
                    <li class="active">호텔 델루나 위치</li>
                </ol>
            </div>

   	  </section><!-- #page-title end -->
   	  <p>
   	  
   	  <div class="container clearfix">
		<div id="google-map" class="gmap">
            
           <!--  <div id="google-map"></div> -->
           </div>
            <p>
		<hr>
		  
		  <div class="container-fluid" style="background-color:#eeeeee; border:2px solid #E6E6E6">
		  
		   		<div class="col-md-12">
			   		<div class="col-md-6" >
			   		<p>
			   			<h3 class="text-center">호텔 델루나</h3>
			   		</div>
			   			<div class="col-md-6">
				   			<h6 style="margin-top:20px">제주특별자치도 서귀포시 중문관광로 72번길 35 호텔 델루나</h6>
				   			<div style="font-size:13pt;">
					   			<strong>TEL</strong>+82-64-731-1000
					   			<strong>FAX</strong>+82-64-738-7305
				   			</div>
			   			</div>
			   </div>
		   </div>
		   <p>
		   
		   <!-- 아코디온(Accordion) -->
		  <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingOne">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          	자동차로 오시는 길
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
       	<p> 택시 이용 시</p>
	
		공항청사 맞은편에 가장 가까이에 마련된 택시 대기장소에서 이용하시면 됩니다.<br>
		 중형이 대부분이나 일반택시와 요금이 같습니다.<br>
		단 공항에서 호텔까지의 요금이 정해져 있으므로 미리 확인하고 출발하는 것이 좋습니다.<br><br>
		
		<p>렌터카 이용 시</p>
		
		렌터카를 이용하는 경우 공항에서 인수할 수 있도록 미리 확인하는 것이 좋습니다.<br>
		공항 도착출구를 나오면 바로 렌터카 데스크와 제주관광협회에서 운영하는 관광안내 데스크를 만날 수 있습니다.<br>
		* 문의 : 제주관광협회 공항안내데스크 064-742-8866<br>
      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingTwo">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
          	공항 리무진 버스
        </a>
      </h4>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
      <div class="panel-body">
       	<p> 공항 리무진 Info.</p>
			<p>
			- 탑승장소: 국내선 5번 게이트로 나와서 오른쪽 공항리무진버스(삼영교통 600번) 승차장<br>
			- 소요시간: 약 50분<br>
			- 이용요금: 공항↔호텔 델루나 성인 : 4,500원(편도) / 중,고등 : 3,600원(편도) / 초등 : 2,300원(편도)<br>
			- 문의: 삼영교통 공항영업소(Tel 064-713-7000)<p>
			
			<p>제주국제공항→호텔 델루나</p>
			
			<p>- 운행시간: 06:20~22:00<br>
			- 운행간격: 매 15~18분 간격</p>
			
			<p>호텔 델루나 → 제주국제공항</p>
			
			<p>- 운행시간: 06:40~22:20<br>
			- 운행간격: 매회 약 20분 간격</p>
      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingThree">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
          	셔틀 버스
        </a>
      </h4>
    </div>
    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
      <div class="panel-body">
       	<p>호텔까지 편안한 이동 『무료 셔틀버스』<br>
		• 호텔 → 공항 (10:00, 13:00, 16:00)<br>
		• 공항 → 호텔 (11:20, 14:20, 17:20)</p>
		
		<p>※ 제주공항 출구 GATE 1번 출구, 대형버스 주차장 B구역 위치<br>
		※ 사전 예약제 운영 및 투숙객전용 무료 서비스<br>
		※ 예약 및 문의 ☎064.731.4343</p>
      </div>
    </div>
  </div>
</div>
	</div>

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