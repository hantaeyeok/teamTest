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
<title>fmain</title>
<!-- <link rel="stylesheet" href=${hpath}/resources/css/foodhotel.css> -->
  <style>
    /*공통*/
    * { margin: 0; padding: 0; }
        body { width:100%; height: auto; } 
        ul {list-style:none;}
        a{text-decoration: none;}
      /* header  공통*/
      #hd { width: 100%; height: auto; position:relative; border: 1px solid #333; background-color: rgba(99, 96, 53, 0.014);}
      .banner { height: 100%; width: auto;}
      .hd_wrap { clear:both; width: 100%; margin: 0 auto; }
      #gnb {clear: both; width: 100%; position: absolute; z-index: 111;  }
      #gnb > .menu > li  { float:left; width: 14.28571428571429%;  text-align: center; } 
      #gnb a.dp1 { background-color:rgba(16, 29, 99, 0.2); display:block; line-height: 80px; height: 75px;  color:#fff;} 

      #gnb li:hover a.dp1 {background-color: rgba(238, 255, 0, 0.13);}
      #gnb .sub {display: none;}
      #gnb:hover .menu .sub {display: block;}
      #gnb .menu li:hover .sub {background-color: #ccc;}

      #gnb2 {display: none; }
      #gnb2 {clear: both; width: 100%; position: fixed; z-index: 111;}
      #gnb2 > .menu > li  { float:left; width: 14.28571428571429%;  text-align: center; } 
      #gnb2 a.dp1 { background-color:#fff; display:block; line-height: 80px; height: 75px;  color:black;} 

      #gnb2 li:hover a.dp1 {background-color: rgba(0, 255, 255, 0.13);}
      #gnb2 .sub {display: none;}
      #gnb2:hover .menu .sub {display: block;}
      #gnb2 .menu li:hover .sub {background-color: #ccc;}

      .food_header{ width: 1980px; height: 600px; margin: 0px auto; background-image:url(${hpath}/resources/img/img5.jpg);
      background-size: cover; /* Ensure the image covers the entire header */
      background-position: center; /* Center the image */
      background-repeat: no-repeat; /* Prevent the image from repeating */}
   
.top_wrap {
  width:100vw;
}

.top_wrap img{
  width:100%;
  height:400px;
  margin: 0 auto;
}


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

  #page1{
    margin-top: 20px;
  }

.grid { 
  position:relative; 
  width: 1200px; 
  margin: 0 auto; 
  height:800px; 
}
  .grid li { 
    box-sizing: border-box; 
    position:absolute; 
    z-index:5; 
  }
  .grid li .box { 
    width: 100%; height:100%; 
    background-color: rgba(109, 107, 100, 0.5); color:#000; border-radius: 30px;
    text-align: center;
}
  .box1 { width: 360px; height: 700px; }
  .box1:hover{transform: scale(95%); /*transform: translateY(-50%);*/ cursor:pointer;}
  #item1 { top: 50px; left: 30px;}
  #item1 img{ width:100%; height: 100%; border-radius: 30px; }
  #item2 { top:50px; left:420px;}
  #item2 img{ width:100%; height: 100%; border-radius: 30px; }
  #item3 { bottom:50px; right:30px;}
  #item3 img{ width:100%; height: 100%; border-radius: 30px; }
  </style>
   <script>
    window.addEventListener("scroll",function(){
    var scrollposition = window.scrollY;
    if(scrollposition > 1){
        document.getElementById("gnb").style.display = "none";
        document.getElementById("gnb2").style.display = "block";
    } else {
        document.getElementById("gnb").style.display = "block";
        document.getElementById("gnb2").style.display = "none";
    }})
</script>    
</head>
<body>
 <%@ include file="../header.jsp" %>
    <header class="food_header"></header>
<body>
        <div class="breadcrumb">
            <p>
                <a href="${hpath }/home.jsp">홈</a><span>숙박/음식점</span>
            </p>
        </div>
    <section class="page" id="page1">
    <ul class="grid">
        <li id="item1" class="box1">
            <div class="box"><a href="${hpath }/food/food.do"><img src="${hpath}/resources/img/image-sub/sub-food.jpg" alt="음식점 정보"></a></div>
        </li>
        <li id="item2" class="box1">
            <div class="box"><a href="page3.html"><img src="${hpath }/resources/img/image-sub/sub-house.jpg" alt="숙소정보"></a></div>
        </li>
        <li id="item3" class="box1">
            <div class="box"><a href="page4.html"><img src="${hpath }/resources/img/image-sub/sub-market.jpg" alt="전통시장"></a></div>
        </li>
    </ul>
</section>
<%@ include file="../footer.jsp" %>
</body>
</html>