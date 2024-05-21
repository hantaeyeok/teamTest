<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>tour</title>
    <link rel="stylesheet" href="${path}/resources/css/toursubpage.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <script type="text/javascript" src="http://dmaps.daum.net/map_js_init/v3.js"></script>
	<script type="text/javascript" src="http://s1.daumcdn.net/svc/original/U03/cssjs/jquery/jquery-1.11.0.js"></script>
	<script type="text/javascript" src="http://s1.daumcdn.net/svc/original/U0301/cssjs/JSON-js/fc535e9cc8/json2.min.js"></script>
    <style>
      @charset "utf-8";

* { margin: 0; padding: 0; }
body { width:100%; overflow-x:hidden; }
a { text-decoration: none;}
.clr-fix { clear:both; }
.clr-fix:after { content:""; display:block; width:100%; clear:both;}
.wrap { position:relative; }
ul {list-style: none;}

/* header */
.hd_wrap {clear: both; width: 100%; position: relative;}
.banner {width: auto; height: 100%;}
#gnb {clear: both; width: 100%; position: absolute; z-index: 111;}
#gnb > .menu > li  { float:left; width: 14.28571428571429%;  text-align: center; } 
#gnb a.dp1 { background-color:rgba(16, 29, 99, 0.2); display:block; line-height: 50px; height: 50px;  color:#fff;} 
#gnb a.dp2 {color: white; font-weight: 300px;} 

#gnb .sub {display: none; line-height: 50px; background-color: rgba(9, 5, 31, 0.562);}
#gnb:hover .menu .sub {display: block;}
#gnb .menu li:hover .sub {background-color: #fff; }
#gnb .menu li:hover a.dp2 {color: black; font-weight: 500px;}



#gnb2 {display: none; }
#gnb2 {clear: both; width: 100%; position: fixed; z-index: 111;}
#gnb2 > .menu > li  { float:left; width: 14.28571428571429%;  text-align: center; } 
#gnb2 a.dp1 { background-color:#fff; display:block; line-height: 50px; height: 50px;  color:black;} 

#gnb2 li:hover a.dp1 {background-color: rgba(0, 255, 255, 0.13);}
#gnb2 .sub {display: none;}
#gnb2:hover .menu .sub {display: block;}
#gnb2 .menu li:hover .sub {background-color: #ccc;}

/* contents */
#contents { width: 100%;}
.page { clear:both; width: 100%; height: auto; margin: 0 auto;}
.page:after { content:""; display:block; width:100%; clear:both; }
.page_title { text-align: center; padding: 1em; float: left;}
.page_wrap { clear:both; width: 1280px; margin: 0 auto; }

#page1 {width: 1280px; background-color: white; z-index: 0; height: auto;}
#vs { clear:both; width: 1930px; height: 600px; overflow:hidden; position:relative; margin: 0 auto;}
#vs img { display:block; width: 100%;  height: 100%; position:absolute;  z-index: 0px;}
.pagepage {width: 100% ; height: 2000px; background-color: #ccc;} 


#page2 {width: 1280px; padding-bottom: 2rem;}


/* breadcrumb */
/* border-bottom:2px solid #777;border-top:2px solid #777; */
.breadcrumb { clear:both;  padding-top: 24px; padding-bottom: 24px; text-align: right; box-sizing:border-box;  padding-right: 40px;   }
.breadcrumb p * { padding:0px 7px; color: #333; font-weight:bold; }
.breadcrumb p a:after { content:">"; padding-left: 14px; }

/* sidemenu */
.sidemenu {float: left; width: 250px; height: 600px; margin: 0 auto; }
.sidemenuli {width: 250px; height: 60px; margin-top: 20px; border: 2px solid #ccc; text-align: center; line-height: 53px; border-radius: 10px; font-size: x-large; font-weight: 500;} 
.sidemenuli:hover {background-color: #247bdf;}

/* festivalinfo */
.festivalinfo{float: right; width: 900px; height: auto; margin: 0 auto;  margin-right: 65px; margin-top: 20px;} 
#festivalinfo {width: 100%; height: 500px;}
.mySlides {width: 100%; height: 100%;}


/*mapdiv */
.mapdiv {width: 800px; height: 600px; margin: 0 auto; margin-top: 50px; margin-bottom: 50px;}

/* textinfo */
.textinfo {width: 800px; height: auto; border: 1px solid #333; margin: 0 auto; margin-top: 50px; border-radius: 20px;
 text-align: left; line-height: 50px;
}

/* footer */
#ft a{font-family: "Nanum Gothic", sans-serif; font-weight:500 ;}
#ft p{font-family: "Nanum Gothic", sans-serif; font-size: 13px; }


#ft{ width:100%; height: auto; background-color: #1F1E2C; }
.fc_wrap {position: relative;  width: 1290px; height: 180px;  margin : auto;  }
.logo{position: absolute;  top:-20px; width:200px; height: 150px; }

.foot_menu {width:1000px; height:auto;   margin: 0 auto; }
.foot_menu ul{display: flex; margin-left: 100px; margin-top: 35px; }
.foot_menu li{padding-left: 30px;}
.foot_menu a{color: white;}


.copyright{width: auto; margin-top: 70px;  height: auto;}
.copyright p{color:#fff; padding-left: 270px;}

.drop{position: absolute; right: 20px; bottom: 70px;  }

        </style>

</head>
<body>
   <%@ include file="/WEB-INF/views/header.jsp" %> 
    <main id="contents" class="clr-fix">
        <figure id="vs">
            <img class="backimg" src="${path}/resources/img/back01.jpg" alt="배경이미지">
        </figure>
        <section>
            <div class="breadcrumb">
                <p>
                    <a href="">홈</a><a href="">관광명소</a><span>속초8경</span>
                </p>
            </div>
        </section>
        <hr>

        <section class="page" id="page1">
            <h2 class="page_title">속초 8경</h2>
            <div class="page_wrap">
                <div class="sidemenu">
                    <ul>
                        <li class="sidemenuli sidemenuli1"><a href="" class="sidemenulia">속초1경<span class="material-symbols-outlined" style="float: right;">add</span></a></li>
                        <li class="sidemenuli sidemenuli2"><a href="" class="sidemenulia">속초2경<span class="material-symbols-outlined" style="float: right;">add</span></a></li>
                        <li class="sidemenuli sidemenuli3"><a href="" class="sidemenulia">속초3경<span class="material-symbols-outlined" style="float: right;">add</span></a></li>
                        <li class="sidemenuli sidemenuli4"><a href="" class="sidemenulia">속초4경<span class="material-symbols-outlined" style="float: right;">add</span></a></li>
                        <li class="sidemenuli sidemenuli5"><a href="" class="sidemenulia">속초5경<span class="material-symbols-outlined" style="float: right;">add</span></a></li>
                        <li class="sidemenuli sidemenuli6"><a href="" class="sidemenulia">속초6경<span class="material-symbols-outlined" style="float: right;">add</span></a></li>
                        <li class="sidemenuli sidemenuli7"><a href="" class="sidemenulia">속초7경<span class="material-symbols-outlined" style="float: right;">add</span></a></li>
                        <li class="sidemenuli sidemenuli8"><a href="" class="sidemenulia">속초8경<span class="material-symbols-outlined" style="float: right;">add</span></a></li>
                    </ul>
                </div>
                <div class="festivalinfo">
                    <div class="w3-content w3-display-container" id="festivalinfo">
                        <img class="mySlides" src="${path}/resources/img/back01.jpg" >
                        <img class="mySlides" src="${path}/resources/img/back02.jpg" >
                        <img class="mySlides" src="${path}/resources/img/back03.png" >
                        <img class="mySlides" src="${path}/resources/img/back04.png" >
                      
                        <button class="w3-button w3-black w3-display-left" onclick="plusDivs(-1)">&#10094;</button>
                        <button class="w3-button w3-black w3-display-right" onclick="plusDivs(1)">&#10095;</button>
                      </div>
                      <script>
                      var slideIndex = 1;
                      showDivs(slideIndex);
                      
                      function plusDivs(n) {
                        showDivs(slideIndex += n);
                      }
                      
                      function showDivs(n) {
                        var i;
                        var x = document.getElementsByClassName("mySlides");
                        if (n > x.length) {slideIndex = 1}
                        if (n < 1) {slideIndex = x.length}
                        for (i = 0; i < x.length; i++) {
                          x[i].style.display = "none";  
                        }
                        x[slideIndex-1].style.display = "block";  
                      }
                      </script>
                      <div class="textinfo">
                        <p class="textifop"><span class="material-symbols-outlined" >map</span> 주소</p>
                            <p>adsfasdfasdfsadfsadfsadfsadfsadfsadfsad</p>                     
                        <p class="textifop"><span class="material-symbols-outlined">auto_stories</span> 내용</p>
                            <p>adsfasdfasdfsadfsadfsadfsadfsadfsadfsad</p>
                        <p class="textifop"><span class="material-symbols-outlined">new_window</span> ?</p>
                            <p>adsfasdfasdfsadfsadfsadfsadfsadfsadfsad</p>
                      </div>
                      <div class="mapdiv" >
                        <div id="map" style="width:800px;height:600px; background:white; ">
                        </div>
                        <script>
                        var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
                            mapOption = { 
                                center: new daum.maps.LatLng(37.5679212,126.9830358), // 지도의 중심좌표
                                level: 3 // 지도의 확대 레벨
                            };
                        
                        var map = new daum.maps.Map(mapContainer, mapOption);
                        
                        // 마커가 표시될 위치입니다 
                        var markerPosition  = new daum.maps.LatLng(37.5679212,126.9830358); 
                        
                        // 마커를 생성합니다
                        var marker = new daum.maps.Marker({
                            position: markerPosition
                        });
                        
                        // 마커가 지도 위에 표시되도록 설정합니다
                        marker.setMap(map);
                        
                        var iwContent = '<div style="padding:5px;">현재위치 <br><a href="" style="color:blue" target="_blank"></a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
                            iwPosition = new daum.maps.LatLng(37.5679212,126.9830358); //인포윈도우 표시 위치입니다
                        
                        // 인포윈도우를 생성합니다
                        var infowindow = new daum.maps.InfoWindow({
                            position : iwPosition, 
                            content : iwContent 
                        });
                          
                        // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
                        infowindow.open(map, marker);
                        </script>
                        <script type="text/javascript" src="http://m1.daumcdn.net/tiara/js/td.min.js"></script>
                        <script type="text/javascript">
                        var _tiq = 'undefined' !== typeof _tiq ? _tiq : [];
                            window._tiq = _tiq;
                            _tiq.push(['__trackPageview']);
                        </script>
                        <script type="text/javascript" src="http://s1.daumcdn.net/svc/attach/U03/cssjs/mapapidoc/1421136453605/service.min.js">
                        </script>
                    </div>
                    </div>

              
            </div>
        </section>
    </main>
    <%@ include file="/WEB-INF/views/footer.jsp" %>   
</body>
</html>