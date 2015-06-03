<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

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
			<li style='width:121px;' class='navdown' ><a href='jigou' class='hover-none nav'><span>组织机构</span></a></li>
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
				<div class="position">当前位置：<a href="index" title="网站首页">网站首页</a> &gt; <a href="jigou" >组织结构</a> > </div>			
			<span>组织机构</span>
		</h3>
		<div class="clear"></div>

        <div class="editor active" id="showtext">
			${intro.introcontent}
			<div class="clear"></div>
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
