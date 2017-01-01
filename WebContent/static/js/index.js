function test() {
		$.ajax({
			type:'POST',
			//url:"${pageContext.request.contextPath}/user?userlist",
			url: basePath + "user?userlist",
			async:true,
			cache:false,
			dataType:'JSON',
			success:function(userlist){
				var test = userlist[0].name;
				alert(test);
			}
		});
	}
	