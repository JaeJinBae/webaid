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
	}
	.sub_top_Banner > img{
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
		width:1100px;
		margin:0 auto;
		padding:100px 0;
	}
	.table_wrap{
		width:100%;
	}
	.table_wrap > .tbl_price{
		width:100%;
		border:1px solid lightgray;
	}
	.tbl_price th{
		font-size: 18px;
		color: black;
		font-weight: bold;
		background: #f3f3f3;
		border: 1px solid lightgray;
		padding:20px 0;
	}
	.tbl_price td{
		font-size:17px;
		text-align: center;
		border:1px solid lightgray;
		padding:20px 0;
	}
	.tbl_price td > p{
		font-size:17px;
	}
	.tbl_price td > ul{
		width:300px;
		margin: 0 auto;
	}
	.tbl_price td > ul > li{
		text-align: left;
		font-size:17px;
		margin-bottom:5px;
	}
	.caution{
		font-size:15px;
		margin-bottom:15px;
		margin-left:15px;
		color: #267ddf;
		font-weight: bold;
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
				<img class="pc_ver" src="${pageContext.request.contextPath}/resources/images/pc_menu02_top.png">
			</div>
			<div class="sub_nav_wrap">
				<div class="subMidContent">
					<ul class="subMidBigUl">
						<li><a href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/resources/images/subMidHomeIcon.png"></a></li>
						<li><p>제작소개</p></li>
						<li>
							<ul class="subMidSmallUl">
								<li><a href="${pageContext.request.contextPath}/menu02_1">제작형태</a></li>
								<li><a href="${pageContext.request.contextPath}/menu02_2">제작절차</a></li>
								<li><a href="${pageContext.request.contextPath}/menu02_3">견적안내</a></li>
							</ul>
						</li>
					</ul>
				</div><!-- subMidContent end -->
			</div><!-- sub_nav_wrap -->
			<div class="content_wrap">
				<div class="container">
					<div class="table_wrap">
						<p class="caution">※모든 제작 비용의 VAT(부가세)는 별도입니다.</p>
						<table class="tbl_price">
							<tr>
								<th>항목</th>
								<th>Simple</th>
								<th>Deluxe</th>
								<th>Premium</th>
							</tr>
							<tr>
								<th>제작비용</th>
								<td>150 ~ 300만원</td>
								<td>300 ~ 500만원</td>
								<td>500만원 이상</td>
							</tr>
							<tr>
								<th>페이지 수</th>
								<td>
									<p>- 메인페이지 1page</p>
									<p>- 서브페이지 15page</p>
									<p>- 게시판 5개 이내</p>
								</td>
								<td><p>- 메인페이지 1page</p>
									<p>- 서브페이지 25page</p>
									<p>- 게시판 10개 이내</p>
								</td>
								<td>
									<p>- 메인페이지 1page</p>
									<p>- 서브페이지 40page</p>
									<p>- 게시판 15개 이내</p>
								</td>
							</tr>
							<tr>
								<th>디자인 시안 수정횟수</th>
								<td>2회</td>
								<td>2회</td>
								<td>3회</td>
							</tr>
							<tr>
								<th>페이지 수정횟수</th>
								<td>2회</td>
								<td>2회</td>
								<td>3회</td>
							</tr>
							<tr>
								<th>기능</th>
								<td>게시판, 팝업</td>
								<td>simple + 배너, 회원, 접속분석</td>
								<td>Deluxe + 요청기능</td>
							</tr>
							<tr>
								<th>개발도구 및 환경</th>
								<td colspan="3">JAVA, HTML5, javascript, jquery, Spring Framework, MYSQL, Window</td>
							</tr>
							<tr>
								<th>공통사항</th>
								<td colspan="3">
									<ul>
										<li>- 도메인&호스팅 1년 무료</li>
										<li>- 구글, 네이버, 다음 주요포털 등록</li>
										<li>- 게시판, 팝업 관리</li>
										<li>- 온라인 마케팅 무료 상담</li>
									</ul>
								</td>
							</tr>
						</table>
					</div><!-- table_wrap end -->
				</div>
			</div>
		</div>
		<div id="footer">
			<jsp:include page="../include/footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>