package com.tony.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tony.dao.UserMr;
import com.tony.service.UserMrService;

@Service("UserMr")
public class UserMrImpl implements UserMrService{
	
	@Autowired
	private UserMr userMr;

	@Override
	public List<com.tony.model.UserMrModel> queryAll() {
		List<com.tony.model.UserMrModel> list = userMr.queryAll(); 
		return list;
	}
	
}
