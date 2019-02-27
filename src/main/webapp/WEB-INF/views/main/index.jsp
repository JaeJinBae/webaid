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
	}
	.mainBanner img{
		width:100%;
	}
	.container{
		width:100%;
	}
	.content_wrap{
		width:100%;
	}
	.content01_wrap{
		width:100%;
		background: url("${pageContext.request.contextPath}/resources/images/pc_main_content01_bg.jpg");
		background-size: cover;
	}
	.content01_inner_div{
		width:1100px;
		margin:0 auto;
		padding-bottom:20px;
	} 
	.content01_inner_div > img{
		width:100%;
	}
	.content02_wrap{
		width:100%;
		background: url("${pageContext.request.contextPath}/resources/images/pc_main_content02_bg3.jpg");
		background-size: cover;
		margin-top:30px;
	}
	.content02_inner_div{
		width:1100px;
		margin:0 auto;
		padding:20px 0;
	}
	.content02_inner_div > img{
		width:100%;
	}
	.request_wrap{ 
		width:100%;
		background: url("${pageContext.request.contextPath}/resources/images/pc_main_request_bg.jpg");
		background-size: cover;
	} 
	.request_content{
		width:1100px;
		margin:0 auto;
		overflow:hidden;
		padding:70px 0;
	}
	.request_content_box1{
		width:400px;
		float:left;
	}
	.request_content_box1 > h1{
		font-size:45px;
	}
	.request_content_box1 > p{
		font-size:18px;
		line-height: 25px;
	}
	.req_txt1{
		margin-top:20px;
	} 
	.req_txt2{ 
		margin-bottom:20px;
	}
	.request_content_box1 > table tr >th{
		font-weight:600;
		text-align: left;
		font-size:18px;
		line-height: 30px;
	}
	.request_content_box1 > table tr >td{
		font-size:18px;
		padding-left:15px;
	}
	.request_content_box2{
		width:650px;
		float:right;
	}
	.request_content_box2 > form{
		width:100%;
		overflow:hidden;
	}
	.request_content_box2 > form > table{
		float:left;
		width: 300px;
	}
	.request_content_box2 > form > table td{
		padding-bottom:10px;
	}
	.request_content_box2 > form > table td > input{
		width:100%;
		padding:5px;
		font-size:18px;
	}
	.request_content_box2 > form > table td > input:-ms-input-placeholder:not(.f_c_r){
		color:#8f8f8f !important;
	}
	.f_c_r::placeholder{
		color: #A50000;
	}
	.f_c_r:-ms-input-placeholder {
		color: #A50000 !important;
	}
	.f_c_r::-webkit-input-placeholder {
		color: #A50000;
	} 
	.f_c_r::-moz-placeholder {
		color: #A50000;
	}
	.request_content_box2 > form > table td > textarea{
		width:100%;
		height:200px;
		font-size:18px;
		padding:5px;
		resize:none;
	}
	.request_content_box2 > form > table td > textarea:-ms-input-placeholder{
		color:#8f8f8f !important;
	}
	.personal_info{
		float:right;
	}
	.personal_info > h3{
		font-size:20px;
		margin-bottom:10px;
	}
	.personal_info > .personal_txt{
		width:320px;
		height:300px;
		overflow: scroll;
		border:1px solid lightgray;
		padding:10px;
		background: #fff;
	}
	.personal_info > label{
		display:block;
		margin: 10px 0 24px 0;
		font-size:14px;
	}
	.personal_info > label > input{
		vertical-align: middle;
		margin-right:5px;
	}
	.submitBtn{
		width:100%;
	}
	.submitBtn > input[type='submit']{
		width:100%;
		height:40px;
		text-align: center;
		font-size:15px;
		font-weight:bold;
		letter-spacing:2px;
		background: #033c60;
		color:#fff;
		border-style:none;
		cursor: pointer;
	}
	#footer{
		width:100%;
	}
}
</style>
<script>
	$(function(){
		$(".mainBanner").slick({
			arrows:false,
			infinite:true,
			speed:500,
			fade:true,
			cssEase:'linear',
			autoplay:true,
			autoplaySpeed:4000,
			dots:true,
		});	
		
		//간편견적문의
		$("#form_tag").submit(function(){
			var pname = $("input[name='pname']").val();
			var phone = $("input[name='phone']").val();
			var email = $("input[name='email']").val();
			var agreement_btn = $(".agreement_btn").prop("checked");
			
			if(pname=="" || pname==null){
				alert("담당자를 입력해주세요.");
				return false;
			}
			if(phone == "" || phone == null){
				alert("연락처를 입력해주세요.");
				return false;
			}
			if(email=="" || email==null){
				alert("이메일을 입력해주세요.");
				return false;
			}
			if(agreement_btn == false){
				alert("개인정보수집에 동의하지 않으면 문의신청을 할 수 없습니다.");
				return false;
			}
			
			var ask = confirm("입력하신 내용을 의뢰하시겠습니까?");
			
			if(ask == true){
				
			}else{
				return false;
			}
			
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
			<div class="mainBanner">
				<img src="${pageContext.request.contextPath}/resources/images/pc_main_banner1.jpg">
				<img src="${pageContext.request.contextPath}/resources/images/pc_main_banner2.jpg">
				<img src="${pageContext.request.contextPath}/resources/images/pc_main_banner3.jpg">
			</div><!-- mainBanner end -->
			<div class="container">
				<div class="content_wrap">
					<div class="content01_wrap">
						<div class="content01_inner_div">
							<img src="${pageContext.request.contextPath}/resources/images/pc_main_content01_title.png">
							<img src="${pageContext.request.contextPath}/resources/images/pc_main_content01_img1.png">
						</div><!-- content01_inner_div end -->
					</div><!-- content01_wrap end -->
					<div class="content02_wrap">
						<div class="content02_inner_div">
							<img src="${pageContext.request.contextPath}/resources/images/pc_main_content02_img1.png">
						</div><!-- content02_inner_div end -->
					</div><!-- content02_wrap end -->
				</div><!-- content_wrap end -->
				<div class="request_wrap" id="request_wrap">
					<div class="request_content"><!-- http://www.way21.co.kr/homepage/homepage.php -->
						<div class="request_content_box1">
							<h1>견적문의</h1>
							<p class="req_txt1">다양한 업종의 고객님들과 함께하며 쌓은 노하우로</p>
							<p class="req_txt2">최고의 결과물을 전해드립니다.</p>
							<table>
								<tr>
									<th>TEL .</th>
									<td>053-983-7425 / 010-2837-7425</td>
								</tr>
								<tr>
									<th>EMAIL .</th>
									<td>master@webaid.co.kr</td>
								</tr>
								<tr>
									<th>운영시간 .</th>
									<td>AM 09:30 ~ PM 06:30</td>
								</tr>
								<tr>
									<th>점심시간 .</th>
									<td>PM 12:00 ~ PM 01:00</td>
								</tr>
								<tr>
									<th>KAKAO .</th>
									<td>webaid</td>
								</tr>
							</table>
						</div><!-- request_content_box1 -->
						<div class="request_content_box2">
							<form id="form_tag"action="mainpage_request" method="post">
								<table>
									<tr>
										<td><input type="text" name="cname" placeholder="회사"></td>
									</tr>
									<tr>
										<td><input class="f_c_r" type="text" name="pname" placeholder="담당자 (필수입력)"></td>
									</tr>
									<tr>
										<td><input class="f_c_r" type="text" name="phone" placeholder="연락처 (필수입력)"></td>
									</tr>
									<tr>
										<td><input class="f_c_r" type="text" name="email" placeholder="이메일 (필수입력)"></td>
									</tr>
									<tr>
										<td><input type="text" name="budget" placeholder="예산"></td>
									</tr>
									<tr>
										<td><textarea name="content" placeholder="문의내용(참고사이트, 문의사항 등)"></textarea></td>
									</tr>
								</table>
								<div class="personal_info">
									<h3>개인정보수집에 관한 동의</h3>
									<div class="personal_txt">
										<jsp:include page="../include/personal_info.jsp"></jsp:include>
									</div>
									<label>
										<input class="agreement_btn" type="checkbox" value="true">위 개인정보수집에 동의합니다.
									</label>
									<div class="submitBtn">
										<input type="submit" value="문의신청">
									</div>
								</div><!-- personal_info end -->
							</form>
						</div><!-- request_content_box2 end -->
					</div><!-- request_content end -->
				</div><!-- request_wrap end -->
			</div><!-- container end -->
		</div><!-- section end -->
		<div id="footer">
			<jsp:include page="../include/footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>