<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

</head>

<body>
<script type="text/javascript">
$(function(){
	$('.date_picker').date_input();
	})
</script>
	<div class="clear"></div>
	
	<div class="stat_list">
	<ul>
		<li class="now"><a href="1.html" title="基本信息">公告添加</a></li>
		<li ><a href="1.html" title="系统邮箱配置">以往公告修改</a></li>
	</ul>
</div>


<div name="myform" target="_self" >
	<input name="action" type="hidden" value="modify" />
	<table cellpadding="2" cellspacing="1" class="table">

    <tr> 
        <td class="text"><span class="bi_tian">*</span>公告标题：</td>
        <td class="input"><input name="met_webname" type="text" class="text" id="title"/></td>
    </tr>
	
    <tr> 
        <td class="text"><span class="bi_tian">*</span>发布作者：</td>
        <td class="input">
		    <input name="met_weburl" type="text" class="text" id="author"/>
		 </td>     
    </tr>

	<tr> 
        <td class="text"><span class="bi_tian">*</span>添加附件：</td>
        <td class="input upload">
		    <input name="met_logo" type="text" class="text" />
			<input name="met_upsql" type="file" id="file_upload" />
			<script type='text/javascript'>
				$(document).ready(function(){
					metuploadify('#file_upload','upimage','met_logo');
				});
			</script>		
			</td>
    </tr>	

    <tr>
      <td class="text"><span class="bi_tian">*</span>公告内容：</td>
      <td class="input">&nbsp;</td>
    </tr> 
    <tr> 
        <td colspan="2" class="text">
			<textarea rows="30" cols="50" name="editor01" id="contentText">示例新闻或公告</textarea>
          	<%--<script type="text/javascript">CKEDITOR.replace('editor01');</script>--%>
			<%--<span class="tips">100字以内</span>--%>
		</td>
    </tr> 

	<tr> 
        <td class="text"></td>
	    <td class="submit">
			<input type="submit" value="保存" class="submit" onclick="OnSubmit(this)" name="${typeid}"/>
		</td>
    </tr>
  </table>
</div>

</body>
</html>
