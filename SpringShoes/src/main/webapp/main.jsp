<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>
<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Favicon-->
	<link rel="shortcut icon" href="img/fav.png">
	<!-- Author Meta -->
	<meta name="author" content="CodePixar">
	<!-- Meta Description -->
	<meta name="description" content="">
	<!-- Meta Keyword -->
	<meta name="keywords" content="">
	<!-- meta character set -->
	<meta charset="UTF-8">
	<!-- Site Title -->
	<title>Spring Shoes</title>
	<!--
            CSS
            ============================================= -->
	<link rel="stylesheet" href="css/linearicons.css">
	<link rel="stylesheet" href="css/owl.carousel.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/themify-icons.css">
	<link rel="stylesheet" href="css/nice-select.css">
	<link rel="stylesheet" href="css/nouislider.min.css">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/main.css">
	<style type="text/css">
	.pixel-radio:checked{
	border:7px solid black;
	}
	.pixel-radio:checked::after{
	background: black;
	}
	.price-range-area .noUi-horizontal .noUi-handle:hover{
	border: 3px solid black;
	}
	.price-range-area .noUi-horizontal .noUi-handle{
	background: black;
	}
	.organic-breadcrumb{
	background: linear-gradient(90deg, #black 0%, #white 100%);
	}
.head.p{
	text-align:center;
	background-color: white;
	}
	.page:hover{
	background-color: black;
	}
	.page{
	border:2px solid black;
	padding:8px;	
	color: black;	
	}
	.pagebutton{
	font-size:25px;
	}
	.pagebutton:hover{
	color: red;
	}
	
	.page.active{
	padding:8px;
	color: white;
	background-color: black;
	}
	
	</style>
</head>

<body id="category">

	<t:header/>
	<t:banner/>
	
	<div class="container">
		<div class="row">
			<div class="col-xl-3 col-lg-4 col-md-5">
				<div class="sidebar-categories">
				<div class="head" style="background-color:black;">????????????</div>
				</div>
				<div class="sidebar-filter mt-50" style="margin-top:20px;">
					<div class="common-filter">
						<div class="head" style="position: relative;">
							<form action="selectAllS.do">
							<input type="hidden" name="pageCondition" value="normal">
							???????????? <span class="lnr lnr-magnifier" id="search"></span>
							<input type="text" class="form-control" name="searchContent">
							<input type="submit" style="display:none;">
							</form>
						</div>
					</div>
					<div>
					<form action="filterSearch.do" method="post" id="filter">
					<div class="common-filter">
					<input type="hidden" name="pageCondition" value="filter">
					<input type="hidden" id="filterHighPrice" name="filterHighPrice">
					<input type="hidden" id="filterLowPrice" name="filterLowPrice">
						<div class="head">Brands</div>
							<ul>
								<li class="filter-list"><input class="pixel-radio" value="nike" type="radio" name="filterBrand" id="brandBax1">
									<label for="brandBax1">?????????</label>
								</li>
								<li class="filter-list"><input class="pixel-radio" value="adidas"type="radio" name="filterBrand" id="brandBax2">
									<label for="brandBax2">????????????</label>
								</li>
								<li class="filter-list"><input class="pixel-radio" value="new balance"type="radio" name="filterBrand" id="brandBax3">
									<label for="brandBax3">????????????</label>
								</li>
								<li class="filter-list"><input class="pixel-radio" value="vans"type="radio" name="filterBrand" id="brandBax4">
									<label for="brandBax4">??????</label>
								</li>
							</ul>
					</div>
					<div class="common-filter">
						<div class="head">Color</div>
							<ul>
								<li class="filter-list"><input class="pixel-radio" id="" value="grey" type="radio" name="filterColor" id="colorBax1">
									<label for="colorBax1">GREY</label>
								</li>
								<li class="filter-list"><input class="pixel-radio" value="black" type="radio" name="filterColor" id="colorBax2">
									<label for="colorBax2">BLACK</label>
								</li>
								<li class="filter-list"><input class="pixel-radio" value="white" type="radio" name="filterColor" id="colorBax3">
									<label for="colorBax3">WHITE</label>
								</li>
								<li class="filter-list"><input class="pixel-radio" value="brown" type="radio" name="filterColor" id="colorBax4">
									<label for="colorBax4">BROWN</label>
								</li>
								<li class="filter-list"><input class="pixel-radio" value="navy" type="radio" name="filterColor" id="colorBax5">
									<label for="colorBax5">NAVY</label>
								</li>
								<li class="filter-list"><input class="pixel-radio" value="red" type="radio" name="filterColor" id="colorBax6">
									<label for="colorBax6">RED</label>
								</li>
								<li class="filter-list"><input class="pixel-radio" value="green" type="radio" name="filterColor" id="colorBax7">
									<label for="colorBax7">GREEN</label>
								</li>
								<li class="filter-list"><input class="pixel-radio" value="yellow" type="radio" name="filterColor" id="colorBax8">
									<label for="colorBax8">YELLOW</label>
								</li>
							</ul>
					</div>
					<div class="common-filter">
						<div class="head">Size</div>
							<ul>
								<li class="filter-list"><input class="pixel-radio" type="checkbox" name="filterSize" value="220" id="default-checkbox1" checked="checked">
									<label for="default-checkbox1">220</label>
								</li>
								<li class="filter-list"><input class="pixel-radio" type="checkbox" name="filterSize" value="230" id="default-checkbox2">
									<label for="default-checkbox2">230</label>
								</li>
								<li class="filter-list"><input class="pixel-radio" type="checkbox" name="filterSize" value="240" id="default-checkbox3">
									<label for="default-checkbox3">240</label>
								</li>
								<li class="filter-list"><input class="pixel-radio" type="checkbox" name="filterSize" value="250" id="default-checkbox4">
									<label for="default-checkbox4">250</label>
								</li>
								<li class="filter-list"><input class="pixel-radio" type="checkbox" name="filterSize" value="260" id="default-checkbox5">
									<label for="default-checkbox5">260</label>
								</li>
								<li class="filter-list"><input class="pixel-radio" type="checkbox" name="filterSize" value="270" id="default-checkbox6">
									<label for="default-checkbox6">270</label>
								</li>
							</ul>
					</div>
					<div class="common-filter">
						<div class="head">Price</div>
						<div class="price-range-area">
							<div id="price-range"></div>
							<div class="value-wrapper d-flex">
								<div class="price"></div>
								<div id="lower-value" style="color:black;"></div>
								<span style="color:black;">???</span>
								<div class="to" style="color:black;"> ~ </div>
								<div id="upper-value" style="color:black;"></div>
								<span style="color:black;">???</span>
							</div>	
							<br>
							<input type="submit" class="genric-btn e-large" value="????????????" style="background-color:black; color:white;">
						</div>
					</div>
						</form>
					</div>
				</div>
			</div>
			
			<div class="col-xl-9 col-lg-8 col-md-7">
				<!-- Start Filter Bar -->
					<div class="sidebar-categories">
						<div class="head" style="background-color:black;">?????? ????????????</div>
					</div>
				<!-- End Filter Bar -->
				<!-- Start Best Seller -->
				<section class="lattest-product-area pb-40 category-list">
					<div class="row">
						<c:if test="${sDatas.size() == 0}">
                 			<div class="head" style="text-align:center; width:100%; height:250px;">
                  			<br><br><br><br><br><br>
                     			<span style="font-size:30px;">???????????? ????????? ???????????? ????????????...</span>
                   			</div>
                  		</c:if>
						<c:forEach var="s" items="${sDatas}">
						<div class="col-lg-4 col-md-6">
							<div class="single-product blog_right_sidebar">
								<div style="position:relative;">
									<div style="position:absolute; opacity:0.7;">
									<c:if test="${s.shoesCnt == 0}">
										<img class="img-fluid blog_right_sidebar" src="img/x.png" alt="??????">
									</c:if>
									</div>
									<a href="selectOneS.do?colorpk=${s.colorpk}"><img class="img-fluid blog_right_sidebar" src="${s.shoesImg}" alt="" style="background-color:white; padding:0;"></a>
								</div>
								<div class="product-details">
									<h6>${s.shoesName }</h6>
									<div class="price">
										<h6>????????? : ${s.brand }</h6>
										<br>
										<h6>?????? : ${s.shoesColor }</h6>
										<br>
										<h6>?????? : ${s.price }???</h6>
										<c:if test="${s.shoesCnt >= 0}">
										<br>
										<h6>????????? : ${s.shoesSize }</h6>
										</c:if>
									</div>
								</div>
							</div>
						</div>
						</c:forEach>
					</div>
					<div class="sidebar-categories">
						
						<div class="head p">
						<c:if test="${pageButton - 1 != 0 }">
						<a class ="pagebutton" onclick="page(this)" href="javascript:void(0);">???</a>
						</c:if>
						
						<c:forEach var="n" items="${pageNum}"><!-- ???????????? ?????? page????????? active css ???????????? ?????? -->
							<c:if test="${pageNow == n}">
								<a class ="page active">${n}</a>
							</c:if>
							<c:if test="${pageNow != n}">
								<a class ="page" onclick="page(this)" href="javascript:void(0);" >${n}</a>
							</c:if>
						</c:forEach>
						
						<c:if test="${pageNum[fn:length(pageNum)-1] < endPageNum }"> <!-- length??? el???????????? ?????? ????????? ?????? -->
						<a class ="pagebutton" onclick="page(this)" href="javascript:void(0);">???</a>	
						</c:if>
						
						</div>
						
						<form id="pageForm"><!-- ??????????????? ??????????????? ????????? ????????? ?????? ???????????? form -->
							<input id="pageCondition" type="hidden" name="pageCondition" value="${pageCondition }">
							<input type='hidden' name='searchContent' value='${searchContent }'>
							<input id="pageButton" type="hidden" name="pageButton" value="${pageButton }">
						</form>
						
					</div>
				</section>
			</div>
		</div>
	</div>
	<br><br>
	
	   <script type="text/javascript">
   
   function page(e){
      if($(e).attr('class') == "pagebutton"){
         //console.log("Up Down ?????? ?????????");
         if($(e).html() == "???"){
         //console.log("Down ?????? ??????");
         $('#pageButton').val('${pageButton -1}');            
         }
         else if($(e).html() == "???"){
         //console.log("UP ?????? ??????");
         $('#pageButton').val('${pageButton +1}');            
         }
      }
      else if($(e).attr('class') == "page"){
          //console.log("????????? ????????? ???????????? ?????????")
          $('#pageForm').append("<input type='hidden' name='page' value='"+$(e).html()+"'>");
      }
         
      //console.log("pageButton???: "+$('#pageButton').val());
         
      if($("#pageCondition").val() == "normal"){ // ??????????????? ??????
         //console.log("?????????????????????");
         
            $("#pageForm").attr("action", "selectAllS.do");
            $('#pageForm').submit();
      }
      else{
         //console.log("?????????????????????");
            
         	$('#pageForm').append("<input type='hidden' name='filterBrand' value='${filterBrand}'>");
            $('#pageForm').append("<input type='hidden' name='filterColor' value='${filterColor}'>");
            $('#pageForm').append("<input type='hidden' name='filterLowPrice' value='${filterLowPrice}'>");
            $('#pageForm').append("<input type='hidden' name='filterHighPrice' value='${filterHighPrice}'>");
            
            <c:forEach items="${filterSize}" var="s">
                 $('#pageForm').append("<input type='hidden' name='filterSize' value='${s}'>");
            </c:forEach>
            
            $("#pageForm").attr("action", "filterSearch.do");
            $('#pageForm').submit();
      }
   }
   
   </script>
	

	<t:footer/>

	<script src="js/vendor/jquery-2.2.4.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" 
	integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
	crossorigin="anonymous"></script>
	<script src="js/vendor/bootstrap.min.js"></script>
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery.sticky.js"></script>
	<script src="js/nouislider.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<!--gmaps Js-->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="js/gmaps.min.js"></script>
	<script src="js/main.js"></script>
	<script type="text/javascript">
    $(function(){

        if(document.getElementById("price-range")){
        
        var nonLinearSlider = document.getElementById('price-range');
        noUiSlider.create(nonLinearSlider, {
            connect: true,
            behaviour: 'tap',
            start: [ 100, 5000 ],
            range: {
                // Starting at 500, step the value by 500,
                // until 4000 is reached. From there, step by 1000.
                // ?????? 1 = 100??? / 100 = 10000???
                // 200000??? ?????? 25000?????? ???????????? ??????
                // 500000??? ??????
                'min': [ 100, 100 ],
                '50%': [ 2000, 250 ],
                'max': [ 5000 ]
            }
        });


        // ?????? ?????????????????? ????????? ????????? ?????? ?????? ??????
        var nodes = [
            document.getElementById('lower-value'), // 0
            document.getElementById('upper-value')  // 1
        ];

        
        // form?????? ????????? id ??????
        var nodes2 = [
        	document.getElementById('filterLowPrice'), // 0
            document.getElementById('filterHighPrice') // 1
        ]
        
        // Display the slider value and how far the handle moved
        // from the left edge of the slider.
        
        // [handle] = ????????? ????????? id ?????? ???????????? ??????????????? ???
        // ???????????? ????????? ?????? * 100 ??????
        // id??? ????????? ?????? ????????? ???????????? ?????????????????? ????????? ??????
        nonLinearSlider.noUiSlider.on('update', function ( values, handle, unencoded, isTap, positions ) {
            nodes[handle].innerHTML = values[handle] * 100;
            nodes2[handle].value = values[handle] * 100; 
        });

        }

    });
    
    
    
    // ???????????? ????????? ??????
    
    var form=document.forms['filter'];
    
    form.onsubmit=function(){

    	// Name??? size?????? ????????? ?????? (size????????? ?????????????????? ????????? ????????? ???, checkBox?????? ?????? ???????????????)
        sizes = document.getElementsByName("filterSize");
        
        for (count = i = 0; i < sizes.length; i++){
        	// ture = 1 / false = 0 ?????? ????????????
        	// sizes[i] = ???????????? ????????????
        	// checkbox.checked; ??? ???????????? ???????????? ????????? ??????????????? ?????????????????? boolean??? ????????????
        	// ???????????? count??? 0?????? ?????? false ??????
        	count += sizes[i].checked;
        }

        if (count == 0){
        	alert("Size ??????????????? ???????????? ?????????????????? ?????????")
        	return false;
        }

    }

	</script>
</body>
</html>