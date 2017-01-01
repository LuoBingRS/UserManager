<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8" />
<title>Document</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="apple-mobile-web-app-capable" content="yes" />

<link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/bootstrap-responsive.min.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/font-awesome.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/adminia.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/adminia-responsive.css" rel="stylesheet" />

 <!-- <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
 <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script> -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>

<body>

<div>
<h1>添加用户</h1>
</div>

	<div class="container">
    	<h1>添加新用户</h1>
    	<hr/>
    	<form action="/usermanager/addtable"   method="post" >
     	<fieldset>
        <div class="form-group">
        <label class="col-sm-2 control-label" for="userid">员工号</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" id="userid" name="userid" placeholder="123456"/><br/>
        </div>
       
        <div class="form-group">
        <label class="col-sm-2 control-label" for="name">姓名</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" id="name" name="name" placeholder="张三"/><br/>
        </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label" for="sex">性别</label>
            <div class="col-sm-4">
            <input type="text" class="form-control" id="sex" name="sex" placeholder="男"/><br/>
            </div>
        </div> 
        <div class="form-group">
     <label class="col-sm-2 control-label" for="phonenumber">手机号</label>
     <div class="col-sm-4">
            <input type="text" class="form-control" id="phonenumber" name="phonenumber" placeholder="13012345678"/><br/>
        </div>  </div>
         <div class="form-group">
     	<label class="col-sm-2 control-label" for="birthday">生日</label>
      	<div class="col-sm-4">
      	      	<input type="text" class="form-control" id="birthday" name="birthday" placeholder="2016-08-01"/><br/>
        	</div> 
        	<div class="form-group">
    	 <label class="col-sm-2 control-label" for="salary">工资</label>
      	<div class="col-sm-4">
            	<input type="text" class="form-control" id="salary" name="salary" placeholder="5000.06"/><br/>
            	</div>
        	</div>
        	<div class="form-group">
     	<label class="col-sm-2 control-label" for="departmen">部门</label>
      	<div class="col-sm-4">
            	<input type="text" class="form-control" id="department" name="department" placeholder="Enter department"/><br/>
        	</div>
       	 <div class="form-group">
    	 <label class="col-sm-2 control-label" for="bossid"> 老板</label>
      	<div class="col-sm-4">
           	<input type="text" class="form-control" id="bossid" name="bossid" placeholder="123456"/><br/>
           	</div>
       	 </div>
          	</fieldset> 
        	<div class="form-group">
            	<button type="submit" class="btn btn-sm btn-success">提交</button>
            	<input type="submit"class="btn btn-sm btn-success" value="提交"/>  
        	</div>
    	</form>
	</div>
	<script src="./js/common/jquery-1.7.2.min.js"></script>
	<script src="./js/common/bootstrap.js"></script>
	<script src="./js/common/commonFunc.js"></script>
</body>