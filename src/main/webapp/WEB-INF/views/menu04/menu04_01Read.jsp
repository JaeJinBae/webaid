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
	.con_img{
		width:100%;
		text-align: center;
	}
	.con_img > img{
		width:900px;
	}
	.content_body{
		width:1100px;
		margin: 0 auto;
	}
	.tableWrap{
		width:100%;
		margin:0 auto;
	}
	.tableWrap > table{
		width:95%;
		margin:0 auto;
	}
	.tableWrap > table tr{
		border-bottom:2px solid #e3e3e3;
	}
	.tableWrap > table tr:first-child{
		border-top:2px solid gray;
		border-bottom:2px solid #e3e3e3;
		background: #f5f5f5;
	}
	.tableWrap > table tr:last-child{
		border-bottom:2px solid gray;
	}
	.tableWrap > table td{
		text-align: left;
		font-size:14px;
		padding:10px;
	}
	.tableWrap > table tr:last-child td, p, a, span, ul, ol, li, dl, dt, dd, table, th, fieldset, legend, input,h1,h2,h3,h4{
		font-size:inherit;
	}
	.tableWrap > table td >h1{
		font-size:25px;
	}
	.tableWrap > table tr:nth-child(2) td > span{
		margin-left:23px;
	}
	.tableWrap > table tr:nth-child(2) td > span:first-child{
		margin-left:0;
	}
	.golist{
		width:100%; 
		text-align: right;
		margin-top:20px;
		padding:0 30px;
		margin-bottom:50px;
	}
	.golist a{
		display:inline-block;
		width:60px;
		background: lightgray;
		color: gray;
		border:none;
		border-radius: 3px;
		font-size:18px;
		text-align: center;
		line-height: 30px;
	}
	.golist a:hover{
		color:black;
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
								<li><a href="${pageContext.request.contextPath}/menu04_1">공지사항</a></li>
								<li><a href="${pageContext.request.contextPath}/menu04_2">상담문의</a></li>
							</ul>
						</li>
					</ul>
				</div><!-- subMidContent end -->
			</div><!-- sub_nav_wrap -->
			<div class="content_wrap">
				<div class="container">
					<div class="con_img con_img_title">
						<img src="${pageContext.request.contextPath}/resources/images/pc_menu04_1_content_title.png">
					</div>
					<div class="content_body">
						<div class="tableWrap">
							<table>
								<tr>
									<td><h1>${item.title}</h1></td>
								</tr>
								<tr>
									<td>
										<span>작성자 : </span>${item.writer}
										<span>작성일 : </span><fmt:formatDate type="date" value="${item.regdate}"/>
										<span>조회 : </span>${item.cnt}
									</td>
								</tr>
								<tr>
									<td>${item.content}</td>
								</tr>
							</table>
						</div><!-- tableWrap end -->
						<p class="golist"><a href="${pageContext.request.contextPath}/menu04_1${pageMaker.makeSearch(pageMaker.cri.page)}">목록</a></p>
					</div><!-- content_body end -->
				</div><!-- container end -->
			</div><!-- content_wrap end -->
		</div><!-- section end -->
		<div id="footer">
			<jsp:include page="../include/footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>