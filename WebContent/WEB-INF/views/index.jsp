<%@ page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html lang="en">

  <head>
  <base href="${pageContext.servletContext.contextPath}/">
    <title>Travel VietNam &mdash; Nguyen Hong Son</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Muli:400,700|Hepta+Slab:400,700&display=swap" 
    	  rel="stylesheet">
    <link rel="stylesheet" href="fonts/icomoon/style.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.fancybox.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet" href="css/aos.css">

    <!-- MAIN CSS -->
    <link rel="stylesheet" href="css/style.css">

  </head>

  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">

    
    <div class="site-wrap" id="home-section">

      <div class="site-mobile-menu site-navbar-target">
        <div class="site-mobile-menu-header">
          <div class="site-mobile-menu-close mt-3">
            <span class="icon-close2 js-menu-toggle"></span>
          </div>
        </div>
        <div class="site-mobile-menu-body"></div>
      </div>



      <header class="site-navbar site-navbar-target" role="banner">

        <div class="container">
          <div class="row align-items-center position-relative">

            <div class="col-3 ">
              <div class="site-logo">
                <a href="main/index/1.htm" class="font-weight-bold">TRAVEL VIETNAM</a>
              </div>
            </div>

            <div class="col-9  text-right">
              <span class="d-inline-block d-lg-none"><a href="#" class="text-white site-menu-toggle js-menu-toggle py-5 text-white"><span class="icon-menu h3 text-white"></span></a></span>
              <nav class="site-navigation text-right ml-auto d-none d-lg-block" role="navigation">
                <ul class="site-menu main-menu js-clone-nav ml-auto ">
                  <li class="active"><a href="main/index/1.htm" class="nav-link">TRANG CHỦ</a></li>
                  <li><a href="main/about.htm" class="nav-link">THÔNG TIN</a></li>
                  <li><a href="login/login.htm" class="nav-link">LOGIN</a></li>
                </ul>
              </nav>
            </div>

            
          </div>
        </div>

      </header>

    <div class="ftco-blocks-cover-1">
      <div class="site-section-cover overlay" style="background-image: url('images/hero.jpg')">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-md-7">
              <p>Welcome to Viet Nam</p>
              <h1 class="mb-3 text-primary">Tìm hiểu các địa điểm nổi tiếng ở VIỆT NAM</h1>
              <p>Chúng ta hãy xem Việt Nam có những địa điểm nổi tiếng nào nhé.</p>
            </div>
          </div>
        </div>
      </div>
    </div>


    <div class="site-section">
      <div class="container">
        <div class="row mb-5 ">
          <div class="col-md-7 text-center mx-auto">
            <span class="subtitle-39293">Danh Sách</span>
            <h2 class="serif">Các địa điểm du lịch nổi tiếng ở Việt Nam</h2>
          </div>
        </div>
       
        <div id="posts" class="row no-gutter">
          <div class="item web col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
            <a href="images/vinhhalong.jpg" class="item-wrap" data-fancybox="gal">
              <span class="icon-search2"></span>
              <img class="img-fluid" src="images/vinhhalong.jpg">
            </a>
            <a>Vịnh Hạ Long</a>
          </div>
          <div class="item web col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
            <a href="images/hoian.jpg" class="item-wrap" data-fancybox="gal">
              <span class="icon-search2"></span>
              <img class="img-fluid" src="images/hoian.jpg">
            </a>
            <a>Hội An</a>
          </div>

          <div class="item brand col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
            <a href="images/angiang-1.jpg" class="item-wrap" data-fancybox="gal">
              <span class="icon-search2"></span>
              <img class="img-fluid" src="images/angiang-1.jpg">
            </a>
            <a>AN GIANG</a>
          </div>

          <div class="item design col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
            <a href="images/quangninh.jpg" class="item-wrap" data-fancybox="gal">
              <span class="icon-search2"></span>
              <img class="img-fluid" src="images/quangninh.jpg">
            </a>
            <a>Quảng Ninh</a>
          </div>

          <div class="item web col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
            <a href="images/sapa.jpg" class="item-wrap" data-fancybox="gal">
              <span class="icon-search2"></span>
              <img class="img-fluid" src="images/sapa.jpg">
            </a>
            <a>LÀO CAI</a>
          </div>

          <div class="item brand col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
            <a href="images/sonla.jpg" class="item-wrap" data-fancybox="gal">
              <span class="icon-search2"></span>
              <img class="img-fluid" src="images/sonla.jpg">
            </a>
            <a>SƠN LA</a>
          </div>

          <div class="item web col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
            <a href="images/hagiang.jpg" class="item-wrap" data-fancybox="gal">
              <span class="icon-search2"></span>
              <img class="img-fluid" src="images/hagiang.jpg">
            </a>
            <a>HA GIANG</a>
          </div>

          <div class="item web col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
            <a href="images/vinhphuc.jpg" class="item-wrap" data-fancybox="gal">
              <span class="icon-search2"></span>
              <img class="img-fluid" src="images/vinhphuc.jpg">
            </a>
            <a>VĨNH PHÚC</a>
          </div>

          <div class="item design col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
            <a href="images/haiphong.jpg" class="item-wrap" data-fancybox="gal">
              <span class="icon-search2"></span>
              <img class="img-fluid" src="images/haiphong.jpg">
            </a>
            <a>HẢI PHÒNG</a>
          </div>

          <div class="item brand col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
            <a href="images/hoabinh.jpg" class="item-wrap" data-fancybox="gal">
              <span class="icon-search2"></span>
              <img class="img-fluid" src="images/hoabinh.jpg">
            </a>
            <a>HÒA BÌNH</a>
          </div>

          <div class="item design col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
            <a href="images/ninhbinh.jpg" class="item-wrap" data-fancybox="gal">
              <span class="icon-search2"></span>
              <img class="img-fluid" src="images/ninhbinh.jpg">
            </a>
            <a>NINH BÌNH</a>
          </div>

          <div class="item design col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
            <a href="images/caobang.jpg" class="item-wrap" data-fancybox="gal">
              <span class="icon-search2"></span>
              <img class="img-fluid" src="images/caobang.jpg">
            </a>
            <a>CAO BẰNG</a>
          </div>
        </div>
      </div>
    </div> 



    <div class="site-section">
      <div class="container">
        <div class="row mb-5 ">
          <div class="col-md-7 text-center mx-auto">
            <h2 class="serif">VIETNAM AMAZING</h2>
          </div>
        </div>
        <div class="row justify-content-center">
          <div class="col-md-8">

            <a href="https://www.youtube.com/watch?v=sTFZslRe5Kg" data-fancybox  class="btn-video_38929">
              <span><span class="icon-play"></span></span>
              <img src="images/laco.jpg" alt="Image" class="img-fluid">
            </a>
          </div>
        </div>
      </div>
    </div>




    <div class="site-section bg-white">
      <div class="container">
        <div class="row mb-5 ">
          <div class="col-md-7 text-center mx-auto">
            <span class="subtitle-39293">News</span>
            <h2 class="serif">ĐỊA DANH NỔI TIẾNG</h2>
          </div>
        </div>

        <div class="row">         
            <c:forEach var="p" items="${listProduct}">
            	<div class="col-lg-4 col-md-6 mb-4">
            		<div class="post-entry-1 h-100">
              				<a href="main/info/${p.ID}.htm">
               				 <img src="${p.IMAGE}" alt="Image" class="img-fluid" height="600">
              				</a>
              			<div class="post-entry-1-contents">
                			<h2><a href="main/info/${p.ID}.htm">${p.NAME}</a></h2>
                
              			</div>
           			</div>
            	</div>
            </c:forEach>
        </div>
        
        
        
        <c:if test="${totalPage>0}">
       <div class="text-center">
		<c:forEach var="i" begin="0" end="${totalPage-1}" varStatus="status">

			<c:if test="${status.index == 0 && currentPage > 1}">
				<c:choose>
					<c:when test="${isCate == 0}">
						<a href="main/index/${currentPage-1}.htm"
							class="btn btn-outline-primary">&laquo</a>
					</c:when>
					<c:otherwise>
						<a href="main/index/${cateId}/${currentPage-1}.htm"
							class="btn btn-outline-primary">&laquo</a>
					</c:otherwise>
				</c:choose>
			</c:if>



			<c:choose>
				<c:when test="${isCate == 0}">
					<a class="btn btn-outline-primary" href="main/index/${i+1}.htm"
						${status.index + 1 == currentPage ? 'style="background-color: #007bff;"':''}>
						<span
						${status.index + 1 == currentPage ? 'style="color: white;"':''}>
							${i+1}</span>
					</a>
				</c:when>
				<c:otherwise>
					<a class="btn btn-outline-primary"
						href="main/index/${cateId}/${i+1}.htm"
						${status.index + 1 == currentPage ? 'style="background-color: #007bff;"':''}>
						<span
						${status.index + 1 == currentPage ? 'style="color: white;"':''}>
							${i+1}</span>
					</a>
				</c:otherwise>
			</c:choose>




			<c:if
				test="${status.index == totalPage-1 && currentPage <= totalPage-1}">
				<c:choose>
					<c:when test="${isCate == 0}">
						<a href="main/index/${currentPage+1}.htm"
							class="btn btn-outline-primary">&raquo;</a>
					</c:when>
					<c:otherwise>
						<a href="main/index/${cateId}/${currentPage+1}.htm"
							class="btn btn-outline-primary">&raquo;</a>
					</c:otherwise>
				</c:choose>
			</c:if>
			
		</c:forEach>
	</div>
	</c:if>
      </div>
    </div>
    </div>

    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/jquery-migrate-3.0.0.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.sticky.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/jquery.animateNumber.min.js"></script>
    <script src="js/jquery.fancybox.min.js"></script>
    <script src="js/jquery.stellar.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/bootstrap-datepicker.min.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>
    <script src="js/aos.js"></script>

    <script src="js/main.js"></script>

  </body>

</html>

