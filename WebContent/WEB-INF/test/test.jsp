<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:set var="path" value="${pageContext.request.contextPath }" scope="page"></c:set>
<title>Service Web 服务</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="${path }/css/base.css" />
<script type="text/javascript" src="${path }/js/jquery-3.0.0.min.js"></script>
<script type="text/javascript" src="${path }/js/function.js"></script>
<script type="text/javascript">
	$developer = '{"apikey":"SHMFX2NF","secretkey":"28a95fbbb5eb415a9736d98929a802c3"}';

	$device = '{"dnum":"123"}';
	$user = '{"userid":"9950000000946808"}';

	$(document).ready(function() {
		$("h3").each(function() {
			$table = $(this).next();
			$table.hide();
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
			<p class="heading1">智能EPG广电标准版本 接口 Ver1.1.9（JSON）测试</p>
			<div style="zoom: 1; overflow: hidden;">
				<p class="intro">
					选择测试平台 <select id="env" name="env">
						<option value="http://125.62.47.161/test/json?p=161">重网接口161</option>
						<option value="http://125.62.47.161/test/json?p=25">重网接口25</option>
						<option value="http://125.62.47.161/test/json?p=26">重网接口26</option>
						<option value="http://125.62.47.161/test/json?p=27">重网接口27</option>
						<option value="http://125.62.47.161/test/json?p=28">重网接口28</option>
						<option value="http://125.62.47.161/test/json?p=29">重网接口29</option>
					</select>，可以点击<a href="Ver2.1.9.pdf" target="_blank">此处</a>，查看接口文档说明。
				</p>
				<div style="width: 40%; float: left">
					<h3>CH01 GetChannels【获取频道列表】</h3>
					<table width="400" cellspacing="0" cellpadding="4" frame="box"
						bordercolor="#dcdcdc" rules="none">
						<tr>
							<td class="frmHeader" background="#dcdcdc"
								style="border-right: 2px solid white; width: 120px">参数</td>
							<td class="frmHeader" background="#dcdcdc">值</td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">type:</td>
							<td><label><input name="GetChannels_type"
									type="radio" value="cctv" checked />cctv </label> <label><input
									name="GetChannels_type" type="radio" value="tv" />tv </label> <label><input
									name="GetChannels_type" type="radio" value="local" />local </label> <label><input
									name="GetChannels_type" type="radio" value="hd" />hd </label> <label><input
									name="GetChannels_type" type="radio" value="pay" />pay </label> <label><input
									name="GetChannels_type" type="radio" value="other" />other </label></td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">showlive:</td>
							<td><label><input name="GetChannels_showlive"
									type="radio" value="true" checked />yes </label> <label><input
									name="GetChannels_showlive" type="radio" value="false" />no </label></td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">order:</td>
							<td><label><input name="GetChannels_order"
									type="radio" value="0" checked />频道号 </label> <label><input
									name="GetChannels_order" type="radio" value="1" />频道名称 </label> <label><input
									name="GetChannels_order" type="radio" value="2" />频道热度 </label></td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">page/pagesize:</td>
							<td><input class="frmInput" type="text" size="5" name="page"
								id="GetChannels_page" value="1"> / <input
								class="frmInput" type="text" size="5" name="pagesize"
								id="GetChannels_pagesize" value="10"></td>
						</tr>
						<tr>
							<td></td>
							<td align="right"><input type="button" value="调用"
								class="button" onclick="GetChannels();"></td>
						</tr>
					</table>
					<h3>CH02 GetLiveProgramsByRecommend【获取直播推荐】</h3>
					<table width="400" cellspacing="0" cellpadding="4" frame="box"
						bordercolor="#dcdcdc" rules="none">
						<tr>
							<td class="frmHeader" background="#dcdcdc"
								style="border-right: 2px solid white; width: 120px">参数</td>
							<td class="frmHeader" background="#dcdcdc">值</td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">page/pagesize:</td>
							<td><input class="frmInput" type="text" size="5" name="page"
								id="GetLiveProgramsByRecommend_page" value="1"> / <input
								class="frmInput" type="text" size="5" name="pagesize"
								id="GetLiveProgramsByRecommend_pagesize" value="10"></td>
						</tr>
						<tr>
							<td></td>
							<td align="right"><input type="button" value="调用"
								class="button" onclick="GetLiveProgramsByRecommend();"></td>
						</tr>
					</table>
					<h3>CH03 GetWikisByHot【获取大家都在看】</h3>
					<table width="400" cellspacing="0" cellpadding="4" frame="box"
						bordercolor="#dcdcdc" rules="none">
						<tr>
							<td class="frmHeader" background="#dcdcdc"
								style="border-right: 2px solid white; width: 120px">参数</td>
							<td class="frmHeader" background="#dcdcdc">值</td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">page/pagesize:</td>
							<td><input class="frmInput" type="text" size="5" name="page"
								id="GetWikisByHot_page" value="1"> / <input
								class="frmInput" type="text" size="5" name="pagesize"
								id="GetWikisByHot_pagesize" value="10"></td>
						</tr>
						<tr>
							<td></td>
							<td align="right"><input type="button" value="调用"
								class="button" onclick="GetWikisByHot();"></td>
						</tr>
					</table>
					<h3>CH04 GetWikisByNew【获取最新榜列表】</h3>
					<table width="400" cellspacing="0" cellpadding="4" frame="box"
						bordercolor="#dcdcdc" rules="none">
						<tr>
							<td class="frmHeader" background="#dcdcdc"
								style="border-right: 2px solid white; width: 120px">参数</td>
							<td class="frmHeader" background="#dcdcdc">值</td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">page/pagesize:</td>
							<td><input class="frmInput" type="text" size="5" name="page"
								id="GetWikisByNew_page" value="1"> / <input
								class="frmInput" type="text" size="5" name="pagesize"
								id="GetWikisByNew_pagesize" value="10"></td>
						</tr>
						<tr>
							<td></td>
							<td align="right"><input type="button" value="调用"
								class="button" onclick="GetWikisByNew();"></td>
						</tr>
					</table>
					<h3>CH05 GetWikisByHit【获取热播榜列表】</h3>
					<table width="400" cellspacing="0" cellpadding="4" frame="box"
						bordercolor="#dcdcdc" rules="none">
						<tr>
							<td class="frmHeader" background="#dcdcdc"
								style="border-right: 2px solid white; width: 120px">参数</td>
							<td class="frmHeader" background="#dcdcdc">值</td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">page/pagesize:</td>
							<td><input class="frmInput" type="text" size="5" name="page"
								id="GetWikisByHit_page" value="1"> / <input
								class="frmInput" type="text" size="5" name="pagesize"
								id="GetWikisByHit_pagesize" value="10"></td>
						</tr>
						<tr>
							<td></td>
							<td align="right"><input type="button" value="调用"
								class="button" onclick="GetWikisByHit();"></td>
						</tr>
					</table>
					<hr>
					<h3>CH06 GetActorsByFollow【获取关注的明星榜列表】</h3>
					<table width="400" cellspacing="0" cellpadding="4" frame="box"
						bordercolor="#dcdcdc" rules="none">
						<tr>
							<td class="frmHeader" background="#dcdcdc"
								style="border-right: 2px solid white; width: 120px">参数</td>
							<td class="frmHeader" background="#dcdcdc">值</td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">page/pagesize:</td>
							<td><input class="frmInput" type="text" size="5" name="page"
								id="GetActorsByFollow_page" value="1"> / <input
								class="frmInput" type="text" size="5" name="pagesize"
								id="GetActorsByFollow_pagesize" value="10"></td>
						</tr>
						<tr>
							<td></td>
							<td align="right"><input type="button" value="调用"
								class="button" onclick="GetActorsByFollow();"></td>
						</tr>
					</table>
					<h3>CH07 GetWikisByFav【获取收藏榜列表】</h3>
					<table width="400" cellspacing="0" cellpadding="4" frame="box"
						bordercolor="#dcdcdc" rules="none">
						<tr>
							<td class="frmHeader" background="#dcdcdc"
								style="border-right: 2px solid white; width: 120px">参数</td>
							<td class="frmHeader" background="#dcdcdc">值</td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">page/pagesize:</td>
							<td><input class="frmInput" type="text" size="5" name="page"
								id="GetWikisByFav_page" value="1"> / <input
								class="frmInput" type="text" size="5" name="pagesize"
								id="GetWikisByFav_pagesize" value="10"></td>
						</tr>
						<tr>
							<td></td>
							<td align="right"><input type="button" value="调用"
								class="button" onclick="GetWikisByFav();"></td>
						</tr>
					</table>
					<h3>CH08 GetSimilarVodsByChannel【获取频道正在播出的节目相似影片列表(可点播)】</h3>
					<table width="400" cellspacing="0" cellpadding="4" frame="box"
						bordercolor="#dcdcdc" rules="none">
						<tr>
							<td class="frmHeader" background="#dcdcdc"
								style="border-right: 2px solid white; width: 120px">参数</td>
							<td class="frmHeader" background="#dcdcdc">值</td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">channelId:</td>
							<td><input class="frmInput" type="text" size="20"
								name="channelId" id="GetSimilarVodsByChannel_channelId"
								value="cctv1"></td>
						</tr>
						<tr>
							<td></td>
							<td align="right"><input type="button" value="调用"
								class="button" onclick="GetSimilarVodsByChannel();"></td>
						</tr>
					</table>
					<h3>CH09 GetWikiInfo【获取wiki详情】</h3>
					<table width="400" cellspacing="0" cellpadding="4" frame="box"
						bordercolor="#dcdcdc" rules="none">
						<tr>
							<td class="frmHeader" background="#dcdcdc"
								style="border-right: 2px solid white; width: 120px">参数</td>
							<td class="frmHeader" background="#dcdcdc">值</td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">wikiId:</td>
							<td><input class="frmInput" type="text" size="20"
								name="wikiId" id="GetWikiInfo_wikiId"
								value="4ee1ba83edcd8866270010bd"></td>
						</tr>
						<tr>
							<td></td>
							<td align="right"><input type="button" value="调用"
								class="button" onclick="GetWikiInfo();"></td>
						</tr>
					</table>
					<h3>CH10 GetActorInfo【获取演员详情页面】</h3>
					<table width="400" cellspacing="0" cellpadding="4" frame="box"
						bordercolor="#dcdcdc" rules="none">
						<tr>
							<td class="frmHeader" background="#dcdcdc"
								style="border-right: 2px solid white; width: 120px">参数</td>
							<td class="frmHeader" background="#dcdcdc">值</td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">wikiId:</td>
							<td><input class="frmInput" type="text" size="20"
								name="wikiId" id="GetActorInfo_wikiId"
								value="4d2ec8b32f2a241823000105"></td>
						</tr>
						<tr>
							<td></td>
							<td align="right"><input type="button" value="调用"
								class="button" onclick="GetActorInfo();"></td>
						</tr>
					</table>
					<hr>
					<h3>CH11 GetWikisByCategory【wiki分类筛选】</h3>
					<table width="400" cellspacing="0" cellpadding="4" frame="box"
						bordercolor="#dcdcdc" rules="none">
						<tr>
							<td class="frmHeader" background="#dcdcdc"
								style="border-right: 2px solid white; width: 120px">参数</td>
							<td class="frmHeader" background="#dcdcdc">值</td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">sort:</td>
							<td><label><input name="GetWikisByCategory_sort"
									type="radio" value="1" checked />最热 </label> <label><input
									name="GetWikisByCategory_sort" type="radio" value="2" />最新 </label> <label><input
									name="GetWikisByCategory_sort" type="radio" value="3" />评分 </label></td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">model:</td>
							<td><label><input name="GetWikisByCategory_model"
									type="radio" value="film" checked />电影 </label> <label><input
									name="GetWikisByCategory_model" type="radio" value="teleplay" />电视剧
							</label> <label><input name="GetWikisByCategory_model"
									type="radio" value="television" />综艺节目 </label></td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">tag:</td>
							<td><input class="frmInput" type="text" size="20" name="tag"
								id="GetWikisByCategory_tag" value=""></td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">country:</td>
							<td><input class="frmInput" type="text" size="20"
								name="country" id="GetWikisByCategory_country" value=""></td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">released:</td>
							<td><input class="frmInput" type="text" size="20"
								name="released" id="GetWikisByCategory_released" value=""></td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">page/pagesize:</td>
							<td><input class="frmInput" type="text" size="5" name="page"
								id="GetWikisByCategory_page" value="1"> / <input
								class="frmInput" type="text" size="5" name="pagesize"
								id="GetWikisByCategory_pagesize" value="10"></td>
						</tr>
						<tr>
							<td></td>
							<td align="right"><input type="button" value="调用"
								class="button" onclick="GetWikisByCategory();"></td>
						</tr>
					</table>
					<h3>CH12 SearchWikis【检索维基（分类、 首字母、 关键字）】</h3>
					<table width="400" cellspacing="0" cellpadding="4" frame="box"
						bordercolor="#dcdcdc" rules="none">
						<tr>
							<td class="frmHeader" background="#dcdcdc"
								style="border-right: 2px solid white; width: 120px">参数</td>
							<td class="frmHeader" background="#dcdcdc">值</td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">model:</td>
							<td><label><input name="SearchWikis_model"
									type="radio" value="" checked />全部</label> <label><input
									name="SearchWikis_model" type="radio" value="film" />电影 </label> <label><input
									name="SearchWikis_model" type="radio" value="teleplay" />电视剧 </label>
								<label><input name="SearchWikis_model" type="radio"
									value="television" />综艺节目 </label></td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">letter:</td>
							<td><input class="frmInput" type="text" size="20"
								name="letter" id="SearchWikis_letter" value=""></td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">title:</td>
							<td><input class="frmInput" type="text" size="20"
								name="title" id="SearchWikis_title" value=""></td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">page/pagesize:</td>
							<td><input class="frmInput" type="text" size="5" name="page"
								id="SearchWikis_page" value="1"> / <input
								class="frmInput" type="text" size="5" name="pagesize"
								id="SearchWikis_pagesize" value="10"></td>
						</tr>
						<tr>
							<td></td>
							<td align="right"><input type="button" value="调用"
								class="button" onclick="SearchWikis();"></td>
						</tr>
					</table>
					<h3>CH13 GetSearchKeyword【获取热门搜索关键字列表】</h3>
					<table width="400" cellspacing="0" cellpadding="4" frame="box"
						bordercolor="#dcdcdc" rules="none">
						<tr>
							<td class="frmHeader" background="#dcdcdc"
								style="border-right: 2px solid white; width: 120px">参数</td>
							<td class="frmHeader" background="#dcdcdc">值</td>
						</tr>
						<tr>
							<td></td>
							<td align="right"><input type="button" value="调用"
								class="button" onclick="GetSearchKeyword();"></td>
						</tr>
					</table>
					<h3>CH14 GetSimilarWikis【获取Wiki相似列表】</h3>
					<table width="400" cellspacing="0" cellpadding="4" frame="box"
						bordercolor="#dcdcdc" rules="none">
						<tr>
							<td class="frmHeader" background="#dcdcdc"
								style="border-right: 2px solid white; width: 120px">参数</td>
							<td class="frmHeader" background="#dcdcdc">值</td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">wikiId:</td>
							<td><input class="frmInput" type="text" size="20"
								name="wikiId" id="GetSimilarWikis_wikiId"
								value="4ee1ba83edcd8866270010bd"></td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">page/pagesize:</td>
							<td><input class="frmInput" type="text" size="5" name="page"
								id="GetSimilarWikis_page" value="1"> / <input
								class="frmInput" type="text" size="5" name="pagesize"
								id="GetSimilarWikis_pagesize" value="10"></td>
						</tr>
						<tr>
							<td></td>
							<td align="right"><input type="button" value="调用"
								class="button" onclick="GetSimilarWikis();"></td>
						</tr>
					</table>
					<h3>CH15 GetWikiInfoByChannel【获取维基的演员列表】</h3>
					<table width="400" cellspacing="0" cellpadding="4" frame="box"
						bordercolor="#dcdcdc" rules="none">
						<tr>
							<td class="frmHeader" background="#dcdcdc"
								style="border-right: 2px solid white; width: 120px">参数</td>
							<td class="frmHeader" background="#dcdcdc">值</td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">channelId:</td>
							<td><input class="frmInput" type="text" size="20"
								name="wikiId" id="GetWikiInfoByChannel_channelId" value="cctv1"></td>
						</tr>
						<tr>
							<td></td>
							<td align="right"><input type="button" value="调用"
								class="button" onclick="GetWikiInfoByChannel();"></td>
						</tr>
					</table>
					<hr>
					<h3>CH16 SetFavChannelByUser【添加设置用户喜欢的频道】</h3>
					<table width="400" cellspacing="0" cellpadding="4" frame="box"
						bordercolor="#dcdcdc" rules="none">
						<tr>
							<td class="frmHeader" background="#dcdcdc"
								style="border-right: 2px solid white; width: 120px">参数</td>
							<td class="frmHeader" background="#dcdcdc">值</td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">channelId:</td>
							<td><input class="frmInput" type="text" size="20"
								name="channelId" id="SetFavChannelByUser_channelId"
								value="cctv1"></td>
						</tr>
						<tr>
							<td></td>
							<td align="right"><input type="button" value="调用"
								class="button" onclick="SetFavChannelByUser();"></td>
						</tr>
					</table>
					<h3>CH17 GetFavChannelsByUser【获取用户喜欢的频道】</h3>
					<table width="400" cellspacing="0" cellpadding="4" frame="box"
						bordercolor="#dcdcdc" rules="none">
						<tr>
							<td class="frmHeader" background="#dcdcdc"
								style="border-right: 2px solid white; width: 120px">参数</td>
							<td class="frmHeader" background="#dcdcdc">值</td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">showlive:</td>
							<td><label><input
									name="GetFavChannelsByUser_showlive" type="radio" value="true"
									checked />yes </label> <label><input
									name="GetFavChannelsByUser_showlive" type="radio" value="false" />no
							</label></td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">page/pagesize:</td>
							<td><input class="frmInput" type="text" size="5" name="page"
								id="GetFavChannelsByUser_page" value="1"> / <input
								class="frmInput" type="text" size="5" name="pagesize"
								id="GetFavChannelsByUser_pagesize" value="10"></td>
						</tr>
						<tr>
							<td></td>
							<td align="right"><input type="button" value="调用"
								class="button" onclick="GetFavChannelsByUser();"></td>
						</tr>
					</table>
					<h3>CH18 DelFavChannelByUser【删除我的收藏】</h3>
					<table width="400" cellspacing="0" cellpadding="4" frame="box"
						bordercolor="#dcdcdc" rules="none">
						<tr>
							<td class="frmHeader" background="#dcdcdc"
								style="border-right: 2px solid white; width: 120px">参数</td>
							<td class="frmHeader" background="#dcdcdc">值</td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">channelId:</td>
							<td><input class="frmInput" type="text" size="20"
								name="channelId" id="DelFavChannelByUser_channelId"
								value="cctv1"></td>
						</tr>
						<tr>
							<td></td>
							<td align="right"><input type="button" value="调用"
								class="button" onclick="DelFavChannelByUser();"></td>
						</tr>
					</table>
					<h3>CH19 SetFavWikiByUser【添加wiki收藏】</h3>
					<table width="400" cellspacing="0" cellpadding="4" frame="box"
						bordercolor="#dcdcdc" rules="none">
						<tr>
							<td class="frmHeader" background="#dcdcdc"
								style="border-right: 2px solid white; width: 120px">参数</td>
							<td class="frmHeader" background="#dcdcdc">值</td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">wikiId:</td>
							<td><input class="frmInput" type="text" size="20"
								name="wikiId" id="SetFavWikiByUser_wikiId"
								value="4eadff2bedcd884970001ace"></td>
						</tr>
						<tr>
							<td></td>
							<td align="right"><input type="button" value="调用"
								class="button" onclick="SetFavWikiByUser();"></td>
						</tr>
					</table>
					<h3>CH20 GetFavWikisByUser【获取wiki收藏】</h3>
					<table width="400" cellspacing="0" cellpadding="4" frame="box"
						bordercolor="#dcdcdc" rules="none">
						<tr>
							<td class="frmHeader" background="#dcdcdc"
								style="border-right: 2px solid white; width: 120px">参数</td>
							<td class="frmHeader" background="#dcdcdc">值</td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">page/pagesize:</td>
							<td><input class="frmInput" type="text" size="5" name="page"
								id="GetFavWikisByUser_page" value="1"> / <input
								class="frmInput" type="text" size="5" name="pagesize"
								id="GetFavWikisByUser_pagesize" value="10"></td>
						</tr>
						<tr>
							<td></td>
							<td align="right"><input type="button" value="调用"
								class="button" onclick="GetFavWikisByUser();"></td>
						</tr>
					</table>
					<hr>
					<h3>CH21 DelFavWiki【删除我的wiki收藏】</h3>
					<table width="400" cellspacing="0" cellpadding="4" frame="box"
						bordercolor="#dcdcdc" rules="none">
						<tr>
							<td class="frmHeader" background="#dcdcdc"
								style="border-right: 2px solid white; width: 120px">参数</td>
							<td class="frmHeader" background="#dcdcdc">值</td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">wikiId:</td>
							<td><input class="frmInput" type="text" size="20"
								name="wikiId" id="DelFavWiki_wikiId"
								value="4eadff2bedcd884970001ace"></td>
						</tr>
						<tr>
							<td></td>
							<td align="right"><input type="button" value="调用"
								class="button" onclick="DelFavWiki();"></td>
						</tr>
					</table>
					<h3>CH22 SetWikiInteractive【设置wiki互动(顶、踩)】</h3>
					<table width="400" cellspacing="0" cellpadding="4" frame="box"
						bordercolor="#dcdcdc" rules="none">
						<tr>
							<td class="frmHeader" background="#dcdcdc"
								style="border-right: 2px solid white; width: 120px">参数</td>
							<td class="frmHeader" background="#dcdcdc">值</td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">act:</td>
							<td><label><input name="SetWikiInteractive_act"
									type="radio" value="1" checked />顶 </label> <label><input
									name="SetWikiInteractive_act" type="radio" value="2" />踩 </label></td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">wikiId:</td>
							<td><input class="frmInput" type="text" size="20"
								name="wikiId" id="SetWikiInteractive_wikiId"
								value="4ee1ba83edcd8866270010bd"></td>
						</tr>
						<tr>
							<td></td>
							<td align="right"><input type="button" value="调用"
								class="button" onclick="SetWikiInteractive();"></td>
						</tr>
					</table>
					<h3>CH23 SetFollowActor【添加关注演员】</h3>
					<table width="400" cellspacing="0" cellpadding="4" frame="box"
						bordercolor="#dcdcdc" rules="none">
						<tr>
							<td class="frmHeader" background="#dcdcdc"
								style="border-right: 2px solid white; width: 120px">参数</td>
							<td class="frmHeader" background="#dcdcdc">值</td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">wikiId:</td>
							<td><input class="frmInput" type="text" size="20"
								name="wikiId" id="SetFollowActor_wikiId"
								value="4d2ec8b32f2a241823000105"></td>
						</tr>
						<tr>
							<td></td>
							<td align="right"><input type="button" value="调用"
								class="button" onclick="SetFollowActor();"></td>
						</tr>
					</table>
					<h3>CH24 GetMyFollowActors【获取我关注的演员列表】</h3>
					<table width="400" cellspacing="0" cellpadding="4" frame="box"
						bordercolor="#dcdcdc" rules="none">
						<tr>
							<td class="frmHeader" background="#dcdcdc"
								style="border-right: 2px solid white; width: 120px">参数</td>
							<td class="frmHeader" background="#dcdcdc">值</td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">page/pagesize:</td>
							<td><input class="frmInput" type="text" size="5" name="page"
								id="GetMyFollowActors_page" value="1"> / <input
								class="frmInput" type="text" size="5" name="pagesize"
								id="GetMyFollowActors_pagesize" value="10"></td>
						</tr>
						<tr>
							<td></td>
							<td align="right"><input type="button" value="调用"
								class="button" onclick="GetMyFollowActors();"></td>
						</tr>
					</table>
					<h3>CH25 DelFollowActor【删除我关注的演员】</h3>
					<table width="400" cellspacing="0" cellpadding="4" frame="box"
						bordercolor="#dcdcdc" rules="none">
						<tr>
							<td class="frmHeader" background="#dcdcdc"
								style="border-right: 2px solid white; width: 120px">参数</td>
							<td class="frmHeader" background="#dcdcdc">值</td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">wikiId:</td>
							<td><input class="frmInput" type="text" size="20"
								name="wikiId" id="DelFollowActor_wikiId"
								value="4d2ec8b32f2a241823000105"></td>
						</tr>
						<tr>
							<td></td>
							<td align="right"><input type="button" value="调用"
								class="button" onclick="DelFollowActor();"></td>
						</tr>
					</table>
					<hr>
					<h3>CH26 SetSubscribeTag【添加订阅标签】</h3>
					<table width="400" cellspacing="0" cellpadding="4" frame="box"
						bordercolor="#dcdcdc" rules="none">
						<tr>
							<td class="frmHeader" background="#dcdcdc"
								style="border-right: 2px solid white; width: 120px">参数</td>
							<td class="frmHeader" background="#dcdcdc">值</td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">tag</td>
							<td><input class="frmInput" type="text" size="20" name="tag"
								id="SetSubscribeTag_tag" value=""></td>
						</tr>
						<tr>
							<td></td>
							<td align="right"><input type="button" value="调用"
								class="button" onclick="SetSubscribeTag();"></td>
						</tr>
					</table>
					<h3>CH27 GetWikisBySubscription【获取我订阅的wiki列表】</h3>
					<table width="400" cellspacing="0" cellpadding="4" frame="box"
						bordercolor="#dcdcdc" rules="none">
						<tr>
							<td class="frmHeader" background="#dcdcdc"
								style="border-right: 2px solid white; width: 120px">参数</td>
							<td class="frmHeader" background="#dcdcdc">值</td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">sort:</td>
							<td><label><input name="GetWikisBySubscription_sort"
									type="radio" value="1" checked />最热 </label> <label><input
									name="GetWikisBySubscription_sort" type="radio" value="2" />最新
							</label> <label><input name="GetWikisBySubscription_sort"
									type="radio" value="3" />评分 </label></td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">page/pagesize:</td>
							<td><input class="frmInput" type="text" size="5" name="page"
								id="GetWikisBySubscription_page" value="1"> / <input
								class="frmInput" type="text" size="5" name="pagesize"
								id="GetWikisBySubscription_pagesize" value="10"></td>
						</tr>
						<tr>
							<td></td>
							<td align="right"><input type="button" value="调用"
								class="button" onclick="GetWikisBySubscription();"></td>
						</tr>
					</table>
					<h3>CH28 GetCategory【获得wiki分类筛选条件参数】</h3>
					<table width="400" cellspacing="0" cellpadding="4" frame="box"
						bordercolor="#dcdcdc" rules="none">
						<tr>
							<td class="frmHeader" background="#dcdcdc"
								style="border-right: 2px solid white; width: 120px">参数</td>
							<td class="frmHeader" background="#dcdcdc">值</td>
						</tr>
						<tr>
							<td></td>
							<td align="right"><input type="button" value="调用"
								class="button" onclick="GetCategory();"></td>
						</tr>
					</table>
					<h3>CH29 GetDayProgramsByChannel【获取频道某天的节目】</h3>
					<table width="400" cellspacing="0" cellpadding="4" frame="box"
						bordercolor="#dcdcdc" rules="none">
						<tr>
							<td class="frmHeader" background="#dcdcdc"
								style="border-right: 2px solid white; width: 120px">参数</td>
							<td class="frmHeader" background="#dcdcdc">值</td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">channelId:</td>
							<td><input class="frmInput" type="text" size="20"
								name="channelId" id="GetDayProgramsByChannel_channelId" value=""></td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">date:</td>
							<td><input class="frmInput" type="text" size="20"
								name="date" id="GetDayProgramsByChannel_date" value=""></td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">page/pagesize:</td>
							<td><input class="frmInput" type="text" size="5" name="page"
								id="GetDayProgramsByChannel_page" value="1"> / <input
								class="frmInput" type="text" size="5" name="pagesize"
								id="GetDayProgramsByChannel_pagesize" value="10"></td>
						</tr>
						<tr>
							<td></td>
							<td align="right"><input type="button" value="调用"
								class="button" onclick="GetDayProgramsByChannel();"></td>
						</tr>
					</table>
					<h3>CH30 GetWikisByVodIds【根据点播Ids获取多条[维基]信息】</h3>
					<table width="400" cellspacing="0" cellpadding="4" frame="box"
						bordercolor="#dcdcdc" rules="none">
						<tr>
							<td class="frmHeader" background="#dcdcdc"
								style="border-right: 2px solid white; width: 120px">参数</td>
							<td class="frmHeader" background="#dcdcdc">值</td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">ids:</td>
							<td><input class="frmInput" type="text" size="20" name="ids"
								id="GetWikisByVodIds_ids" value=""></td>
						</tr>
						<tr>
							<td></td>
							<td align="right"><input type="button" value="调用"
								class="button" onclick="GetWikisByVodIds();"></td>
						</tr>
					</table>
					<hr>
					<h3>CH31 GetWikiByVodId【根据点播Id获取单条维基详细信息】</h3>
					<table width="400" cellspacing="0" cellpadding="4" frame="box"
						bordercolor="#dcdcdc" rules="none">
						<tr>
							<td class="frmHeader" background="#dcdcdc"
								style="border-right: 2px solid white; width: 120px">参数</td>
							<td class="frmHeader" background="#dcdcdc">值</td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">id:</td>
							<td><input class="frmInput" type="text" size="20" name="id"
								id="GetWikiByVodId_id" value="3356065"></td>
						</tr>
						<tr>
							<td></td>
							<td align="right"><input type="button" value="调用"
								class="button" onclick="GetWikiByVodId();"></td>
						</tr>
					</table>
					<h3>CH32 DelSubscribeTag【删除订阅标签】</h3>
					<table width="400" cellspacing="0" cellpadding="4" frame="box"
						bordercolor="#dcdcdc" rules="none">
						<tr>
							<td class="frmHeader" background="#dcdcdc"
								style="border-right: 2px solid white; width: 120px">参数</td>
							<td class="frmHeader" background="#dcdcdc">值</td>
						</tr>
						<tr>
							<td class="frmText" style="color: #000000; font-weight: normal;">tag:</td>
							<td><input class="frmInput" type="text" size="20" name="id"
								id="DelSubscribeTag_tag" value=""></td>
						</tr>
						<tr>
							<td></td>
							<td align="right"><input type="button" value="调用"
								class="button" onclick="DelSubscribeTag();"></td>
						</tr>
					</table>
					<h3>CH33 GetWechatDynamicQrcode【获取动态二维码】</h3>
					<table width="400" cellspacing="0" cellpadding="4" frame="box"
						bordercolor="#dcdcdc" rules="none">
						<tr>
							<td class="frmHeader" background="#dcdcdc"
								style="border-right: 2px solid white; width: 120px">参数</td>
							<td class="frmHeader" background="#dcdcdc">值</td>
						</tr>
						<tr>
							<td></td>
							<td align="right"><input type="button" value="调用"
								class="button" onclick="GetWechatDynamicQrcode();"></td>
						</tr>
					</table>
					<h3>CH34 GetWechatBoundUsers【获取该电视机绑定用户列表】</h3>
					<table width="400" cellspacing="0" cellpadding="4" frame="box"
						bordercolor="#dcdcdc" rules="none">
						<tr>
							<td class="frmHeader" background="#dcdcdc"
								style="border-right: 2px solid white; width: 120px">参数</td>
							<td class="frmHeader" background="#dcdcdc">值</td>
						</tr>
						<tr>
							<td></td>
							<td align="right"><input type="button" value="调用"
								class="button" onclick="GetWechatBoundUsers();"></td>
						</tr>
					</table>
					<h3>CH35 DelWechatBoundUsers【一键解除所有绑定 (删除该设备下所有用户绑定关系,不删除订阅)】</h3>
					<table width="400" cellspacing="0" cellpadding="4" frame="box"
						bordercolor="#dcdcdc" rules="none">
						<tr>
							<td class="frmHeader" background="#dcdcdc"
								style="border-right: 2px solid white; width: 120px">参数</td>
							<td class="frmHeader" background="#dcdcdc">值</td>
						</tr>
						<tr>
							<td></td>
							<td align="right"><input type="button" value="调用"
								class="button" onclick="DelWechatBoundUsers();"></td>
						</tr>
					</table>
					<h3>CH36 DelWechatBoundUser【删除指定微信用户绑定 (删除该设备下所有用户绑定关系,不删除订阅)】</h3>
					<table width="400" cellspacing="0" cellpadding="4" frame="box"
						bordercolor="#dcdcdc" rules="none">
						<tr>
							<td class="frmHeader" background="#dcdcdc"
								style="border-right: 2px solid white; width: 120px">参数</td>
							<td class="frmHeader" background="#dcdcdc">值</td>
						</tr>
						<tr>
							<td></td>
							<td align="right"><input type="button" value="调用"
								class="button" onclick="DelWechatBoundUser();"></td>
						</tr>
					</table>
					<h3>CH37 GetWechatAlbums【获取设备某个绑定的微信用户的相册图片列表 】</h3>
					<table width="400" cellspacing="0" cellpadding="4" frame="box"
						bordercolor="#dcdcdc" rules="none">
						<tr>
							<td class="frmHeader" background="#dcdcdc"
								style="border-right: 2px solid white; width: 120px">参数</td>
							<td class="frmHeader" background="#dcdcdc">值</td>
						</tr>
						<tr>
							<td></td>
							<td align="right"><input type="button" value="调用"
								class="button" onclick="GetWechatAlbums();"></td>
						</tr>
					</table>
					<h3>CH38 DelWechatAlbum【删除设备某个绑定的微信用户的相册图片下个某张图片】</h3>
					<table width="400" cellspacing="0" cellpadding="4" frame="box"
						bordercolor="#dcdcdc" rules="none">
						<tr>
							<td class="frmHeader" background="#dcdcdc"
								style="border-right: 2px solid white; width: 120px">参数</td>
							<td class="frmHeader" background="#dcdcdc">值</td>
						</tr>
						<tr>
							<td></td>
							<td align="right"><input type="button" value="调用"
								class="button" onclick="DelWechatAlbum();"></td>
						</tr>
					</table>
				</div>
				<div id="d_textarea"
					style="width: 50%; float: left; position: absolute; top: 100px; left: 620px;">
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