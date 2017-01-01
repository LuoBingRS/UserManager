package com.tony.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.tony.model.User;
import com.tony.service.UserService;

@Controller
public class LoginController {
	@Autowired
	private UserService userservice;
	@RequestMapping(value="",method=RequestMethod.GET)
	public String index(HttpServletRequest request){
		return "index";
	}
	
	@RequestMapping(value="adduser",method=RequestMethod.GET)
	public String add(HttpServletRequest request){
		//return "um/addUser";
		return "um/addUser";
	}
/*	@RequestMapping(value="eChartTest",method=RequestMethod.GET)
	public String color(HttpServletRequest request){
		//return "um/addUser";
		return "um/eChartTest";
	}*/
	
	@RequestMapping(value="word",method=RequestMethod.GET)
	public String word(HttpServletRequest request){
		//return "um/addUser";
		return "um/word";
	}
	@RequestMapping(value="color",method=RequestMethod.GET)
	public String color(HttpServletRequest request){
		//return "um/addUser";
		return "um/color";
	}
	@RequestMapping(value="simple",method=RequestMethod.GET)
	public String simple(HttpServletRequest request){
		//return "um/addUser";
		return "um/simple";
	}
	@RequestMapping(value="result",method=RequestMethod.GET)
	public String result(HttpServletRequest request){
		//return "um/addUser";
		return "um/result";
	}
	
	
	
	/**
	 * 根据前台传回的值来插入数据库中
	 * @param request
	 * @return
	 * @throws ParseException 
	 */
	@RequestMapping("/addtable")
	public String addToTable(HttpServletRequest request) throws ParseException{
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		int userid=Integer.parseInt(request.getParameter("userid").trim());
		String name=request.getParameter("name").trim();
		String sex=request.getParameter("sex").trim();
		String phonenumber=request.getParameter("phonenumber").trim();
//		Date birthday=null;
		Date birthday=sdf.parse(request.getParameter("birthday").trim());
		double salary=Double.parseDouble(request.getParameter("salary").trim());
		String department=request.getParameter("department").trim();
		int bossid=Integer.parseInt(request.getParameter("bossid").trim());
		
		User user = new User();
		user.setUserid(userid);
		user.setName(name);
		user.setSex(sex);
		user.setPhonenumber(phonenumber);
		user.setBirthday(birthday);
		user.setSalary(salary);
		user.setDepartment(department);
		user.setBossid(bossid);
		userservice.insert(user);
		
		return "index";
	}
	
	
	@RequestMapping(value="deletetable",method=RequestMethod.GET)
	public String deletetotable(@RequestParam("key") String key){
		
		int userid=Integer.parseInt(key);
		User user=new User();
		user.setUserid(userid);
		userservice.delUser(user);
		
		return "index";
	}
	
	
	@RequestMapping(value = "updatetable",method = RequestMethod.GET)
	public ModelAndView updatetotable(@RequestParam("key") String key){
		
		int userid=Integer.parseInt(key);
		User userlist=userservice.queryUserById(userid);
		Map<String, Object> result=new HashMap<>();
		result.put("userid", userlist.getUserid());
		result.put("name", userlist.getName());
		result.put("sex", userlist.getSex());
		result.put("phonenumber", userlist.getPhonenumber());
		result.put("birthday", userlist.getBirthday());
		result.put("salary", userlist.getSalary());
		result.put("department", userlist.getDepartment());
		result.put("bossid", userlist.getBossid());
		return new ModelAndView("um/updateUser",result); 
	}
	
	
	@RequestMapping("/updatetable2")
	public String updateToTable2(HttpServletRequest request) throws ParseException{
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		int userid=Integer.parseInt(request.getParameter("userid").trim());
		String name=request.getParameter("name").trim();
		String sex=request.getParameter("sex").trim();
		String phonenumber=request.getParameter("phonenumber").trim();
//		Date birthday=null;
		Date birthday=sdf.parse(request.getParameter("birthday").trim());
		double salary=Double.parseDouble(request.getParameter("salary").trim());
		String department=request.getParameter("department").trim();
		int bossid=Integer.parseInt(request.getParameter("bossid").trim());
		
		User user = new User();
		user.setUserid(userid);
		user.setName(name);
		user.setSex(sex);
		user.setPhonenumber(phonenumber);
		user.setBirthday(birthday);
		user.setSalary(salary);
		user.setDepartment(department);
		user.setBossid(bossid);
		userservice.update(user);
		
		return "index";
	}
}
