<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<div class="bjui-pageHeader" style="background-color:#fefefe; border-bottom:none;">
<form data-toggle="ajaxsearch" data-options="{searchDatagrid:$.CurrentNavtab.find('#datagrid-user-filter')}">
    <fieldset>
        <legend style="font-weight:normal;">页头搜索：</legend>
        <div style="margin:0; padding:1px 5px 5px;">
            <span>姓名：</span>
            <input type="text" name="name" class="form-control" size="15">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <span>角色：</span>
            <input type="text" name="type" class="form-control" size="15">          
            <button type="button" class="showMoreSearch" data-toggle="moresearch" data-name="custom"><i class="fa fa-angle-double-down"></i></button>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <div class="btn-group">
                <button type="submit" class="btn-green" data-icon="search">开始搜索！</button>
                <button type="reset" class="btn-orange" data-icon="times">重置</button>
            </div>
        </div>
            <div class="bjui-moreSearch">
	            <label>年龄：</label><input type="text" value="" name="age" size="15" />
	            <label>&nbsp;性别:</label>
	            <select name="sex" data-toggle="selectpicker">
	                <option value="">全部</option>
	                <option value="男">男</option>
	                <option value="女">女</option>
	            </select>
	            <label>&nbsp;日期:</label>
	            <input type="text" value="" name="date" size="10">
        	</div>
    </fieldset>
</form>
</div>
<div class="bjui-pageContent" id="div-user">
    <table class="table table-bordered" id="datagrid-user-filter" data-toggle="datagrid" data-options="{
        height: '100%',
        gridTitle : '用户管理',
        showToolbar: true,
        toolbarItem: 'add,edit,del,|,import,export',
        dataUrl: 'getUser.action',
        dataType: 'jsonp',
        editMode: {dialog:{width:'800',height:280,title:'编辑用户信息',mask:true}},
        delUrl:'deleteUser.action',
        editUrl: 'JSP/user/user-edit.jsp?id={id}&name={name}&sex={sex}&age={age}&rid={rid}&date={date}&password={password}',
        paging: {pageSize:60, pageCurrent:1},
        showCheckboxcol: true,
        linenumberAll: true,
        contextMenuB: true,
        hScrollbar: true,
        importOption: {type:'dialog', options:{url:'JSP/user/user-import.html', width:500, height:300, title:'导入用户信息'}},
        exportOption: {type:'file', options:{url:'exportUserExcel.action', loadingmask:false}}
    }">
        <thead>
            <tr>
            	<th data-options="{name:'id',width:350,align:'center',hide:'true',finalWidth:'true'}" >编号</th>
				<th data-options="{name:'name',width:150,align:'center',finalWidth:'true'}">姓名</th>
				<th data-options="{name:'sex',width:60,align:'center',type:'select',items:[{'M':'男'},{'F':'女'}] ,finalWidth:'true'}">性別</th>
				<th data-options="{name:'age',width:60,align:'center',finalWidth:'true'}">年龄</th>
				<th data-options="{name:'rid',width:80,align:'center',finalWidth:'true',type:'select',items:${allrole}}">角色</th>
				<th data-options="{name:'password',width:150,align:'center',finalWidth:'true',hide:'true'}">密码</th>
                <th data-options="{name:'date',align:'center',width:200,type:'date',finalWidth:'true',pattern:'yyyy-MM-dd HH:mm:ss',render:function(value){return value?value.substr(0,19):value}}">注册日期</th>
            </tr>
        </thead>
    </table>
</div>