<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="hpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <link rel="stylesheet" href="${hpath }/resources/css/style__museum.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <style>
         * { margin: 0; padding: 0; }
        body { width:100%; height: auto; } 
        .museum_wrap{width: 100%;}
        .museum_contents {width: 1290px; height: 1200px; margin: 50px auto;}
        hr{height: 2px; background-color: #333; margin: 10px auto; }

        .museum_wrap p{font-family: "Nanum Gothic", sans-serif; font-size: 13px; }
        .museum_contents p{ font-size: 30px; font-weight:bold;}
		
		 .museum_header{ width: 1980px; height: 600px; margin: 0px auto; background-image:url(${hpath}/resources/img/artimg/artbanner.jpg);
		 background-size: cover; /* Ensure the image covers the entire header */
		 background-position: center; /* Center the image */
		 background-repeat: no-repeat; /* Prevent the image from repeating */}
        
        footer a{font-family: "Nanum Gothic", sans-serif; font-weight:500 ;}
        footer p{font-family: "Nanum Gothic", sans-serif; font-size: 13px; }

        footer { width:100%; height: 250px; background-color: #1F1E2C; }
        .fc_wrap {position: relative;  width: 1290px; height: 180px;   margin: 0px auto;  margin-top: 20px; }
        footer .logo{position: absolute;  top:20px; width:200px; height: 150px; }
        footer .drop{position: absolute; right: 20px; bottom: 25px;  }

        .foot_menu {width:1000px; height:auto;   margin: auto; }
        .foot_menu ul{display: flex; margin-left: 100px; padding-top: 35px; }
        .foot_menu li{padding-left: 30px;}
        .foot_menu a{color: white;}

        .copyright{width: auto; margin-top: 70px;  height: auto;}
        .copyright p{color:#fff; padding-left: 270px;}
        
    </style>
</head>
<body>
    <%@include file="../header.jsp" %>
    <div class="museum_header" ></div>
    <div class="museum_wrap">
        <div class="museum_contents">
            <p class="contents_title">박물관 </p>
            <hr>
            <div class="container">
                <div class="card-column column-0">
                  <div class="card card-color-0">
                    <div class="border"></div>
                    <img src="${hpath }/resources/img/artimg/img1.jpg" alt="속초시립박물관" />
                    <h1>속초 시립 박물관</h1>
                  </div>
                  <div class="card card-color-2">
                    <div class="border"></div>
                    <img src="${hpath }/resources/img/artimg/img2.jpg" alt="국립산악박물관" />
                    <h1>국립산악 박물관</h1>
                  </div>
                </div>
                <div class="card-column column-1">
                  <div class="card card-color-1">
                    <div class="border"></div>
                    <img src="${hpath }/resources/img/artimg/img3.jpg" alt="석봉도자기 미술관" />
                    <h1>석봉도자기미술관</h1>
                  </div>
                  <div class="card card-color-3">
                    <div class="border"></div>
                    <img src="${hpath }/resources/img/artimg/img4.jpg" alt="뮤지엄엑스"/>
                    <h1>뮤지엄엑스</h1>
                  </div>
                </div>
              </div>
              <div id="cover" class="cover"></div>
              
              <div id="open-content" class="open-content">
                <a href="#" id="close-content" class="close-content"><span class="x-1"></span><span class="x-2"></span></a>
                <img id="open-content-image" src="" />
                <div class="text" id="open-content-text">
                </div>
              </div>
              <script  src="${hpath }/resources/js/script_museum.js"></script>
        </div>
    </div>
    <footer>
        <br>
        <hr>
        <div class="fc_wrap" >
            <a href =""><img src="${hpath }/resources/img/footer_logo.png" alt="속초속촉로고"  class="logo"> </a>
            <nav class="foot_menu">
                <ul>
                    <li><a href="">회원약관</a></li>
                    <li><a href="">개인정보처리방침</a></li>
                    <li><a href="">오시는길</a></li>
                </ul>
            </nav>
            <div class="copyright">
                <p class="addr"> [24826] 강원특별자치도 속초시 중앙로 183 속초시문화관광, 대표전화 : 033-639-2114 | FAX : 033-639-2330(평일 주간/야간 당직실, 공휴일)</p>
                <p class="copy">Copyright © Sokchosockchock All Rights Reserved.</p>
            </div>
            <div class="drop">
                <select name="sel" id="sel" onchange="locate()">
                    <option value="">해당 관광서</option>
                    <option value="https://www.sokcho.go.kr/">속초시청</option>
                    <option value="https://www.sokchotour.com/tour">그곳속초(속초관광)</option>
                    <option value="http://sokchocf.or.kr/sokchocf">속초문화관광재단</option>
                </select>
            </div>
            <script>
            function locate(){
                var sel = document.getElementById("sel");
                if(sel.value!=""){
                    window.open(sel.value);
                }
            }
            </script>
        </div>    
    </footer>
</body>
</html>