package com.tony.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tony.model.User;
import com.tony.service.UserMrService;
import com.tony.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserMrService userMrService;
	
	@RequestMapping(params = "userlist")
	@ResponseBody
	public List<com.tony.model.UserMrModel> getUser(){
		
		List<com.tony.model.UserMrModel> userList = userMrService.queryAll();
		return userList;
		
	}
	
	
	
	
//	@RequestMapping(params = "selectbyid")
//	@ResponseBody
//	public List<User> queryUser(@RequestParam("userid") String id,@RequestParam("name") String name,
//	@RequestParam("sex") String sex){
//		List<User> userList;
//		id=id.trim();
//		name=name.trim();
//		sex=sex.trim();
//		if (id!="") {
//			int userid=Integer.parseInt(id);
//			userList=userservice.queryUserByUserid(userid);
//			return userList;
//		}
//		if (name!="") {
//			userList=userservice.queryUserByName(name);
//			return userList;
//		}
//		if(sex!=""){
//		userList=userservice.queryUserBySex(sex);
//		return userList;
//	}		
//		return null;
//	}
//	public String selectbyid(@RequestBody User user,
//			HttpServletRequest request){		
//		User user2 = userservice.queryUserById(user.getUserid());
//		Map<String, Object> result = new HashMap<>();
//		result.put("success", user2);
//		return result;
//		return new Gson().toJson(user2);
//	}
	
}





