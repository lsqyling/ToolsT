/**
 * CH38 銆愬垹闄よ澶囨煇涓粦瀹氱殑寰俊鐢ㄦ埛鐨勭浉鍐屽浘鐗囦笅涓煇寮犲浘鐗囥€�
 * @returns {undefined}
 */
function DelWechatAlbum() {
    $action = 'DelWechatAlbum';
    $param = '{"id":"' + "" + '"}';
    $jsonstr = "{\"action\":\"" + $action + "\",\"developer\":" + $developer + ",\"user\":" + $user + ",\"device\":" + $device + ",\"param\":" + $param + "}";
    setJsonContent($jsonstr);
}
/**
 * CH37 銆愯幏鍙栬澶囨煇涓粦瀹氱殑寰俊鐢ㄦ埛鐨勭浉鍐屽浘鐗囧垪琛� 銆�
 * @returns {undefined}
 */
function GetWechatAlbums() {
    $action = 'GetWechatAlbums';
    $param = '{"openid":"' + "" + '"}';
    $jsonstr = "{\"action\":\"" + $action + "\",\"developer\":" + $developer + ",\"user\":" + $user + ",\"device\":" + $device + ",\"param\":" + $param + "}";
    setJsonContent($jsonstr);
}
/**
 * CH36 鍒犻櫎鎸囧畾寰俊鐢ㄦ埛缁戝畾 (鍒犻櫎璇ヨ澶囦笅鎵€鏈夌敤鎴风粦瀹氬叧绯�,涓嶅垹闄よ闃�)
 * @returns {undefined}
 */
function DelWechatBoundUser() {
    $action = 'DelWechatBoundUser';
    $param = '{"openid":"' + "" + '"}';
    $jsonstr = "{\"action\":\"" + $action + "\",\"developer\":" + $developer + ",\"user\":" + $user + ",\"device\":" + $device + ",\"param\":" + $param + "}";
    setJsonContent($jsonstr);
}
/**
 * CH35 涓€閿В闄ゆ墍鏈夌粦瀹� (鍒犻櫎璇ヨ澶囦笅鎵€鏈夌敤鎴风粦瀹氬叧绯�,涓嶅垹闄よ闃�)
 * @returns {undefined}
 */
function DelWechatBoundUsers() {
    $action = 'DelWechatBoundUsers';
    $param = '{}';
    $jsonstr = "{\"action\":\"" + $action + "\",\"developer\":" + $developer + ",\"user\":" + $user + ",\"device\":" + $device + ",\"param\":" + $param + "}";
    setJsonContent($jsonstr);
}
/**
 * CH34 鑾峰彇璇ョ數瑙嗘満缁戝畾鐢ㄦ埛鍒楄〃
 * @returns {undefined}
 */
function GetWechatBoundUsers() {
    $action = 'GetWechatBoundUsers';
    $param = '{}';
    $jsonstr = "{\"action\":\"" + $action + "\",\"developer\":" + $developer + ",\"user\":" + $user + ",\"device\":" + $device + ",\"param\":" + $param + "}";
    setJsonContent($jsonstr);
}
/**
 * CH33 鑾峰彇鍔ㄦ€佷簩缁寸爜
 * @returns {undefined}
 */
function GetWechatDynamicQrcode() {
    $action = 'GetWechatDynamicQrcode';
    $param = '{}';
    $jsonstr = "{\"action\":\"" + $action + "\",\"developer\":" + $developer + ",\"user\":" + $user + ",\"device\":" + $device + ",\"param\":" + $param + "}";
    setJsonContent($jsonstr);
}
/**
 * CH32 鍒犻櫎璁㈤槄鏍囩
 * @returns {undefined}
 */
function DelSubscribeTag() {
    $action = 'DelSubscribeTag';
    var tag = $('#DelSubscribeTag_tag').val();
    $param = '{"tag":"' + tag + '"}';
    $jsonstr = "{\"action\":\"" + $action + "\",\"developer\":" + $developer + ",\"user\":" + $user + ",\"device\":" + $device + ",\"param\":" + $param + "}";
    setJsonContent($jsonstr);
}
/**
 * CH31 鏍规嵁鐐规挱Id鑾峰彇鍗曟潯缁村熀璇︾粏淇℃伅
 * @returns {undefined}
 */
function GetWikiByVodId() {
    $action = 'GetWikiByVodId';
    $param = '{"id":"' + $('#GetWikiByVodId_id').val() + '"}';
    $jsonstr = "{\"action\":\"" + $action + "\",\"developer\":" + $developer + ",\"user\":" + $user + ",\"device\":" + $device + ",\"param\":" + $param + "}";
    setJsonContent($jsonstr);
}
/**
 * CH30 鏍规嵁鐐规挱Ids鑾峰彇澶氭潯[缁村熀]淇℃伅
 * @returns {undefined}
 */
function GetWikisByVodIds() {
    $action = 'GetWikisByVodIds';
    var ids = "[" + $('#GetWikisByVodIds_ids').val() + "]";
    $param = '{"ids":' + ids + '}';
    $jsonstr = "{\"action\":\"" + $action + "\",\"developer\":" + $developer + ",\"user\":" + $user + ",\"device\":" + $device + ",\"param\":" + $param + "}";
    setJsonContent($jsonstr);
}
/**
 * CH29 鑾峰彇棰戦亾鏌愬ぉ鐨勮妭鐩€�
 * @returns {undefined}
 */
function GetDayProgramsByChannel() {
    $action = 'GetDayProgramsByChannel';
    var channelId = $('#GetDayProgramsByChannel_channelId').val();
    var date = $('#GetDayProgramsByChannel_date').val();
    var page = $('#GetDayProgramsByChannel_page').val();
    var pagesize = $('#GetDayProgramsByChannel_pagesize').val();
    $param = '{"channelId":"' + channelId + '", "date":"' + date + '", "page":' + parseInt(page) + ', "pagesize":' + parseInt(pagesize) + '}';
    $jsonstr = "{\"action\":\"" + $action + "\",\"developer\":" + $developer + ",\"user\":" + $user + ",\"device\":" + $device + ",\"param\":" + $param + "}";
    setJsonContent($jsonstr);
}
/**
 * CH28 鑾峰彇绛涢€夌淮鍩烘爣绛�
 * @returns {undefined}
 */
function GetCategory() {
    $action = 'GetCategory';
    $param = '{}';
    $jsonstr = "{\"action\":\"" + $action + "\",\"developer\":" + $developer + ",\"user\":" + $user + ",\"device\":" + $device + ",\"param\":" + $param + "}";
    setJsonContent($jsonstr);
}
/**
 * CH27 鑾峰彇鎴戣闃呮爣绛惧垪琛� 
 * @returns {undefined}
 */
function GetWikisBySubscription() {
    $action = 'GetWikisBySubscription';
    var sort = $("input[name='GetWikisBySubscription_sort']:checked").val();
    var page = $('#GetWikisBySubscription_page').val();
    var pagesize = $('#GetWikisBySubscription_pagesize').val();
    $param = '{"sort":' + parseInt(sort) + ', "page":' + parseInt(page) + ', "pagesize":' + parseInt(pagesize) + '}';
    $jsonstr = "{\"action\":\"" + $action + "\",\"developer\":" + $developer + ",\"user\":" + $user + ",\"device\":" + $device + ",\"param\":" + $param + "}";
    setJsonContent($jsonstr);
}
/**
 * CH26 娣诲姞璁㈤槄鏍囩
 * @returns {undefined}
 */
function SetSubscribeTag() {
    $action = 'SetSubscribeTag';
    $param = '{"tag":"' + $('#SetSubscribeTag_tag').val() + '"}';
    $jsonstr = "{\"action\":\"" + $action + "\",\"developer\":" + $developer + ",\"user\":" + $user + ",\"device\":" + $device + ",\"param\":" + $param + "}";
    setJsonContent($jsonstr);
}
/**
 * CH25 鍒犻櫎鎴戝叧娉ㄧ殑婕斿憳
 * @returns {undefined}
 */
function DelFollowActor() {
    $action = 'DelFollowActor';
    $param = '{"wikiId":"' + $('#DelFollowActor_wikiId').val() + '"}';
    $jsonstr = "{\"action\":\"" + $action + "\",\"developer\":" + $developer + ",\"user\":" + $user + ",\"device\":" + $device + ",\"param\":" + $param + "}";
    setJsonContent($jsonstr);
}
/**
 * CH24 鑾峰彇鎴戝叧娉ㄧ殑婕斿憳鍒楄〃
 * @returns {undefined}
 */
function GetMyFollowActors() {
    $action = 'GetMyFollowActors';
    var page = $('#GetMyFollowActors_page').val();
    var pagesize = $('#GetMyFollowActors_pagesize').val();
    $param = '{"page":' + parseInt(page) + ', "pagesize":' + parseInt(pagesize) + '}';
    $jsonstr = "{\"action\":\"" + $action + "\",\"developer\":" + $developer + ",\"user\":" + $user + ",\"device\":" + $device + ",\"param\":" + $param + "}";
    setJsonContent($jsonstr);
}
/**
 * CH23 娣诲姞鍏虫敞婕斿憳
 * @returns {undefined}
 */
function SetFollowActor() {
    $action = 'SetFollowActor';
    $param = '{"wikiId":"' + $('#SetFollowActor_wikiId').val() + '"}';
    $jsonstr = "{\"action\":\"" + $action + "\",\"developer\":" + $developer + ",\"user\":" + $user + ",\"device\":" + $device + ",\"param\":" + $param + "}";
    setJsonContent($jsonstr);
}
/**
 * CH22 鐐硅禐銆佺偣琛皐iki
 * @returns {undefined}
 */
function SetWikiInteractive() {
    $action = 'SetWikiInteractive';
    var act = $("input[name='SetWikiInteractive_act']:checked").val();
    $param = '{"act":' + act + ', "wikiId":"' + $('#SetWikiInteractive_wikiId').val() + '"}';
    $jsonstr = "{\"action\":\"" + $action + "\",\"developer\":" + $developer + ",\"user\":" + $user + ",\"device\":" + $device + ",\"param\":" + $param + "}";
    setJsonContent($jsonstr);
}
/**
 * CH21 鍒犻櫎鎴戞敹钘忕殑wiki
 * @returns {undefined}
 */
function DelFavWiki() {
    $action = 'DelFavWiki';
    $param = '{"wikiId":"' + $('#DelFavWiki_wikiId').val() + '"}';
    $jsonstr = "{\"action\":\"" + $action + "\",\"developer\":" + $developer + ",\"user\":" + $user + ",\"device\":" + $device + ",\"param\":" + $param + "}";
    setJsonContent($jsonstr);
}
/**
 * CH20 鑾峰彇鎴戝叧娉ㄧ殑wiki鍒楄〃(鍙偣鎾殑)
 * @returns {undefined}
 */
function GetFavWikisByUser() {
    $action = 'GetFavWikisByUser';
    var page = $('#GetFavWikisByUser_page').val();
    var pagesize = $('#GetFavWikisByUser_pagesize').val();
    $param = '{"page":"' + parseInt(page) + '", "pagesize":"' + parseInt(pagesize) + '"}';
    $jsonstr = "{\"action\":\"" + $action + "\",\"developer\":" + $developer + ",\"user\":" + $user + ",\"device\":" + $device + ",\"param\":" + $param + "}";
    setJsonContent($jsonstr);
}
/**
 * CH19 娣诲姞鏀惰棌wiki
 * @returns {undefined}
 */
function SetFavWikiByUser() {
    $action = 'SetFavWikiByUser';
    $param = '{"wikiId":"' + $('#SetFavWikiByUser_wikiId').val() + '"}';
    $jsonstr = "{\"action\":\"" + $action + "\",\"developer\":" + $developer + ",\"user\":" + $user + ",\"device\":" + $device + ",\"param\":" + $param + "}";
    setJsonContent($jsonstr);
}
/**
 * CH18 鍒犻櫎鎴戞敹钘忕殑棰戦亾
 * @returns {undefined}
 */
function DelFavChannelByUser() {
    $action = 'DelFavChannelByUser';
    $param = '{"channelId":"' + $('#DelFavChannelByUser_channelId').val() + '"}';
    $jsonstr = "{\"action\":\"" + $action + "\",\"developer\":" + $developer + ",\"user\":" + $user + ",\"device\":" + $device + ",\"param\":" + $param + "}";
    setJsonContent($jsonstr);
}
/**
 * CH17 鑾峰彇鐢ㄦ埛鍠滄鐨勯閬�
 * @returns {undefined}
 */
function GetFavChannelsByUser() {
    $action = 'GetFavChannelsByUser';
    var showlive = $("input[name='GetFavChannelsByUser_showlive']:checked").val();
    var page = $('#GetFavChannelsByUser_page').val();
    var pagesize = $('#GetFavChannelsByUser_pagesize').val();
    $param = '{"showlive":"' + showlive + '", "page":"' + parseInt(page) + '", "pagesize":"' + parseInt(pagesize) + '"}';
    $jsonstr = "{\"action\":\"" + $action + "\",\"developer\":" + $developer + ",\"user\":" + $user + ",\"device\":" + $device + ",\"param\":" + $param + "}";
    setJsonContent($jsonstr);
}
/**
 * CH16 娣诲姞璁剧疆鐢ㄦ埛鍠滄鐨勯閬�
 * @returns {undefined}
 */
function SetFavChannelByUser() {
    $action = 'SetFavChannelByUser';
    $param = '{"channelId":"' + $('#SetFavChannelByUser_channelId').val() + '"}';
    $jsonstr = "{\"action\":\"" + $action + "\",\"developer\":" + $developer + ",\"user\":" + $user + ",\"device\":" + $device + ",\"param\":" + $param + "}";
    setJsonContent($jsonstr);
}
/**
 * CH15 鏍规嵁棰戦亾鑾峰彇褰撳墠鑺傜洰缁村熀璇︾粏淇℃伅
 * @returns {undefined}
 */
function GetWikiInfoByChannel() {
    $action = 'GetWikiInfoByChannel';
    $param = '{"channelId":"' + $('#GetWikiInfoByChannel_channelId').val() + '"}';
    $jsonstr = "{\"action\":\"" + $action + "\",\"developer\":" + $developer + ",\"user\":" + $user + ",\"device\":" + $device + ",\"param\":" + $param + "}";
    setJsonContent($jsonstr);
}
/**
 * CH14 鑾峰彇wiki鐩镐技鍒楄〃
 * @returns {undefined}
 */
function GetSimilarWikis() {
    $action = 'GetSimilarWikis';
    var wikiId = $('#GetSimilarWikis_wikiId').val();
    var page = $('#GetSimilarWikis_page').val();
    var pagesize = $('#GetSimilarWikis_pagesize').val();
    $param = '{"wikiId":"' + wikiId + '", "page":' + parseInt(page) + ', "pagesize":' + parseInt(pagesize) + '}';
    $jsonstr = "{\"action\":\"" + $action + "\",\"developer\":" + $developer + ",\"user\":" + $user + ",\"device\":" + $device + ",\"param\":" + $param + "}";
    setJsonContent($jsonstr);
}
/**
 * CH13 鑾峰彇鐑棬鎼滅储鍏抽敭瀛楀垪琛�
 * @returns {undefined}
 */
function GetSearchKeyword() {
    $action = 'GetSearchKeyword';
    $param = '{}';
    $jsonstr = "{\"action\":\"" + $action + "\",\"developer\":" + $developer + ",\"user\":" + $user + ",\"device\":" + $device + ",\"param\":" + $param + "}";
    setJsonContent($jsonstr);
}
/**
 * CH12 妫€绱� (鍒嗙被锛� 棣栧瓧姣嶏紝 鍏抽敭璇�)
 * @returns {undefined}
 */
function SearchWikis() {
    $action = 'SearchWikis';
    var model = $("input[name='SearchWikis_model']:checked").val();
    var letter = $('#SearchWikis_letter').val();
    var title = $('#SearchWikis_title').val();
    var page = $('#SearchWikis_page').val();
    var pagesize = $('#SearchWikis_pagesize').val();
    $param = '{"model":"' + model + '","letter":"' + letter + '","title":"' + title + '", "page":' + parseInt(page) + ', "pagesize":' + parseInt(pagesize) + '}';
    $jsonstr = "{\"action\":\"" + $action + "\",\"developer\":" + $developer + ",\"user\":" + $user + ",\"device\":" + $device + ",\"param\":" + $param + "}";
    setJsonContent($jsonstr);
}
/**
 * CH11 wiki鍒嗙被绛涢€�
 * @returns {undefined}
 */
function GetToolsT_Req() {
	alert(0)
    var method = $('#GetToolsT_method').val();
	alert(1)
    var params = $('#GetToolsT_params').val();
	alert(2)
    var $jsonstr = "{\"Request\": {\"method\":\"" +method+"\",\"parameters\":"+params+"}}";
	alert(3)
    setJsonContent($jsonstr);
}
/**
 * CH10 鑾峰彇婕斿憳璇︽儏椤甸潰
 * @returns {undefined}
 */
function GetActorInfo() {
    $action = 'GetActorInfo';
    $param = '{"wikiId":"' + $('#GetActorInfo_wikiId').val() + '"}';
    $jsonstr = "{\"action\":\"" + $action + "\",\"developer\":" + $developer + ",\"user\":" + $user + ",\"device\":" + $device + ",\"param\":" + $param + "}";
    setJsonContent($jsonstr);
}
/**
 * CH09 鑾峰彇wiki璇︽儏椤甸潰
 * @returns {undefined}
 */
function GetWikiInfo() {
    $action = 'GetWikiInfo';
    $param = '{"wikiId":"' + $('#GetWikiInfo_wikiId').val() + '"}';
    $jsonstr = "{\"action\":\"" + $action + "\",\"developer\":" + $developer + ",\"user\":" + $user + ",\"device\":" + $device + ",\"param\":" + $param + "}";
    setJsonContent($jsonstr);
}
/**
 * CH08 鑾峰彇棰戦亾姝ｅ湪鎾嚭鐨勮妭鐩浉浼煎奖鐗囧垪琛�(鍙偣鎾�)
 * @returns {undefined}
 */
function GetSimilarVodsByChannel() {
    $action = 'GetSimilarVodsByChannel';
    $param = '{"channelId":"' + $('#GetSimilarVodsByChannel_channelId').val() + '"}';
    $jsonstr = "{\"action\":\"" + $action + "\",\"developer\":" + $developer + ",\"user\":" + $user + ",\"device\":" + $device + ",\"param\":" + $param + "}";
    setJsonContent($jsonstr);
}
/**
 * CH07 鑾峰彇鏀惰棌姒滃垪琛�
 * @returns {undefined}
 */
function GetWikisByFav() {
    $action = 'GetWikisByFav';
    var page = $('#GetWikisByFav_page').val();
    var pagesize = $('#GetWikisByFav_pagesize').val();
    $param = '{"page":' + parseInt(page) + ', "pagesize":' + parseInt(pagesize) + '}';
    $jsonstr = "{\"action\":\"" + $action + "\",\"developer\":" + $developer + ",\"user\":" + $user + ",\"device\":" + $device + ",\"param\":" + $param + "}";
    setJsonContent($jsonstr);
}
/**
 * CH06 鑾峰彇鍏虫敞鐨勬槑鏄熸鍒楄〃
 * @returns {undefined}
 */
function GetActorsByFollow() {
    $action = 'GetActorsByFollow';
    var page = $('#GetActorsByFollow_page').val();
    var pagesize = $('#GetActorsByFollow_pagesize').val();
    $param = '{"page":' + parseInt(page) + ', "pagesize":' + parseInt(pagesize) + '}';
    $jsonstr = "{\"action\":\"" + $action + "\",\"developer\":" + $developer + ",\"user\":" + $user + ",\"device\":" + $device + ",\"param\":" + $param + "}";
    setJsonContent($jsonstr);
}
/**
 * CH05 鑾峰彇鐑挱姒滃垪琛�
 * @returns {undefined}
 */
function GetWikisByHit() {
    $action = 'GetWikisByHit';
    var page = $('#GetWikisByHit_page').val();
    var pagesize = $('#GetWikisByHit_pagesize').val();
    $param = '{"page":' + parseInt(page) + ', "pagesize":' + parseInt(pagesize) + '}';
    $jsonstr = "{\"action\":\"" + $action + "\",\"developer\":" + $developer + ",\"user\":" + $user + ",\"device\":" + $device + ",\"param\":" + $param + "}";
    setJsonContent($jsonstr);
}
/**
 * CH04 鑾峰彇鏈€鏂版鍒楄〃
 * @returns {undefined}
 */
function GetWikisByNew() {
    $action = 'GetWikisByNew';
    var page = $('#GetWikisByNew_page').val();
    var pagesize = $('#GetWikisByNew_pagesize').val();
    $param = '{"page":' + parseInt(page) + ', "pagesize":' + parseInt(pagesize) + '}';
    $jsonstr = "{\"action\":\"" + $action + "\",\"developer\":" + $developer + ",\"user\":" + $user + ",\"device\":" + $device + ",\"param\":" + $param + "}";
    setJsonContent($jsonstr);
}
/**
 * CH03 鑾峰彇澶у閮藉湪鐪�
 * @returns {undefined}
 */
function GetWikisByHot() {
    $action = 'GetWikisByHot';
    var page = $('#GetWikisByHot_page').val();
    var pagesize = $('#GetWikisByHot_pagesize').val();
    $param = '{"page":' + parseInt(page) + ', "pagesize":' + parseInt(pagesize) + '}';
    $jsonstr = "{\"action\":\"" + $action + "\",\"developer\":" + $developer + ",\"user\":" + $user + ",\"device\":" + $device + ",\"param\":" + $param + "}";
    setJsonContent($jsonstr);
}
/**
 * CH02 鑾峰彇鐩存挱鎺ㄨ崘
 * @returns {undefined}
 */
function GetLiveProgramsByRecommend() {
    $action = 'GetLiveProgramsByRecommend';
    var page = $('#GetLiveProgramsByRecommend_page').val();
    var pagesize = $('#GetLiveProgramsByRecommend_pagesize').val();
    $param = '{"page":' + parseInt(page) + ', "pagesize":' + parseInt(pagesize) + '}';
    $jsonstr = "{\"action\":\"" + $action + "\",\"developer\":" + $developer + ",\"user\":" + $user + ",\"device\":" + $device + ",\"param\":" + $param + "}";
    setJsonContent($jsonstr);
}
/**
 * CH01 鑾峰彇棰戦亾鍒楄〃
 * @returns {undefined}
 */
function GetChannels() {
    $action = 'GetChannels';
    var type = $("input[name='GetChannels_type']:checked").val();
    var showlive = $("input[name='GetChannels_showlive']:checked").val();
    var order = $("input[name='GetChannels_order']:checked").val();
    var page = $('#GetChannels_page').val();
    var pagesize = $('#GetChannels_pagesize').val();
    $param = '{"type":"' + type + '", "showlive":"' + showlive + '", "order":' + parseInt(order) + ', "page":' + parseInt(page) + ', "pagesize":' + parseInt(pagesize) + '}';
    $jsonstr = "{\"action\":\"" + $action + "\",\"developer\":" + $developer + ",\"user\":" + $user + ",\"device\":" + $device + ",\"param\":" + $param + "}";
    setJsonContent($jsonstr);
}
/**
 * 鏍规嵁鍔ㄤ綔鍚嶏紝鍙戦€佷俊鎭€愭棤鍙傛暟銆�
 * @param {type} action 
 * @returns {undefined}
 */
function postByActionName(action) {
    $param = '{}';
    $jsonstr = "{\"action\":\"" + action + "\",\"developer\":" + $developer + ",\"user\":" + $user + ",\"device\":" + $device + ",\"param\":" + $param + "}";
    setJsonContent($jsonstr);
}
/**
 * 鏍煎紡鍖杍son涓�
 * @param {type} $jsonstr
 * @returns {undefined}
 */
function setJsonContent($jsonstr) {
    $jsonobj = JSON.parse($jsonstr);
    $("#jsonstr").val(JSON.stringify($jsonobj, null, 4));
}

/**
 * 鎻愪氦json鍐呭
 * @returns {undefined}
 */
function postContent() {
    $("#post-form").attr('action', $('#env').val());
    $("#post-form").submit();
}