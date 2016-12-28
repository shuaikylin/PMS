<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

	
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
	<div data-options="region:'center'">
		<table id="userDataGrid" title="DataGrid" style="width:auto;height:auto"></table>
	</div>
</div>
			
	<script type="text/javascript">
	
		var toolbar = [{
			text:'Add',
			iconCls:'icon-add',
			handler:function(){alert('add')}
		},{
			text:'Cut',
			iconCls:'icon-cut',
			handler:function(){alert('cut')}
		},'-',{
			text:'Save',
			iconCls:'icon-save',
			handler:function(){alert('save')}
		}];
	
		$('#userDataGrid').datagrid({
			fit:true,
			striped:true,//斑马线
			rownumbers:true,
			singleSelect:true,
			pagination:true,
			url:'./pages/rbac/datagrid_data1.json',
			method:'get',
			toolbar:toolbar,
		    columns:[[    
		        {field:'itemid',title:'itemid',width:100},    
		        {field:'productid',title:'productid',width:100},    
		        {field:'listprice',title:'listprice',width:100,align:'right'},  
		        {field:'unitcost',title:'unitcost',width:100},    
		        {field:'attr1',title:'attr1',width:100},    
		        {field:'status',title:'status',width:100,align:'right'},
		        {field:'_operate',title:'操作',width:200,align:'center',
		        	formatter:function(value,rec){  
		                var btn = '<a class="editcls" onclick="editUserRow(\''+rec.itemid+'\',\''+rec.productid+'\')" href="javascript:void(0)">编辑</a>'
		                		 +'<a class="delcls" onclick="delUserRow(\''+rec.itemid+'\',\''+rec.productid+'\')" href="javascript:void(0)">删除</a>';  
		                return btn;  
		            }  
		        }
		    ]],
			onLoadSuccess:function(data){  
	        	$('.editcls').linkbutton({text:'编辑',plain:true,iconCls:'icon-edit'}); 
	        	$('.delcls').linkbutton({text:'删除',plain:true,iconCls:'icon-edit'}); 
	    }  
		});  

		function editUserRow(itemid,productid){
			openWin('editUser','editUser','./pages/rbac/userEdit.jsp',{});
		}
		function delUserRow(itemid,productid){
			openWin('delUser','delUser','./pages/rbac/userEdit.jsp',{});
		}
	</script>