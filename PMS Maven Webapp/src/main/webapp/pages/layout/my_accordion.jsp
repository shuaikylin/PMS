<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

	<div class="easyui-accordion" data-options="fit:true" style="width:auto;height:auto;">
		<div title="系统管理" data-options="iconCls:'icon-ok'" style="overflow:auto;padding:10px;">
			<a class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-cancel'" style="text-align:left;width:98%">属性管理</a>
			<a class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-reload'" style="text-align:left;width:98%">数据字典</a>
			<a class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-search'" style="text-align:left;width:98%">使用教程</a>
		</div>
		<div title="权限管理" data-options="iconCls:'icon-help'" style="padding:10px;">
			<a class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-cancel'" style="text-align:left;width:98%" onclick="addTab('user','用户管理','icon-help','./pages/rbac/userManager.jsp','{}');">用户管理</a>
			<a class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-reload'" style="text-align:left;width:98%">角色管理</a>
			<a class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-search'" style="text-align:left;width:98%">资源管理</a>
			
		</div>
		<div title="Ajax" data-options="iconCls:'icon-reload',href:'_content.html'" style="padding:10px">
		
		</div>
	</div>
