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
	.subMidSmallUl > li:first-child > a{
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
	}
	.content01_div{
		width:1100px;
		margin: 50px auto;
	}
	.content_body{
		width:90%;
		background: #f8f8f8;
		margin: 0 auto;
		padding:30px;
		border: 1px solid lightgray;
		box-shadow: 0px 0px 10px 6px lightgray;
	}
	.content_body > p{
		margin:20px 0;
		font-size:15px;
	}
	.content_body > ol{
		width:95%;
		margin: 0 auto;
		margin-bottom:20px;
	}
	.content_body > ol > li{
		list-style: decimal;
		font-size: 15px;
		margin-top:10px;
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
				<img class="pc_ver" src="${pageContext.request.contextPath}/resources/images/pc_menu04_top.jpg">
			</div>
			<div class="sub_nav_wrap">
				<div class="subMidContent">
					<ul class="subMidBigUl">
						<li><a href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/resources/images/subMidHomeIcon.png"></a></li>
						<li><p>고객센터</p></li>
						<li>
							<ul class="subMidSmallUl">
								<li><a href="${pageContext.request.contextPath}/no_collect_email">이메일무단수집거부</a></li>
							</ul>
						</li>
					</ul>
				</div><!-- subMidContent end -->
			</div><!-- sub_nav_wrap -->
			<div class="content_wrap">
				<div class="container">
					<div class="content01_div">
						<div class="content_body">
							<p>본 웹사이트에 게시된 전자우편주소를 전자우편 수집 프로그램이나 그 밖의 기술적 장치를 이용하여 무단으로 수집되는 것을 거부하며,이를 위반시 정보 통신망 이용촉진 및
							정보보호 등에 관한 법률에 의해 형사처벌됨을 유념하시기 바랍니다.</p>
							
							
							<h4>정보통신망 이용촉진 및 정보보호등에 관한 법률 제 50조의 2(전자우편주소의 무단 수집행위 등 금지)</h4>
							<ol>
								<li>
									누구든지 인터넷 홈페이지 운영자 또는 관리자의 사전 동의 없이 인터넷 홈페이지에서 자동으로 전자우편주소를 수집하는 프로그램이나 그 밖의 기술적 장치를
									이용하여 전자우편주소를 수집하여서는 아니 된다.
								</li>
								<li>누구든지 제1항을 위반하여 수집된 전자우편주소를 판매 유통하여서는 아니 된다.</li>
								<li>누구든지 제1항과 제2항을 따라 수집 판매 및 유통이 금지된 전자우편주소 임을 알면서 이를 정보 전송에 이용하여서는 아니 된다.</li>
							</ol>
						</div>
					</div><!-- content01_div end -->
				</div><!-- container end -->
			</div><!-- content_wrap end -->
		</div><!-- section end -->
		<div id="footer">
			<jsp:include page="../include/footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>