<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
.footer_wrap{
	width:100%;
	background: #333333;
}
.f_top_info{
	width:100%;
	background: #444;
	text-align: center;
	overflow:hidden;
}
.f_top_info > p{
	display:inline-block;
	margin: 20px 28px;
}
.f_top_info > p > a{
	color: #efefef;
	font-size:16px;
}
.footer_container{
	width:1100px;
	margin: 0 auto;
	text-align: center;
	color: #e1e1e1;
	overflow:hidden;
	padding-top:10px;
}
.f_logo_wrap{
	width:300px;
	float:left;
}
.f_logo_wrap > img{
	width:100%; 
}
.f_mid_info{
	width:610px;
	float:right;
	text-align: left;
	margin-top:30px;
}
.f_mid_info > p{
	display:inline-block;
	color: #9f9f9f;
	font-size:14px; 
	margin: 0 10px;
}
.f_bottom_info{
	clear:both;
	width:100%;
}
.f_bottom_info > p{
	font-size:15px;
	color:#e1e1e1;
	padding:5px 0 15px 0;
}
</style>
<div class="footer_wrap">
	<div class="f_top_info"> 
		<p><a href="${pageContext.request.contextPath}/menu01_1">회사소개</a></p>
		<p><a href="${pageContext.request.contextPath}/personal_info">개인정보처리방침</a></p>
		<p><a href="${pageContext.request.contextPath}/no_collect_email">이메일무단수집거부</a></p>
		<p><a href="${pageContext.request.contextPath}/menu04_1">공지사항</a></p>
		<p><a href="${pageContext.request.contextPath}/menu04_2">상담문의</a></p>
	</div><!-- f_top_info -->
	<div class="footer_container">
		<div class="f_logo_wrap">
			<img src="${pageContext.request.contextPath}/resources/images/logo_white_test2.png">
		</div>
		<div class="f_mid_info">
			<p>상호 : 웹에이드</p>
			<p>대표 : 배재진</p>
			<p>사업자등록번호 : 764-18-00720</p>
			<p>소재지 : 대구광역시 동구 팔공로 519-1</p>
			<p>TEL : 053-983-7425</p>
			<p>MAIL: master@webaid.co.kr</p>
			<p>본 홈페이지에 게시된 이메일주소가 자동수집되는것을 거부하며, 이를 위반 시 정보통신망법에 의해 처벌됨을 유념하시길 바랍니다.</p>
		</div><!-- f_mid_info -->
		<div class="f_bottom_info">
			<p>Copyrightsⓒ 2018 WEBAID All Rights Reserved.</p>
		</div>
	</div>
</div>