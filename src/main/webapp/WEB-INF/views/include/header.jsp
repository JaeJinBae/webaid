<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
@media only screen and (min-width:1100px){
	.header_wrap{
		width:100%;
		background: #fff;
		box-shadow: 0 0px 5px 0px gray;
		margin-bottom:4px;
	}
	.topInfo{
		width:100%;
		height:40px;
		background: #072331;
	}
	.topInfo_txt_div{
		width:1100px;
		margin:0 auto;
		text-align: right;
	}
	.topInfo_txt_div > a{
		color:#fff;
		font-size:16px;
		line-height: 40px;
		margin-left:20px;
	}
	.header_container{
		width:1100px;
		margin:0 auto;
		overflow:hidden;
		padding: 10px 0;
	}
	.logo_wrap{
		float:left;
		width:215px;
		padding:0 15px;
	}
	.logo_wrap > a{
		width:100%;
	}
	.logo_wrap > a > img{
		width:100%;
	}
	.menu_wrap{
		float:right;
		width:80%;
	}
	.menu_wrap > ul{
		overflow: hidden;
		
	}
	.menu_wrap > ul > li{
		float:left;
		line-height: 80px;
		width:20%;
		text-align: center;
	}
	.menu_wrap > ul > li > a{
		font-size:19px;
		font-family: NanumSB;
		color:#3a3a3a;
	}
	.menu_wrap > ul > li > a:hover{
		text-decoration: none;
		color: #3685b6; /*마우스오버시 자연스럽게*/
		transition-duration: 300ms;
		transition-property: color, border-color, background-color;
		transition-timing-function: ease;
	}
}
</style>
<script>

</script>
<div class="header_wrap">
	<div class="topInfo">
		<div class="topInfo_txt_div">
			<!-- <a href="tel:053-983-7425">전화상담: 053-983-7425</a>
			<a href="http://pf.kakao.com/_xhxjdDj">카카오톡 상담: webaid</a> -->
		</div>
	</div>
	<div class="header_container">
		<div class="logo_wrap">
			<a href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/resources/images/logo.png"></a>
		</div><!-- logo_wrap end -->
		<div class="menu_wrap">
			<ul>
				<li><a href="${pageContext.request.contextPath}/menu01_1">회사소개</a></li>
				<li><a href="${pageContext.request.contextPath}/menu02_1">제작소개</a></li>
				<li><a href="${pageContext.request.contextPath}/menu03_1">포트폴리오</a></li>
				<li><a href="${pageContext.request.contextPath}/menu04_1">고객센터</a></li>
				<li><a href="${pageContext.request.contextPath}/#request_wrap">간편문의</a></li>
			</ul>
		</div><!-- menu_wrap end -->
	</div><!-- header_container end -->
</div><!-- header_wrap end -->