<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

	<div class="easyui-layout" data-options="fit:true" style="width:auto;height:auto;padding:1px;">
		<div data-options="region:'east',split:true,title:'我的消息'" style="width:200px;padding:10px;">提示信息</div>
		<div data-options="region:'center'">
			<div class="easyui-layout" data-options="fit:true" style="padding:1px;">
				<div data-options="region:'north',border:false" style="height:200px;padding:5px">
					<div class="easyui-panel" data-options="fit:true" style="padding:10px;">
						<form class="easyui-form" method="post" data-options="novalidate:true">
							<div style="margin-bottom:20px">
								<input class="easyui-textbox" name="name" style="width:300px" data-options="label:'Name:',labelAlign:'right',required:true">
								<input class="easyui-textbox" name="email" style="width:300px" data-options="label:'Email:',labelAlign:'right',required:true,validType:'email'">
							</div>
							<div style="margin-bottom:20px">
								<input class="easyui-textbox" name="name" style="width:300px" data-options="label:'Name:',labelAlign:'right',required:true">
								<input class="easyui-textbox" name="email" style="width:300px" data-options="label:'Email:',labelAlign:'right',required:true,validType:'email'">
							</div>
						</form>
						<div style="text-align:center;padding:5px 0">
							<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()" style="width:80px">Submit</a>
							<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()" style="width:80px">Clear</a>
						</div>
					</div>
				</div>
				<div data-options="region:'center',title:'Center'">
					主显示区
				</div>
			</div>
		</div>	
	</div>
