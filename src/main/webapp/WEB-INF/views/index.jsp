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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
@media only screen and (min-width:1100px){
	#mainImg{
		display:block;
		width:40%;
		margin:100px auto;
		border:5px solid #033C60;
		padding:1%;
	}
}

@media only screen and (min-width:768px) and (max-width:1099px){
	#mainImg{
		display:block;
		width:70%;
		margin:100px auto;
		border:5px solid #033C60;
		padding:1%;
	}
}

@media only screen and (min-width:320px) and (max-width:767px){
	#mainImg{
		display:block;
		width:90%;
		margin:100px auto;
		border:5px solid #033C60;
		padding:1%;
	}
}
	
</style>
</head>
<body>
	<img id="mainImg" src="${pageContext.request.contextPath}/resources/images/fixImg2.png" alt="대구홈페이지제작전문 웹에이드">
</body>
</html>