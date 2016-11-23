<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:set var="path" value="${pageContext.request.contextPath }" scope="page"></c:set>
<title>ToolsT 测试服务</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="${path }/css/mybase.css" />
<script type="text/javascript" src="${path }/js/jquery-3.0.0.min.js"></script>
<script type="text/javascript" src="${path }/js/myfunction.js"></script>
<script type="text/javascript">
	$developer = '{"apikey":"SHMFX2NF","secretkey":"28a95fbbb5eb415a9736d98929a802c3"}';

	$device = '{"dnum":"123"}';
	$user = '{"userid":"9950000000946808"}';

	$(document).ready(function() {
		$("h3").each(function() {
			$table = $(this).next();
			$table.show();
			$(this).click(function() {
				$("table").hide();
				$(this).next().toggle();
			});
		});
	});
	$(window).scroll(function() {
		var top = $(window).scrollTop() + 100;
		var left = $(window).scrollLeft() + 620;
		$("#d_textarea").css({
			left : left + "px",
			top : top + "px"
		});
	});
</script>
</head>

<body>
	<div id="content">
		<form method="post" action="http://www.5itest.tv/api/interface"
			id="post-form" target="_blank">
			<p class="heading1" align="center">ToolsT（JSON）测试服务平台</p>
			<div>
				<p class="intro">
				请选择/输入测试的URL:
				 <select id="env" name="env" style="width: 150px" >
				 	<option value="">请选择...
					<option value="http://192.168.3.184:8080/plugin">plugin 接口</option>
					<option value="http://192.168.3.184:8080/metadata">metadata</option>
					<option value="http://192.168.3.184:8080/recommend">recommend</option>
					<option value="http://192.168.3.184:8080/advertise">advertise</option>
					<option value="http://192.168.3.184:8080/account">account</option>
					<option value="http://192.168.3.184:8080/ims">ims</option>
					<option value="http://localhost:8080/XMLParseService/program/list">EPGService</option>
					<option value="http://localhost:8080/XMLParseService/program/list/all">EPGProgramAll</option>
				</select>
				/
				<input name="url" id="url" value="http://ip:port/resource">
				
				</p>
				<div style="width: 40%; float: left">
				
				
					<h3>请输入测试参数项</h3>
					<table width="475" cellspacing="0" cellpadding="4" frame="box"
						bordercolor="#dcdcdc" rules="none">
						<tr>
							<td class="frmHeader" background="#dcdcdc"
								style="border-right: 2px solid white; width: 120px">参数</td>
							<td class="frmHeader" background="#dcdcdc">值</td>
						</tr>
						
						
						
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">method:</td>
							<td><input class="frmInput_normal" type="text" size="20"
								name="method" id="GetToolsT_method" value=""></td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">parameters(json格式):</td>
							<td><input class="frmInput_max" type="text" size="20"
								name="parameters" id="GetToolsT_params" value=""></td>
						</tr>
						
						<tr>
							<td></td>
							<td align="right"><input type="button" value="调用"
								class="button" onclick="GetToolsT_Req();"></td>
						</tr>
					</table>
					
					
				
					
				
				</div>
				<div id="d_textarea"
					style="width: 50%; float: left; position: absolute; top: 85px; left: 620px;">
					<textarea name="jsonstr" id="jsonstr"
						style="width: 95%; height: 350px;"></textarea>
					<p>
						<input type="button" id="mysubmit" class="button"
							onclick="postContent();"
							style="font-size: 32px; line-height: 150%;" value="提交">
					</p>
				</div>
			</div>
		</form>
	</div>
	<div id="result"></div>
</body>
</html>