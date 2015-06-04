<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>企业网站管理系统</title>
<link href="/admin/images/metinfo.css" rel="stylesheet" />
</head>
<script type="text/javascript" src="/admin/images/jQuery1.7.2.js"></script>
<script type="text/javascript" src="/admin/images/cookie.js"></script>
<script type="text/javascript" src="/admin/images/adminJs.js"></script>
<script type="text/javascript" src="/admin/images/OnSubmit.js"></script>
<script type="text/javascript" src="/admin/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="/admin/images/jquery.date_input.pack.js"></script>



<body id="indexid">
<div id="metcmsbox" style="width:980px;">
<div id="top"> 
    <div class="floatr">
	  <div class="top-r-box">
		<div class="top-right-boxr">
			<div class="top-r-t">
				<span>您好，admin</span><span>-</span><a target="_top" href="#" id="outhome" title="退出" class='tui'>退出</a>
			</div>
		</div>
	  </div>
    </div>
    <div class="floatl">
	    <a href="#" hidefocus="true" id="met_logo"><img src="images/logoen.gif" alt="MetInfo企业网站管理系统" title="MetInfo企业网站管理系统" /></a>
	</div>
</div>
<div id="content">
    <div class="floatl" id="metleft">
		<div class="nav_list" id="leftnav">
			<ul>
			<li ><a onclick="adminChoose(this)" name="11" target='main' id='nav_1_8' class="on" hidefocus="true">学会新闻公告</a></li>
			<li ><a onclick="adminChoose(this)" name="12" target='main' id='nav_1_9' hidefocus="true">学术交流活动</a></li>
			<li ><a onclick="adminChoose(this)" name="13" target='main' id='nav_1_10' hidefocus="true">数学竞赛之窗</a></li>
			<li ><a onclick="adminChoose(this)" name="1" target='main' id='nav_1_11' hidefocus="true">修改学会概况</a></li>
			<li ><a onclick="adminChoose(this)" name="2" target='main' id='nav_1_11' hidefocus="true">修改学会章程</a></li>
			<li ><a onclick="adminChoose(this)" name="3" target='main' id='nav_1_12' hidefocus="true">修改组织结构</a></li>
			<li ><a onclick="adminChoose(this)" name="4" target='main' id='nav_1_13' hidefocus="true">修改学会奖项</a></li>
			<li ><a onclick="adminChoose(this)" name="5" target='main' id='nav_1_14' hidefocus="true">修改理事会议</a></li>
			<li ><a onclick="adminChoose(this)" name="6" target='main' id='nav_1_15' hidefocus="true">修改学会照片</a></li>
			<li ><a onclick="adminChoose(this)" name="7" target='main' id='nav_1_15' hidefocus="true">修改年度计划</a></li>
			</ul>
		</div>
		<div class="clear"></div>
	</div>
    <div class="floatr" id="metright">
		<div class="iframe">
	    <div class="min" id="iframe">
			<jsp:include page="/WEB-INF/pages/admin/1.jsp"></jsp:include>
		</div>
    </div>
	<div class="clear"></div>
	</div>
</div>
<script src="/admin/images/metinfo.js" type="text/javascript"></script>

</body>
</html>
