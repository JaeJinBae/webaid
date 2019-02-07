<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>웹에이드 대구홈페이지제작</title>
<meta name="naver-site-verification" content="b6d40441cf3d376ffc9fca34dbd2b1335336f4f7"/>
<meta name="description" content="대구홈페이지제작, 대구쇼핑몰제작, 반응형홈페이지제작, 병원·기업·개인홈페이지제작, 웹에이전시">
<meta property="og:type" content="website">
<meta property="og:title" content="웹에이드">
<meta property="og:description" content="대구홈페이지제작, 대구쇼핑몰제작, 대구반응형홈페이지제작, 병원·기업·개인홈페이지제작, 웹에이전시">
<meta property="og:image" content="http://www.webaid.co.kr/logo.png">
<meta property="og:url" content="http://www.webaid.co.kr">
<link rel="canonical" href="http://www.webaid.co.kr/">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick-theme.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/slick/slick.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
@media only screen and (min-width:320px) and (max-width:767px){
	
}
@media only screen and (min-width:768px) and (max-width:1099px){
	#all_wrap{
		width:100%;
	}
	#header{
		width:100%;
	}
	#section{
		width:100%;
	}
	#footer{
		width:100%;
	}
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
	.mainBanner{
		width:100%;
		height:600px;
		background: red;
	}
	.container{
		width:100%;
	}
	.content_wrap{
		width:1100px;
	}
	.request_wrap{
		width:100%;
	}
	.request_content{
		width:1100px;
		margin:0 auto;
	}
	#footer{
		width:100%;
	}
}
</style>
</head>
<body>
	<div id="all_wrap">
		<div id="header">
			<jsp:include page="include/header.jsp"></jsp:include>
		</div>
		<div id="section">
			<div class="mainBanner">
			
			</div>
			<div class="container">
				<div class="content_wrap">
				
				</div>
				<div class="request_wrap">
					<div class="request_content"><!-- http://www.way21.co.kr/homepage/homepage.php -->
						<div class="request_content_box1">
							<h1>견적문의</h1>
							<p>
								다양한 업종의 고객님들과 함께하며 쌓은 노하우로 최고의 컨설팅을 해드립니다.
							</p>
							
						</div>
						<div class="request_content_box2">
							<form action="" method="post">
								<table>
									<tr></tr>
								</table>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="footer">
			<jsp:include page="include/footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>