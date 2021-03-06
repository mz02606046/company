<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
 <%
 String path = request.getContextPath();
 String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
 <html>
   <head>
     <base href="<%=basePath%>">
     <title>管理员</title>
  <meta http-equiv="pragma" content="no-cache">
  <meta http-equiv="cache-control" content="no-cache">
  <meta http-equiv="expires" content="0">    
  <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
  <meta http-equiv="description" content="This is my page">
  <link href="book/css/default/easyui.css" rel="stylesheet" type="text/css" />
  <link href="book/css/icon.css" rel="stylesheet" type="text/css" /> 
  <script src="book/js/jquery-1.10.2.js" type="text/javascript"></script>
  <script src="book/js/jquery.easyui.min.js" type="text/javascript"></script>
  <script src="book/js/easyui-lang-zh_CN.js" type="text/javascript"></script>   
  <script src="book/city/busmarket.js" type="text/javascript"></script>
   </head>
   <body >
       <div id="datagrid"></div>  
           <div id="editTxl" title="编辑窗口"  style="width: 600px; height: 300px;">
           <div style="padding: 20px 20px 40px 80px;">
            <form id="editForm" method="post">
            <input type="hidden" name="id"/>
            <table>
                <tr id="userName">
                    <td>  账号：</td>
                    <td> <input  name="userName"  class="easyui-validatebox"     data-options="required:true" style="width: 300px;" /></td>
                </tr>
                <tr id="passWord">
                    <td>  密码：</td>
                    <td> <input type="password" name="userPwd" class="easyui-validatebox"  data-options="required:true"  style="width: 300px;" /></td>
                </tr>
                <tr>
                    <td>  昵称：</td>
                    <td> <input  name="bmsUserName" class="easyui-validatebox"   style="width: 300px;" /></td>
                </tr>
                <tr>
                    <td>  联系电话：</td>
                    <td> <input  name="telephone" class="easyui-validatebox"   style="width: 300px;" /></td>
                </tr>
                <tr>
                    <td>  QQ：</td>
                    <td> <input  name="qq" class="easyui-validatebox"   style="width: 300px;" /></td>
                </tr>
                <tr>
                    <td>  Email：</td>
                    <td> <input  name="email" class="easyui-validatebox"   style="width: 300px;" /></td>
                </tr>
                <c:if test="${LoginUser.role == 1 }">
                 <tr>
                    <td> 城市</td>
                    <td>
                    	<select id="city" name="city" class="easyui-combobox" data-options="required:true" style="width: 300px;" editable="false">
                    		
                    	</select>
                    </td>
                </tr>
                <tr>
                    <td> 小区</td>
                    <td>
                    	<select id="villageId" name="villageId" class="easyui-combobox" data-options="required:true" style="width: 300px;" editable="false">
                    		
                    	</select>
                    </td>
                </tr>   
                </c:if>
                <c:if test="${LoginUser.role == 2 }">
                <tr>
                    <td> 小区</td>
                    <td>
                    	<select id="villageId" name="villageId" class="easyui-combobox" data-options="required:true" style="width: 300px;" editable="false">
                    		
                    	</select>
                    </td>
                </tr>   
                </c:if>
            </table>
            </form>
        </div>
    </div>
    
     <div id="search" title="查询窗口" style="width: 400px; height: 250px;">
        <div style="padding: 20px 20px 40px 80px;">
            <form id="searchForm" method="post">
            <table>
                <tr>
                    <td>标题：</td>
                    <td><input name="title" id="title" style="width: 150px;" /> </td>
                </tr>
                <tr>
                    <td>内容：</td>
                    <td><input name="conent" id="conent" style="width: 150px;" /> </td>
                </tr>
            </table>
            </form>
        </div>
        
        
        <div style="text-align: center; padding: 5px;">
            <a href="javascript:void(0)" onclick="searchTxl()" id="btn-search" icon="icon-ok">确定</a>
            <a href="javascript:void(0)" onclick="closeSearchWindow()" id="btn-search-cancel" icon="icon-cancel">取消</a>
        </div>
    </div> 
</body>
 </html>