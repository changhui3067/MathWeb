<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8" />
<title>网站关键词-网站名称</title>
<meta name="description" content="网站描述，一般显示在搜索引擎搜索结果中的描述文字，用于介绍网站，吸引浏览者点击。" />
<meta name="keywords" content="网站关键词" />
<meta name="generator" content="MetInfo 5.1.7" />
<link href="favicon.ico" rel="shortcut icon" />
<link rel="stylesheet" type="text/css" href="css/metinfo.css" />

</head>
<body>

<div>
	<jsp:include page="/WEB-INF/pages/header.jsp"></jsp:include>
</div>

<div class="nav_background">
	<div class="nav_div">
		<nav>
			<ul class="list-none">
			<li style='width:121px;' ><a href='index' class='nav'><span>首页</span></a></li>
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

<div class="sidebar inner">
    <div class="sb_nav">
	<h3 class='title myCorner' data-corner='top 5px'>友情链接</h3>
		<div class="active" id="sidebar" data-csnow="2" data-class3="0" data-jsok="2">
		<dl class="list-none navnow"><dt><a href='http://www.cms.org.cn/cms/index.htm'  ><span>中国数学学会</span></a></dt></dl>
		<dl class="list-none navnow"><dt><a href='http://www.csiam.edu.cn/'><span>中国工业与应用数学会</span></a></dt></dl>
		<dl class="list-none navnow"><dt><a href='http://www.jsmaths.com.cn/main.asp'  ><span>江苏省数学会</span></a></dt></dl>
		<dl class="list-none navnow"><dt><a href='http://math.seu.edu.cn/jsiam/'  ><span>江苏省工业与应用数学学会</span></a></dt></dl>
		<dl class="list-none navnow"><dt><a href='http://www.math.pku.edu.cn/'  ><span>北京大学数学科学学院</span></a></dt></dl>
		<dl class="list-none navnow"><dt><a href='http://math.fudan.edu.cn/'  ><span>复旦大学数学科学学院</span></a></dt></dl>
		<div class="clear"></div>		
		</div>
    </div>
    <div class="sb_box">
	    <h3 class="title">
			<div class="position">当前位置：<a href="index" title="网站首页">网站首页</a> &gt; <a href="huodong">学术交流活动</a></div>
			<span>学术交流活动</span>
		</h3>
		<div class="clear"></div>

        <div class="active" id="newslist">
			<ul class='list-none metlist'>
			<li class='list top'><span>[2012-07-17]</span><a href='showhuodong.jsp' title='请点击这里查看示例活动' target='_self'>请点击这里查看示例活动</a><img class='listhot' src='img/hot.gif' alt='图片关键词' /></li>
				<c:forEach items="${hdList}" var="Huodong" begin="${0}" end="${10}">
					<li class='list'>
						<span>[<fmt:formatDate value='${Huodong.time}' pattern='yyyy-MM-dd'/>]</span>
						<a href='showhuodong.jsp/${Huodong.id}' title='' target="_self">${Huodong.title}</a>
						<img class='listhot' src='img/hot.gif' alt='图片关键词' />
					</li>
				</c:forEach>
			
			
			
			<div id="flip"><style>
			.digg4  { padding:3px; margin:3px; text-align:center; font-family:Tahoma, Arial, Helvetica, Sans-serif;  font-size: 12px;}
			.digg4  a,.digg4 span.miy{ border:1px solid #ddd; padding:2px 5px 2px 5px; margin:2px; color:#aaa; text-decoration:none;}
			.digg4  a:hover { border:1px solid #a0a0a0; }.digg4  a:hover { border:1px solid #a0a0a0; }
			.digg4  span.current {border:1px solid #e0e0e0; padding:2px 5px 2px 5px; margin:2px; color:#4C4B4B; background-color:#f0f0f0; text-decoration:none;}
			.digg4  span.disabled { border:1px solid #f3f3f3; padding:2px 5px 2px 5px; margin:2px; color:#4C4B4B;}
			.digg4 .disabledfy { font-family: Tahoma, Verdana;} 
			</style>
				<div class='digg4 metpager_8'>
					<span class='disabled disabledfy'><b>«</b></span>
					<span class='disabled disabledfy'>‹</span>
					<span class='current'>1</span>
					<span class='disabled disabledfy'>›</span>
					<span class='disabled disabledfy'><b>»</b></span>
					</div>				
			</div>
		</div>
	</div>
    <div class="clear"></div>
</div>

<div class="clear p-line"></div>

<div>
	<jsp:include page="/WEB-INF/pages/footer.jsp"></jsp:include>
</div>

<script src="images/fun.inc.js" type="text/javascript"></script>


</body>
</html>
