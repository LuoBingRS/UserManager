package com.tony.dao;

import java.util.List;

import com.tony.model.User;

public interface UserDao {
	public User queryUserById(int id);
	public int insert(User user);
	public int  update(User user);
	public int  delUser(User user);
	public List<User> queryUsers();
	public List<User> queryUserByName(String name);
	public List<User> queryUserBySex(String sex);
	public List<User> queryUserByUserid(int id);
}
