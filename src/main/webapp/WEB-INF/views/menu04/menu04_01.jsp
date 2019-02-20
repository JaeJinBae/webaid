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
		width:1100px;
		margin:0 auto;
		padding:50px 0;
		padding-top:100px;
	}
	.tableWrap{
		width:100%;
		margin:0 auto;
	}
	.tableWrap > table{
		width:95%;
		margin:0 auto;
	}
	.tableWrap > table tr:first-child{
		border-top:2px solid #e3e3e3;
		border-bottom:2px solid gray;
	}
	.tableWrap > table th{
		font-size:16px;
		padding:12px 5px;
		background: #efefef;
	}
	.tableWrap > table th:first-child{
		width:50px;
	}
	.tableWrap > table th:nth-child(2){
		width:535px;
	}
	.tableWrap > table th:nth-child(3){
		width:60px;
	}
	.tableWrap > table th:nth-child(4){
		width:90px;
	}
	.tableWrap > table th:last-child{
		width:55px;
	}
	.tableWrap > table td{
		text-align: center;
		font-size:14px;
		padding:10px 5px;
		border-bottom:1px solid #e3e3e3;
	}
	.tableWrap > table tr td:nth-child(2){
		text-align: left;
		padding-left:10px;
		overflow:hidden;
		white-space:nowrap;
		text-overflow:ellipsis;
	}
	.page{
		clear:both;
		width:626px; 
		margin:70px auto;
		margin-bottom:50px;
	}
	.page > ul{
		text-align: center;
	}
	.page ul li{
		width:45px;
		height:40px;
		margin:0 auto;
		list-style: none;
		display: inline-block;
		text-align:center;
		border:1px solid #e9e9e9;
	}
	.active1{
		background: gray;
	}
	.active2{
		font-weight: bold;
		color:white;
	}
	.page ul li a{
		font-size:1.1em;
		line-height: 40px;
	}
	#searchBtn{
		width:50px;
		height:24px;
		background: gray;
		color:white;
		border:none;
		border-radius: 3px;
		font-size:15px;
	}
	.searchWrap{
		text-align: center;
		margin-bottom:50px;
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
				<img class="pc_ver" src="${pageContext.request.contextPath}/resources/images/pc_menu04_top.png">
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
					<div class="tableWrap">
						<table>
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>등록일</th>
								<th>조회</th>
							</tr>
							<c:choose>
						    <c:when test="${fn:length(list) == 0}">
					        	<tr>
					        		<td colspan="5" style=" text-align: center;">등록된 게시물이 없습니다.</td>
					        	</tr>
						    </c:when>
						    <c:otherwise>
						        <c:forEach var="item" items="${list}">
									<tr>
										<td class="bno">${item.bno}</td>
										<td class="title"><a href="${pageContext.request.contextPath}/noticeRead${pageMaker.makeSearch(pageMaker.cri.page)}&bno=${item.bno}">${item.title}</a></td>
										<td>${item.writer}</td>
										<td><fmt:formatDate type="date" value="${item.regdate}"/></td>
										<td>${item.cnt}</td>
									</tr>	
								</c:forEach>
						    </c:otherwise> 
						</c:choose>
						</table>
						<div class="page">
							<ul>
								<c:if test="${pageMaker.prev}">
									<li><a href="${pageMaker.makeSearch(pageMaker.startPage-1) }">&laquo;</a></li>
								</c:if>
								
								<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
									<li ${pageMaker.cri.page == idx? 'class=active1':''}><a href="${pageMaker.makeSearch(idx)}" ${pageMaker.cri.page == idx? 'class=active2':''}>${idx}</a></li>
								</c:forEach>
								
								<c:if test="${pageMaker.next}">
									<li><a href="${pageMaker.makeSearch(pageMaker.endPage+1)}">&raquo;</a></li>
								</c:if>
								
							</ul>
						</div><!-- page end -->
						<div class="searchWrap">
							<select name="searchType">
								<option value="n">선택해주세요.</option>
								<option value="t" ${cri.searchType=='t'?'selected':''}>제목</option>
								<option value="c" ${cri.searchType=='b'?'selected':''}>번호</option>
							</select> 
							<input type="text" name="keyword" id="keywordInput" value="${cri.keyword}">
							<button id="searchBtn">검색</button>
						</div>
					</div><!-- tableWrap end -->
				</div><!-- container end -->
			</div><!-- content_wrap end -->
		</div><!-- section end -->
		<div id="footer">
			<jsp:include page="../include/footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>