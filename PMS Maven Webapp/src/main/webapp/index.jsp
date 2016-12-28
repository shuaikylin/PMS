<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
	<meta charset="UTF-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<title>PMS EasyUI Demo</title>
	<link rel="stylesheet" type="text/css" href="./plugins/easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="./plugins/easyui/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="./plugins/icons/icon-standard.css">
	<script type="text/javascript" src="./plugins/jquery.min.js"></script>
	<script type="text/javascript" src="./plugins/easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="./plugins/easyui/locale/easyui-lang-zh_CN.js"></script>
</head>
<body class="easyui-layout">
	<div data-options="region:'north',border:false" style="height:60px;background:#B3DFDA;padding:10px">north region</div>
	<div data-options="region:'west',split:true,title:'导航菜单栏',href:'./pages/layout/my_accordion.jsp'" style="width:250px;padding:1px;">west content</div>
	<div data-options="region:'south',border:false" style="height:50px;background:#A9FACD;padding:10px;">south region</div>
	<!-- 核心区域 -->
	<div data-options="region:'center'"style="padding:1px;">
		<div id="mainTabs"></div>
	</div>
	<div id="mainWins" style="padding:5px;"></div>
</body>

<script type="text/javascript">
	var mainTabsManage;
	var mainWinsManage;
	$(function(){
		mainTabsManage = $('#mainTabs').tabs({    
			border:false, 
			fit:true,
			pill:true
		});
		addTab('my_index','我的主页','icon-help','./pages/layout/my_index.jsp',{closable:false});
		mainWinsManage = $('#mainWins').window({ 
			width:600,//number 设置面板宽度。 auto 
			height:350,//number 设置面板高度。
			//style:{borderWidth:2},//borderWidth:2,
			collapsible:false,// boolean 定义是否显示可折叠按钮。 true 
			minimizable:false,// boolean 定义是否显示最小化按钮。 true 
			maximizable:false,// boolean 定义是否显示最大化按钮。 true 
			closable:true,// boolean 定义是否显示关闭按钮。 true 
			closed:true,// 窗口关闭
			draggable:true,// boolean 定义是否能够拖拽窗口。 true 
			resizable:true,// boolean 定义是否能够改变窗口大小。 true 
			shadow:true,// boolean 如果设置为true，在窗体显示的时候显示阴影。 true 
			inline:false,// boolean 定义如何布局窗口，如果设置为true，窗口将显示在它的父容器中，否则将显示在所有元素的上面。 false 
			modal:true,// boolean 定义是否将窗体显示为模式化窗口。 true 
			border:true// boolean,string 定义窗体边框的样式。可用值：true，false，'thin'，'thick'。（该方法自1.4.5版开始可用） true 
			//constrain:,// boolean 定义是否限制窗体的位置。 
		});   
	});

	function addTab(tabId,text,iconCls,url,options){
		_addTab(tabId,text,iconCls,
			$.extend({
				href : url
			},options)	
		);
	}
	
	function _addTab(tabId,text,iconCls,options){
		if (mainTabsManage.tabs('exists', text)) {
			mainTabsManage.tabs('select', text);
        } else {
        	mainTabsManage.tabs('add', 
        		$.extend({
	                id : tabId,
	                title : text,
	                closable:true,
	                iconCls : iconCls // || 'icon-standard-application'
        		},
        		options
            ));
        }
	}
	
	function openWin(winId,text,url,options){
		_openWin(winId,text,
			$.extend({
				href : url
			},options)	
		);
	}
	
	function _openWin(winId,text,options){
		mainWinsManage.window(
			$.extend({
				id : winId,
	            title : text,
	            iconCls:'icon-standard-application'
				},
				options
			));  
		mainWinsManage.window('open');
	}

</script>


</html>
