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
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
		height:400px;
		background: green;
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
		width:1100px;
		margin:0 auto;
		padding:100px 0;
	}
	#footer{
		width:100%;
	}
}
</style>
<script>

</script>
</head>
<body>
	<div id="all_wrap">
		<div id="header">
			<jsp:include page="../include/header.jsp"></jsp:include>
		</div>
		<div id="section">
			<div class="sub_top_Banner">
				
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
				
				</div>
			</div>
		</div>
		<div id="footer">
			<jsp:include page="../include/footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>