<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:set var="path" value="${pageContext.request.contextPath }" scope="page"></c:set>
<link rel="stylesheet" type="text/css" href="${path }/css/mybase.css" />
<script type="text/javascript" src="${path }/js/jquery-3.0.0.min.js"></script>
<script type="text/javascript" src="${path }/js/function.js"></script>
<title>welcome</title>

<script type="text/javascript">
	$(function(){
		
		$("#btn").click(function(){
			delay()
		})
		
	});
	
	function delay(){
		setTimeout(window.location.href="DispatcherTest", 10000)
	}

</script>
</head>
<body>
<p class="heading1" align="center">ToolsT（JSON）测试服务平台</p>
<div align="center" >
	<br><br><br><br><br>
	<button id="btn" style="">点击进入测试页面</button>
</div>
</body>
</html>