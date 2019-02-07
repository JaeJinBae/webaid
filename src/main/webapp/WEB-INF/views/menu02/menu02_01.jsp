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
	.content_wrap{
		width:100%;
	}
	.container{
		width:1100px;
		margin:0 auto;
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