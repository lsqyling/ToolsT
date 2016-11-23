
function GetToolsT_Req() {
	var envChecked = $('#env').val();
	if(envChecked==null||envChecked==""){
		envChecked = $('#url').val();
	}
    var method = $('#GetToolsT_method').val();
    var params = $('#GetToolsT_params').val();
    
    //alert($("#env").get(0).selectedIndex==1);
    //alert(envChecked)
    
    if(params==""){
    	var index = $("#env").get(0).selectedIndex;
    	//新增测试url时，需要添加默认的请求参数是在switch(){case 7:...case 8:...},
    	switch (index) {
		case 1:
			var $jsonstr = "{\"Request\": {\"method\": \"Getplugin\",\"parameters\": {\"name\": \"str1\",\"MAC\": \"002640060001\",\"CompatibilityOUI\": \"9A\",\"HwModel\": \"03\",\"HwVersion\": \"09\",\"FwModel\": \"xx\",\"FwVersion\": \"07\",\"DeviceId\": \"1234:1234\"}}}";
			setJsonContent($jsonstr);
			break;
		case 2:
			var $jsonstr = "{\"Request\": {\"method\": \"getMetadata\",\"parameters\": {\"assetidList\": [\"bau1001\",\"bau1002\",\"bau1003\",\"bau1004\",\"bau1005\",\"bau1006\",\"bau1007\",\"bau1008\"]}}}";
			setJsonContent($jsonstr);
			break;
		case 3:
			var $jsonstr = "{\"Request\": {\"method\": \"Recommend\",\"parameters\": {\"banner\": {\"gw_id\":\"gw_id001\",\"userId\":\"userid001\",\"page\":\"tv\"}}}}";
			setJsonContent($jsonstr);
			break;
		case 4:
			var $jsonstr = "{\"Request\":{\"method\":\"getAd\",\"parameters\":{\"ReqId\": \"12345\",\"Impression\":[{\"impression_id\": 1,\"adslot_id\":\"ad001\",\"adslot_type\": 1,\"creative\":{\"creative_type\":1}}],\"User\":{\"user_id\":\"123\"},\"Device\": {\"mac_address\": \"ADDE00000001\",\"device_type\": \"d7\"}}}}";
			setJsonContent($jsonstr);
			break;
		case 5:
			var $jsonstr = "{\"Request\": {\"method\": \"getAccount\",\"parameters\": {\"accountId\": [\"gatewayId\",\"userName\"]}}}";
			setJsonContent($jsonstr);
			break;
		case 6:
			var $jsonstr = "{\"Request\":{\"method\": \"getims\",\"parameters\": {\"xmppid\":\"111@xmpp.baustem.net\"}}}";
			setJsonContent($jsonstr);
			break;
			/**
			 * 1468571580000
				1468612620000
			 */
		case 7:
			var $jsonstr = "{\"Request\":{\"logicalNumber\":\"1\",\"channelName\":\"\",\"startTime\":\"1468571580000\",\"endTime\":\"1468612620000\"}}";
			setJsonContent($jsonstr);
			break;
		case 8:
			var $jsonstr = "{\"Request\":{\"logicalNumber\":\"\",\"channelName\":\"\",\"startTime\":\"1468571580000\",\"endTime\":\"1468612620000\"}}";
			setJsonContent($jsonstr);
			break;
		default:
			break;
		}
    	
    	
    }else{
    	
    	var $jsonstr = "{\"Request\": {\"method\":\"" +method+"\",\"parameters\":"+params+"}}";
    	setJsonContent($jsonstr);
    	
    }
}

function setJsonContent($jsonstr) {
	try {
		$jsonobj = JSON.parse($jsonstr);
		
	} catch (e) {
		alert("请输入正确 json 格式的parameters！")
	}
    $("#jsonstr").val(JSON.stringify($jsonobj, null, 4));
}


function postContent() {
	var envChecked = $('#env').val();
	if(envChecked==null||envChecked==""){
		envChecked = $('#url').val();
	}
    $("#post-form").attr('action',envChecked);
    $("#post-form").submit();
}