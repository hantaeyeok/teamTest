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
<!-- <link rel="stylesheet" href=${hpath}/resources/css/subfoodhotel.css> -->
    <style>
        /*공통*/
        * { margin: 0; padding: 0; }
        body { width:100%; height: auto; } 
        ul {list-style:none;}
        a{text-decoration: none;}
 

      .food_header{ width: 1980px; height: 600px; margin: 0px auto; background-image:url(${hpath}/resources/img/img5.jpg);
      background-size: cover; /* Ensure the image covers the entire header */
      background-position: center; /* Center the image */
      background-repeat: no-repeat; /* Prevent the image from repeating */}

      .layout{width: 1260px; height: 1000px; margin: 0px auto; position: relative;}

  
	.breadcrumb { 
  clear:both; border-bottom:2px solid #777; 
  padding-top: 24px; padding-bottom: 24px; text-align: right; 
  box-sizing:border-box;  padding-right: 40px;   
	}
.breadcrumb p * { 
  padding:0px 7px; 
  color:#333; 
  font-weight:bold; 
}
.breadcrumb p a:after { 
  content:">"; 
  padding-left: 14px; 
}

        /*그외*/


/*메뉴바 밑 사진 바탕*/
.top_wrap {
  width:100vw;
}
/*메뉴바 밑 사진*/
.top_wrap img{
  width:100%;
  height:400px;
  margin: 0 auto;
}

/*메인목록 바탕*/


/*음식점_숙박업체 목록*/
.layout .fh { 
  position:relative; 
  width: 1200px; 
  margin: 0 auto;
  height:800px; 
}

.layout .fh .search{
  float:right;
}

.layout .fh .search:after{
  clear:both;
}

.layout .fh [type=text] {
  float:right;
  position:relative;
  line-height: 18px;
  text-align: center;
}
.layout .fh [type=button] {
  position:absolute;
}

.layout .fh:after {
  clear:both;
}


.layout .fh li { 
    box-sizing: border-box; 
    position:absolute; 
    z-index:5; 
  }
.layout .fh li .box { 
    width: 100%; height:100%; 
    background-color: rgba(109, 107, 100, 0.5); 
    color:#000;
    border-radius: 10px;
    text-align: center;
    box-shadow: 0px 2px 8px rgba(0,0,0,0.2);
}
.layout .fh li .box p{
  font-weight: bold; 
  text-align: center;
  line-height: 40px;
}
.layout .fh li .box span{ 
  color:blue;
}

  .box1 { width: 320px; height: 300px;}
  .box1:hover{transform: scale(95%); /*transform: translateY(-50%);*/ cursor:pointer; }
  .box2 { width: 320px; height:300px; }
  .box2:hover{ transform: scale(95%); cursor:pointer; }
  #item1 { top: 100px; left: 60px;}
  #item1 img{ margin-top:20px; width:280px; height: 200px; border-radius: 30px; }
  #item2 { top:100px; left:440px;}
  #item2 img{ margin-top:20px; width:280px; height: 200px; border-radius: 30px; }
  #item3 { top:100px; right:60px;}
  #item3 img{ margin-top:20px; width:280px; height: 200px; border-radius: 30px; }
  #item4 { top:460px; left:60px;}
  #item4 img{ margin-top:20px; width:280px; height: 200px; border-radius: 30px; }
  #item5 { top:460px; left:440px;}
  #item5 img{ margin-top:20px; width:280px; height: 200px; border-radius: 30px; }
  #item6 { top:460px; right:60px;}
  #item6 img{ margin-top:20px; width:280px; height: 200px; border-radius: 30px; }

/*사이드 메뉴*/
.aside_wrap{width: 200px; height:240px ; position: absolute; left: -200px; top: -500px; }
.layout aside {
  list-style: none;
  box-sizing: border-box; 
  padding: 10px;
}
.layout aside .menu{
  background-color: rgba(0, 78, 205, 0.87);
}
.layout aside #side { margin-top: 600px; padding-left: 24px; }      
.layout aside #side > .menu > li { text-align:center; line-height: 80px; border:1px solid;}
.layout aside #side a.dp1 { color:#333; font-size:24px; font-weight:900;}
.layout aside #side li .sub { height:0px; overflow:hidden; transition:0.9s; }
.layout aside #side li .sub li { margin-top:-5px; line-height:30px; padding:10px;}
.layout aside #side li .sub li:hover{
  background-color: deepskyblue;
}
.layout aside #side .sub li a.dp2 { color:#333; font-size:18px; font-weight: 600; }
.layout aside #side li:hover .sub { height:150px; }
.layout footer {
  grid-column: span 2;
}

/*라마다 호텔 상세페이지*/
.layout .ramada { 
  position:relative; 
  width: 1200px; 
  margin: 0 auto;
  height:800px; 
}

  .contents_title{padding-top: 5px; font-weight:bold; font-size:20px; margin:20px 20px auto;}
  .contents_hr{
    margin:20px 20px auto;
    border: 0;
    height: 3px;
    background: #ccc;
  }
  .explain_table{display:flex; width:1000px; height:300px; margin-left:150px;}
  .explain_table img{
    margin-top:50px;
    width:350px; height:250px;
  }
  .table1{
    width:500px;
    height:300px;
    padding-top:50px;
    margin-left:120px;
  }
  .table1 tbody{
    height:200px;
    text-align:center;
  }
  .table1 tbody tr th {
    width:120px;
  }
  .table1 tbody tr th td{
    text-align:center;
  }

  .table2{
    width:1000px;
    display:block;
  }
  .table2 .contents_title{
    margin-top:30px;
    margin-left:50px;
  }
  .table2 p {
    margin-left:80px;
    margin-bottom:30px;
  }

  .map{
    width:1000px;
  }
  .map .contents_title {
    margin-top:20px;
    margin-left:50px;
    margin-bottom:10px;
  }
  .map_contents{
    margin-left:150px;
  }

  .market_table{
    display:flex;
    width:1100px;
    height:400px;
    padding-top:30px;
    margin-left:20px;
  }
  .market_table img{
    margin-top:10px;
    width:500px; height:350px;
  }
  #text1{
    margin-left:20px;
  }
  #text1 ul {
    width:600px;
    text-align:left;
    line-height: 70px;
    font-weight:bold;
    color:rgba(252, 94, 3, 0.9);
    font-size: 30px;
  }
  #text1 ul li{
    font-size:24px;
  }
  </style>
</head>
<body>
 <%@ include file="../header.jsp" %>
    <header class="food_header"></header>
      <main class="layout">
        <div class="aside_wrap">
        <aside>
            <nav id="side">
              <ul class="menu">
                  <li>
                      <a href="" class="dp1">관광명소</a>
                      <ul class="sub">
                          <li><a href="" class="dp2">산림</a></li>
                          <li><a href="" class="dp2">해안</a></li>
                          <li><a href="" class="dp2">놀거리</a></li>
                          <li><a href="" class="dp2">볼거리</a></li>
                      </ul>
                  </li>
                  <li>
                      <a href="" class="dp1">문화/예술</a>
                      <ul class="sub">
                          <li><a href="" class="dp2">문화재</a></li>
                          <li><a href="" class="dp2">박물관/전시</a></li>
                          <li><a href="" class="dp2">이달의공연</a></li>
                          <li><a href="" class="dp2">추가할거있음</a></li>
                      </ul>
                  </li>
                  <li>
                      <a href="./" class="dp1">숙박/음식점</a>
                      <ul class="sub">
                          <li><a href="" class="dp2">먹거리</a></li>
                          <li><a href="" class="dp2">전통시장</a></li>
                          <li><a href="" class="dp2">숙박정보</a></li>
                      </ul>
                  </li>
              </ul>
            </nav>
        </aside>
        </div>
    <div class="breadcrumb">
      <p>
        <a href="">홈</a><span><a href="page1.html">숙박/음식점</a></span><span>음식점 정보</span>
      </p>
    </div>
    <ul class="fh">
         <li id="item1" class="box1">
           <div class="box"><a href="https://maps.app.goo.gl/Hs43GzVXjzyyA8bp6" target="_blank"><img src="${hpath }/resources/img/image-food/88생선구이.jpg" alt="생선구이"></a>
            <p>88생선구이</p>
            <span>위치정보</span>
        </div>
      </li>
      <li id="item2" class="box1">
          <div class="box"><a href="https://maps.app.goo.gl/Xm8t1foDYxY5Czat7" target="_blank"><img src="${hpath }/resources/img/image-food/단천식당.jpg" alt="단천식당"></a>
            <p>단천식당</p>
            <span>위치정보</span>
        </div>
      </li>
      <li id="item3" class="box1">
          <div class="box"><a href="https://maps.app.goo.gl/5m4AFfTULZp3D4cm9" target="_blank"><img src="${hpath }/resources/img/image-food/만석닭강정.jpg" alt="만석닭강정"></a>
            <p>만석닭강정</p>
            <span>위치정보</span>
        </div>
      </li>
      <li id="item4" class="box2">
        <div class="box"><a href="https://maps.app.goo.gl/AqWWfnhYnvWeD6PfA" target="_blank"><img src="${hpath }/resources/img/image-food/사돈집.JPG" alt="사돈집"></a>
            <p>사돈집</p>
            <span>위치정보</span>
        </div>
    </li>
    <li id="item5" class="box2">
        <div class="box"><a href="https://maps.app.goo.gl/146RdDR6TYjpjKmB8" target="_blank"><img src="${hpath }/resources/img/image-food/이조면옥.jpg" alt="이조면옥"></a>
            <p>이조면옥</p>
            <span>위치정보</span>
        </div>
    </li>
    <li id="item6" class="box2">
        <div class="box"><a href="https://maps.app.goo.gl/6neEMd6iXTNhG43U8" target="_blank"><img src="${hpath }/resources/img/image-food/정든식당.JPG" alt="정든식당"></a>
            <p>정든식당</p>
            <span>위치정보</span>
        </div>
    </li>
  </ul> 
  </main>
<%@ include file="../footer.jsp" %>
</body>
</html>