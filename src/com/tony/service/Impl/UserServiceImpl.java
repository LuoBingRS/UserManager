package com.tony.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tony.dao.UserDao;
import com.tony.model.User;
import com.tony.service.UserService;

@Service("UserService")
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao userdao;
	
	public User queryUserById(int id) {
		return userdao.queryUserById(id);
	}

	public int insert(User user) {
		// TODO Auto-generated method stub
		return userdao.insert(user);
	}

	public int update(User user) {
		// TODO Auto-generated method stub
		return userdao.update(user);
	}

	public int  delUser(User user) {
		// TODO Auto-generated method stub
		return userdao.delUser(user);
	}

	public List<User> queryUsers() {
		// TODO Auto-generated method stub
		return userdao.queryUsers();
	}

	public List<User> queryUserByName(String name) {
		// TODO Auto-generated method stub
		return userdao.queryUserByName(name);
	}

	public List<User> queryUserBySex(String sex) {
		// TODO Auto-generated method stub
		return userdao.queryUserBySex(sex);
	}

	public List<User> queryUserByUserid(int id) {
		// TODO Auto-generated method stub
		return userdao.queryUserByUserid(id);
	}
	
}
