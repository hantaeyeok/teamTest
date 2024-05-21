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
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet">     
    <style>
       * { margin: 0; padding: 0; }
        body,html{width:100%; height:auto; overflow-x: hidden;}
        ul {list-style:none;}
        a{text-decoration: none;}
        .art_wrap{width: 100%;}
        .art_header{ width: 1290px; height: 600px; margin: 0px auto;}
        .art_contents {width: 1290px; height: auto; margin: 50px auto;}
        hr{height: 2px; background-color: #333; margin: 10px auto; }

        .art_wrap p{font-family: "Nanum Gothic", sans-serif; font-size: 13px; }
        .art_contents p{ font-size: 30px; font-weight:bold;}

        /* imgstyle */
        .card-image {
            display: block;
            min-height: 20rem; /* layout hack */
            background: #fff center center no-repeat;
            background-size: cover;/
        }

        .card-image > img {
            display: block;
            width: 100%;
            
        }

        .card-image.is-loaded {
            filter: none; /* remove the blur on fullres image */
            transition: filter 1s;
        }




        /* Card Layout Styles */

        .card-list {
            display:inline-block;
            width: 400px;
            margin: 30px auto;
            padding: 0;
            font-size: 0;
            text-align: center;
            list-style: none;
        }

        .card {
            
            display: inline-block;
            max-width: 20rem;
            margin: 1rem;
            font-size: 1rem;
            text-decoration: none;
            overflow: hidden;
            box-shadow: 0 0 3rem -1rem rgba(0,0,0,0.5);
            transition: transform 0.1s ease-in-out, box-shadow 0.1s;
        }

        .card:hover {
            transform: translateY(-0.5rem) scale(1.0125);
            box-shadow: 0 0.5em 3rem -1rem rgba(0,0,0,0.5);
        }

        .card-description {
            display: block;
            padding: 1em 0.5em;
            color: #515151;
            text-decoration: none;
        }

        .card-description > h4 {
            margin: 0 0 0.5em;
        }

        .card-description > p {
            margin: 0;
            font-size: 20px;
        }
        
         .art_header{ width: 1980px; height: 600px; margin: 0px auto; background-image:url(${hpath}/resources/img/artimg/artbanner.jpg);
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
    <div class="art_header" ></div>
    <div class="art_wrap">
        <div class="art_contents">
            <p class="contents_title">공연 · 문화 </p>
            <hr>
            <ul class="card-list">
                <li class="card">
                    <a class="card-image" href="">
                        <img class="" src="${hpath }/resources/img/artimg/begin.gif" alt="속초비긴어게인" />
                    </a>
                    <a class="card-description" href="" target="">
                        <h4>공연 · 행사</h4>
                        <p>속초 비긴어게인</p>
                    </a>
                </li>
            </ul>

            <ul class="card-list">
                <li class="card">
                    <a class="card-image" href="">
                        <img class="" src="${hpath }/resources/img/artimg/뮤지컬 디스이스잇.gif" alt="뮤지컬 디스이스잇" />
                    </a>
                    <a class="card-description" href="" target="">
                        <h4>뮤지컬</h4>
                        <p>뮤지컬 디스이스잇</p>
                    </a>
                </li>
            </ul>

            <ul class="card-list">
                <li class="card">
                    <a class="card-image" href="">
                        <img class="" src="${hpath }/resources/img/artimg/뮤지컬 싯다르타.gif" alt="뮤지컬싯다르타" />
                    </a>
                    <a class="card-description" href="" target="">
                        <h4>뮤지컬</h4>
                        <p>뮤지컬 싯다르타</p>
                    </a>
                </li>
            </ul>

            <ul class="card-list">
                <li class="card">
                    <a class="card-image" href="">
                        <img class="" src="${hpath }/resources/img/artimg/버스킹페스타.gif" alt="버스킹페스타" />
                    </a>
                    <a class="card-description" href="" target="">
                        <h4>공연 · 버스킹</h4>
                        <p>버스킹페스타</p>
                    </a>
                </li>
            </ul>

            <ul class="card-list">
                <li class="card">
                    <a class="card-image" href="">
                        <img class="" src="${hpath }/resources/img/artimg/여름 그리고 재즈.gif" alt="여름 그리고 재즈" />
                    </a>
                    <a class="card-description" href="" target="">
                        <h4>공연</h4>
                        <p>여름 그리고 재즈</p>
                    </a>
                </li>
            </ul>

            <ul class="card-list">
                <li class="card">
                    <a class="card-image" href="">
                        <img class="" src="${hpath }/resources/img/artimg/축구연극패스.gif" alt="축구연극패스" />
                    </a>
                    <a class="card-description" href="" target="">
                        <h4>연극</h4>
                        <p>축구연극 패스</p>
                    </a>
                </li>
            </ul>

            <ul class="card-list">
                <li class="card">
                    <a class="card-image" href="">
                        <img class="" src="${hpath }/resources/img/artimg/속초 문화버스킹.jpg" alt="속초문화버스킹" />
                    </a>
                    <a class="card-description" href="" target="">
                        <h4>공연 · 버스킹</h4>
                        <p>속초 문화버스킹</p>
                    </a>
                </li>
            </ul>

            <ul class="card-list">
                <li class="card">
                    <a class="card-image" href="">
                        <img class="" src="${hpath }/resources/img/artimg/오케스트라.jpg" alt="오케스트라" />
                    </a>
                    <a class="card-description" href="" target="">
                        <h4>공연</h4>
                        <p>설악 오케스트라</p>
                    </a>
                </li>
            </ul>

            <ul class="card-list">
                <li class="card">
                    <a class="card-image" href="">
                        <img class="" src="${hpath }/resources//img/artimg/위드콘서트.jpg" alt="위드콘서트" />
                    </a>
                    <a class="card-description" href="" target="">
                        <h4>공연</h4>
                        <p>위드콘서트</p>
                    </a>
                </li>
            </ul>
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