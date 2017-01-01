<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8" />
<title>Document</title>

<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="apple-mobile-web-app-capable" content="yes" />

<link href="<%=request.getContextPath()%>/css/bootstrap.min.css"
	rel="stylesheet" />
<link
	href="<%=request.getContextPath()%>/css/bootstrap-responsive.min.css"
	rel="stylesheet" />


<link href="<%=request.getContextPath()%>/css/font-awesome.css"
	rel="stylesheet" />

<link href="<%=request.getContextPath()%>/css/adminia.css"
	rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/adminia-responsive.css"
	rel="stylesheet" />

 <!-- <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
 <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script> -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
<div class="container">
    <h1>添加新用户</h1>
    <hr/>
    <form action="/usermanager/updatetable2"   method="post" >
        <div class="form-group">
         <label class="col-sm-2 control-label" for="userid">员工号</label>
            <input type="test" class="form-control" id="userid" name="userid" placeholder="123456"
            value="${userid}"readonly="true"/><br/>
        </div>
        <div class="form-group">
         <label class="col-sm-2 control-label" for="userid">姓名</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="张三"
            value="${name}"/><br/>
        </div>
        <div class="form-group">
             <label class="col-sm-2 control-label" for="userid">性别</label>
            <input type="text" class="form-control" id="sex" name="sex" placeholder="男"
            value="${sex}"/><br/>
        </div>
        <div class="form-group">
      <label class="col-sm-2 control-label" for="userid">手机号</label>
            <input type="text" class="form-control" id="phonenumber" name="phonenumber" placeholder="13012345678"
            value="${phonenumber}"/><br/>
        </div>
         <div class="form-group">
      <label class="col-sm-2 control-label" for="userid">生日</label>
            <input type="test" class="form-control" id="birthday" name="birthday" placeholder="2016-08-01"
            value="2016-08-08"readonly="true"/><br/>
        </div> 
        <div class="form-group">
      <label class="col-sm-2 control-label" for="userid">工资</label>
            <input type="text" class="form-control" id="salary" name="salary" placeholder="5000.06"
            value="${salary}"/><br/>
        </div>
        <div class="form-group">
      <label class="col-sm-2 control-label" for="userid">部门</label>
            <input type="text" class="form-control" id="department" name="department" placeholder="Enter department"
            value="${department}"/><br/>
        </div>
        <div class="form-group">
      <label class="col-sm-2 control-label" for="userid">老板</label>
            <input type="text" class="form-control" id="bossid" name="bossid" placeholder="123456"
            value="${bossid}"/><br/>
        </div>
        <div class="form-group">
            <!-- <button type="submit" class="btn btn-sm btn-success">提交</button> -->
            <input type="submit"class="btn btn-sm btn-success" value="提交"/>  
        </div>
    </form>
</div>
<script src="./js/common/jquery-1.7.2.min.js"></script>
	<script src="./js/common/bootstrap.js"></script>
	<script src="./js/common/commonFunc.js"></script>
	
	
</body>