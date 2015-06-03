<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8" />
<title>东南大学数学学会 - 首 页</title>
<meta name="description" content="东南大学数学学会" />
<meta name="keywords" content="数学、学会、东南大学" />

<link href="favicon.ico" rel="shortcut icon" />

<link rel="stylesheet" type="text/css" href="/css/metinfo.css" />
<link rel="stylesheet" type="text/css"  href="/css/css.css"/>

<script src="/js/jQuery1.7.2.js" type="text/javascript"></script>
<script src="/js/ch.js" type="text/javascript"></script>

</head>
<body>


<div>
	<jsp:include page="/WEB-INF/pages/header.jsp"></jsp:include>
</div>

<div class="nav_background">
	<div class="nav_div">
		<nav>
			<ul class="list-none">
			<li style='width:121px;' class='navdown'><a href='index' class='nav'><span>首页</span></a></li>
			<li class="line"></li>
			<li style='width:121px;' ><a href='gaikuang' class='hover-none nav'><span>学会概况</span></a></li>
			<li class="line"></li>
			<li style='width:121px;' ><a href='zhangcheng'  class='hover-none'><span>学会章程</span></a></li>
			<li class="line"></li>
			<li style='width:121px;' ><a href='jigou' class='hover-none nav'><span>组织机构</span></a></li>
			<li class="line"></li>
			<li style='width:121px;' ><a href='jiangxiang'   class='hover-none nav'><span>学会奖项</span></a></li>
			<li class="line"></li>
			<li style='width:121px;' ><a href='meeting'   class='hover-none nav'><span>理事会议</span></a></li>
			<li class="line"></li>
			<li style='width:120px;' ><a href='photo'   class='hover-none nav'><span>学会照片</span></a></li>
			<li class="line"></li>
			<li style='width:120px;' ><a href='plan'  class='hover-none nav'><span>年度计划</span></a></li>
			</ul>
		</nav>
	</div>
</div>

<div class="index inner">

<div class="aboutus style-1">

<div class="inner met_flash">

<script src='js/jquery.bxSlider.min.js'></script>
<div class='flash flash6' style='width:680px; height:262px;'>

<ul id='slider6' class='list-none'>
<li><a href='#' target='_blank' ><img src='img/slide_1.jpg'  width='675' height='262'></a></li>
<li><a href='#' target='_blank' ><img src='img/slide_2.jpg'  width='675' height='262'></a></li>
<li><a href='#' target='_blank' ><img src='img/slide_3.jpg'  width='675' height='262'></a></li>
<li><a href='#' target='_blank' ><img src='img/slide_4.jpg'  width='675' height='262'></a></li>
</ul>
</div>
<script type='text/javascript'>$(document).ready(function(){ $('#slider6').bxSlider({ mode:'vertical',autoHover:true,auto:true,pager: true,pause: 3000,controls:false});});</script>
</div>

</div>


<div class="case style-2">
<h3 class='title myCorner' data-corner='top 5px'><a href="news" title="更多" class="more">更多>></a>学会新闻公告</h3>
	<div class="active clear listel ">
	<ol class='list-none metlist'>
		<c:forEach items="${newsList}" var="news" begin="${0}" end="${7}">
			<li class='list'>
				<span class='time'><fmt:formatDate value='${news.time}' pattern='yyyy-MM-dd'/></span>
				<a href='shownews.jsp/${news.id}' target="_blank">${news.title}</a>
			</li>
		</c:forEach>
	</ol>
	<div class="clear"></div>
	</div>  	
</div>

<div class="clear"></div>
    
<div class="index-news style-1">
<h3 class="title">
<span class='myCorner' data-corner='top 5px'>学术交流活动</span>
<a href="huodong" class="more" title="链接关键词">更多>></a>
</h3>
<div class="active clear listel contour-2">
<ol class='list-none metlist'>
	<c:forEach items="${hdList}" var="hd" begin="${0}" end="${7}">
		<li class='list'>
			<span class='time'><fmt:formatDate value='${hd.time}' pattern='yyyy-MM-dd'/></span>
			<a href='showhuodong.jsp/${hd.id}' target="_blank">${hd.title}</a>
		</li>
	</c:forEach>
</ol>
</div>
</div>
    
<div class="index-news style-1">
<h3 class="title"><span class='myCorner' data-corner='top 5px'>数学竞赛之窗</span>
<a href="jingsai" class="more" title="链接关键词">更多>></a>
</h3>
<div class="active clear listel contour-2">
<ol class='list-none metlist'>
	<c:forEach items="${jsList}" var="js" begin="${0}" end="${7}">
		<li class='list'>
			<span class='time'><fmt:formatDate value='${js.time}' pattern='yyyy-MM-dd'/></span>
			<a href='shownews.jsp/${js.id}' target="_blank">${js.title}</a>
		</li>
	</c:forEach>
</ol>
</div>
</div>


<div class="index-conts style-2">
		<h3 class='title myCorner' data-corner='top 5px'>友情链接</h3>
<div class="active clear listel contour-2">
<ol class='list-none metlist'>
 <li class='list top'><a href= 'http://www.cms.org.cn/cms/index.htm' >中国数学会</a></li>
 <li class='list '><a href= 'http://www.csiam.edu.cn/' >中国工业与应用数学学会</a></li>
 <li class='list '><a href='http://www.jsmaths.com.cn/main.asp' >江苏省数学会</a></li>
 <li class='list '><a href= 'http://math.seu.edu.cn/jsiam/' >江苏省工业与应用数学学会</a></li>
 <li class='list '><a href= 'http://www.math.pku.edu.cn/' >北京大学数学科学学院 </a></li>
 <li class='list '><a href= 'http://math.fudan.edu.cn/'>复旦大学数学科学学院  </a></li>
 </ol>
 </div>
</div>

<div class="clear p-line"></div>

<div>
	<jsp:include page="/WEB-INF/pages/footer.jsp"></jsp:include>
</div>

<script src="/js/fun.inc.js" type="text/javascript"></script>
</div>

</body>
</html>

