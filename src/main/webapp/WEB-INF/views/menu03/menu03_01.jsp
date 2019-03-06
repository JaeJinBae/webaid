<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈페이지제작 웹에이드</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<meta name="viewport" content="width=1100px, initial-scale=1.0">
<style>
@media only screen and (min-width:320px) and (max-width:767px){

}
@media only screen and (min-width:768px) and (max-width:1099px){

}
@media only screen and (min-width:1100px){
	#all_wrap{
		width:100%;
	}
	#header{
		width:100%;
	}
	#section{
		width:100%;
	}
	.sub_top_Banner{
		width:100%;
	}
	.sub_top_Banner > img {
		width:100%;
	}
	.sub_nav_wrap{
		width:100%;
		border:2px solid lightgray;
	}
	.subMidContent{
		width:1100px;
		margin:0 auto;
	}
	.subMidBigUl{
		overflow: hidden;
	}
	.subMidBigUl > li{
		float:left;
		border-left:2px solid lightgray;
		height:50px;
		line-height: 50px;
	}
	.subMidBigUl > li:first-child > a{
		margin:0 20px;
	}
	.subMidBigUl > li:first-child > a > img{
		width:30px;
		margin-top:12px;
	}
	.subMidBigUl > li > p{
		font-size:20px;
		font-weight: bold;
		margin:0 35px;
	}
	.subMidSmallUl{
		overflow: hidden;
	}
	.subMidSmallUl > li{
		float:left;
	}
	.subMidSmallUl > li > a{
		font-size:18px;
		margin-left:30px;
	}
	.subMidSmallUl > li:last-child > a{
		font-size:18px;
		margin-left:30px;
		color:#006fbd;
		font-weight: bold;
	}
	.content_wrap{
		width:100%;
	}
	.container{
		width:100%;
		margin:0 auto;
	}
	.con_img{
		width:100%;
		text-align: center;
	}
	.con_img > img{
		width:1000px;
	}
	.con_img_title{
		background: #f7feff;
	}
	.table_wrap{
		width:1100px;
		margin: 0 auto;
		margin-bottom:100px;
	}
	.table_wrap > table tr td{
		width:253px;
		display:inline-block;
		margin:0 10px 40px 10px;
	}
	.table_wrap > table tr td > .thumbnail_div{
		width:100%;
		height:218px;
		overflow:hidden;
		border:1px solid lightgray;
	}
	.table_wrap > table tr td > .thumbnail_div > a, .table_wrap > table tr td > .thumbnail_div > a > img{
		width:100%;
	}
	.table_wrap > table tr td > p{
		width:100%;
		margin-top:10px;
		text-align: center;
		font-size:18px;
		letter-spacing: -2px;
	} 
	#footer{
		width:100%;
	}
}
</style>
<script>
$(function(){
	$(".thumbnail_div > a, .thumbnail_p > a").click(function(e){
		e.preventDefault();
		var thumb_url=$(this).attr("href");
		window.open(thumb_url);
		
	});
});
</script>
</head>
<body>
	<div id="all_wrap">
		<div id="header">
			<jsp:include page="../include/header.jsp"></jsp:include>
		</div>
		<div id="section">
			<div class="sub_top_Banner">
				<img class="pc_ver" src="${pageContext.request.contextPath}/resources/images/pc_menu03_top.jpg">
			</div>
			<div class="sub_nav_wrap">
				<div class="subMidContent">
					<ul class="subMidBigUl">
						<li><a href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/resources/images/subMidHomeIcon.png"></a></li>
						<li><p>포트폴리오</p></li>
						<li>
							<ul class="subMidSmallUl">
								<li><a href="${pageContext.request.contextPath}/menu03_1">포트폴리오</a></li>
							</ul>
						</li>
					</ul>
				</div><!-- subMidContent end -->
			</div><!-- sub_nav_wrap -->
			<div class="content_wrap">
				<div class="container">
					<div class="con_img con_img_title">
						<img src="${pageContext.request.contextPath}/resources/images/pc_menu03_content_title.png">
					</div>
					<div class="table_wrap">
						<table>
							<tr>
								<td>
									<div class="thumbnail_div">
										<a href="http://www.uhan-hospital.com"><img src="${pageContext.request.contextPath}/resources/portfolio_thumb/thumb_uhan.jpg"></a>
									</div>
									<p class="thumbnail_p"><a href="http://www.uhan-hospital.com">유한마취통증의학과</a></p>
								</td>
								<td>
									<div class="thumbnail_div">
										<a href="http://www.kt-telecop.com"><img src="${pageContext.request.contextPath}/resources/portfolio_thumb/thumb_kt.jpg"></a>
									</div>
									<p class="thumbnail_p"><a href="http://www.kt-telecop.com">케이티텔레캅</a></p>
								</td>
								<td>
									<div class="thumbnail_div">
										<a href="http://www.119-law.com"><img src="${pageContext.request.contextPath}/resources/portfolio_thumb/thumb_kim.jpg"></a>
									</div>
									<p class="thumbnail_p"><a href="http://www.119-law.com">김헌석법무사사무소</a></p>
								</td>
								<td>
									<div class="thumbnail_div">
										<a href="http://www.euksan.com/"><img src="${pageContext.request.contextPath}/resources/portfolio_thumb/thumb_euksan.jpg"></a>
									</div>
									<p class="thumbnail_p"><a href="http://www.euksan.com/">억산한의원</a></p>
								</td>
							</tr>
							<tr>
								
								<td>
									<div class="thumbnail_div">
										<a href="http://www.honorsauto.com/"><img src="${pageContext.request.contextPath}/resources/portfolio_thumb/thumb_honorsauto.jpg"></a>
									</div>
									<p class="thumbnail_p"><a href="http://www.honorsauto.com/">아너스오토</a></p>
								</td>
								<td>
									<div class="thumbnail_div">
										<a href="http://www.xn--hh0bs27bu7an33a.com/"><img src="${pageContext.request.contextPath}/resources/portfolio_thumb/thumb_gwihan.jpg"></a>
									</div>
									<p class="thumbnail_p"><a href="http://www.xn--hh0bs27bu7an33a.com/">귀한인연</a></p>
								</td>
								<td>
									<div class="thumbnail_div">
										<a href="http://www.ifit-s.com/"><img src="${pageContext.request.contextPath}/resources/portfolio_thumb/thumb_ifits.jpg"></a>
									</div>
									<p class="thumbnail_p"><a href="http://www.ifit-s.com/">아이핏S</a></p>
								</td>
								<td>
									<div class="thumbnail_div">
										<a href="http://www.amiso820.com/"><img src="${pageContext.request.contextPath}/resources/portfolio_thumb/thumb_amiso.jpg"></a>
									</div>
									<p class="thumbnail_p"><a href="http://www.amiso820.com/">아미소</a></p>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div id="footer">
			<jsp:include page="../include/footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>