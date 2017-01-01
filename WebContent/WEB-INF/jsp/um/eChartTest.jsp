<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8" />
<title>ECharts</title>

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

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
<script src="./js/common/jquery-1.7.2.min.js"></script>
<script src="./js/common/echarts.js"></script>
<!-- 	<script src="./js/common/bootstrap.js"></script>
	<script src="./js/common/commonFunc.js"></script> -->
	
<body>
    <!-- 为 ECharts 准备一个具备大小（宽高）的 DOM -->
    <div id="main" style="width: 600px;height:400px;"></div>
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
       $(document).ready(function() {
        var myChart = echarts.init(document.getElementById('main'));
        // 指定图表的配置项和数据
        var option = {
            title: {
                text: 'ECharts 入门示例'},
            tooltip: {},
            legend: {
                data:['销量']},
            xAxis: {
                data: ["衬衫","羊毛衫","雪纺衫","裤子","高跟鞋","袜子"]},
            yAxis: {},
            series: [{
                name: '销量',
                type: 'bar',
                data: [5, 20, 36, 10, 10, 20]}]
        };
        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);}
    </script>
</body>
	
	
	
	
	
</body>