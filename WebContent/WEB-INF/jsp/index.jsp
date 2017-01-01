<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	String baseServerPix=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+"/";
	%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8" />
<title>首页</title>

<script src="<%=request.getContextPath()%>/js/common/jquery-1.7.2.min.js"></script>
<script src="<%=request.getContextPath()%>/js/common/bootstrap.js"></script>
<script src="<%=request.getContextPath()%>/js/common/commonFunc.js"></script>
	<%-- <script src="<%=request.getContextPath()%>/js/index.js"></script> --%>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/bootstrap-responsive.min.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/font-awesome.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/adminia.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/adminia-responsive.css" rel="stylesheet" />

<!--  <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
 <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script> -->
</head>

<body>
<div class="container">
<br/>
    <h1>感性工学辅助设计系统</h1>
    <!-- 跳转的例子，先存着 -->
<!--     <a href="add" type="submit" class="btn btn-sm btn-warning">修改</a> -->
    <div style="height: 10px"></div>
	<div class="content">
		<div class="container">

			<div class="row">

				<div class="widget-content">
					<form id="myform" class="form-inline">

						<div class="col-sm-3">
							<label for="" class="col-sm-2 control-label">员工号</label> <input
								type="text" class="form-control" id="id" name="id"
								placeholder="userId">
														
								<label for="" class="col-sm-2 control-label">姓名</label> <input
								type="text" class="form-control" id="xingming" name="xingming"
								placeholder="name">
								<label for="" class="col-sm-2 control-label">性别</label> <input
								type="text" class="form-control" id="xingbie" name="xingbie"
								placeholder="男或女">
						</div>
						<!-- <br />
						<div class="col-sm-3">
							<label for="" class="col-sm-2 control-label">姓名</label> <input
								type="text" class="form-control" id="xingming" name="xingming"
								placeholder="name">
								<label for="" class="col-sm-2 control-label">性别</label> <input
								type="text" class="form-control" id="xingbie" name="xingbie"
								placeholder="男或女">						
								
						</div>
						<br />
						<div class="col-sm-3">
							<label for="" class="col-sm-2 control-label">性别</label> <input
								type="text" class="form-control" id="xingbie" name="xingbie"
								placeholder="男或女">
														
								
						</div> -->
						<br/>
						<button type="button" id="modify" class="btn btn-primary left" >查询</button>
						<button type="button" id="modify" class="btn btn-primary left" onclick = "test();">test</button>
						<a href="adduser" type="submit" class="btn btn-primary btn-sm"style = "borde-radius:4px;">添加新用户</a>
						<a href="word" type="submit" class="btn btn-primary btn-sm"style = "borde-radius:4px;">基础词汇</a>
						<a href="color" type="submit" class="btn btn-primary btn-sm"style = "borde-radius:4px;">样本颜色</a>
						<a href="simple" type="submit" class="btn btn-primary btn-sm"style = "borde-radius:4px;">样本数据</a>
						<a href="result" type="submit" class="btn btn-primary btn-sm"style = "borde-radius:4px;">结果查询</a>
					</form>
				</div>
			</div>
		</div>
	</div>
    
    
	
	
	<!-- <a href="adduser" type="submit" class="btn btn-primary btn-sm"style = "borde-radius:4px;">添加新用户</a> -->
	<table class="table table-bordered table-striped" id="userlist">
            <tr>
                <th>员工号</th>
                <th>姓名</th>
                <th>性别</th>
                <th>手机号</th>
                <th>生日</th>
                <th>工资</th>
                <th>部门</th>
                <th>老板</th>
            </tr>
    </table>
	<script type="text/javascript">
	
	function test() {
		$.ajax({
			type:'POST',
			url:"${pageContext.request.contextPath}/user?userlist",
			//url: basePath + "/user?userlist",
			async:true,
			cache:false,
			dataType:'JSON',
			success:function(userlist){
				var test = userlist[0].name;
				alert(test);
			}
		});
	}
	
	 /* $(document).ready(function() { 
		$.ajax({
			type:'POST',
			url:"${pageContext.request.contextPath}/user?userlist",
			async:true,
			cache:false,
			dataType:'JSON',
			success:function(userlist){
				for(var i = 0;i<userlist.length;i++){
					$("#userlist").append(
					'<tr>'+
						'<td>'+userlist[i].userid+'</td>'+
						'<td>'+userlist[i].name+'</td>'+
						'<td>'+userlist[i].sex+'</td>'+
						'<td>'+userlist[i].phonenumber+'</td>'+
						'<td>'+userlist[i].birthday+'</td>'+
						'<td>'+userlist[i].salary+'</td>'+
						'<td>'+userlist[i].department+'</td>'+
						'<td>'+userlist[i].bossid+'</td>'+
						'<td>'+
	                       ' <a href="deletetable?key='+ userlist[i].userid +'" type="button" class="btn btn-sm btn-danger">删除</a>'
	                        +'<a href="updatetable?key='+ userlist[i].userid +'" type="button" class="btn btn-sm btn-warning">修改</a>'+
	                    '</td>'+
					'</tr>')
				}
			},
			error:function(){
				alert("error");
			}
		});
	});  */
	</script>
	<script >
		/* $("#modify").click(function() {
			
			$("td").remove();
			var gonghao=$("#id").val();
			var xingming=$("#xingming").val();
			var xingbie=$("#xingbie").val();
			$.ajax({
				type:'POST',
				url:"${pageContext.request.contextPath}/user?selectbyid",
				async:true,
				cache:false,
				dataType:'JSON',
				data:{"userid":gonghao,"name":xingming,"sex":xingbie},
				success:function(userlist){
					for(var i = 0;i<userlist.length;i++){
						$("#userlist").append(
						'<tr>'+
							'<td>'+userlist[i].userid+'</td>'+
							'<td>'+userlist[i].name+'</td>'+
							'<td>'+userlist[i].sex+'</td>'+
							'<td>'+userlist[i].phonenumber+'</td>'+
							'<td>'+userlist[i].birthday+'</td>'+
							'<td>'+userlist[i].salary+'</td>'+
							'<td>'+userlist[i].department+'</td>'+
							'<td>'+userlist[i].bossid+'</td>'+
							'<td>'+
		                       ' <a href="deletetable?key='+ userlist[i].userid +'" type="button" class="btn btn-sm btn-danger">删除</a>'
		                        +'<a href="updatetable?key='+ userlist[i].userid +'" type="button" class="btn btn-sm btn-warning">修改</a>'+
		                    '</td>'+
						'</tr>')
					}
				},
				error:function(){
					alert("error");
				}
			});
		}); */
	</script>



</div>
</body>