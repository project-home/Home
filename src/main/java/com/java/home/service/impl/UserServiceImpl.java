package com.java.home.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.java.home.mapper.UserMapper;
import com.java.home.pojo.User;
import com.java.home.service.UserService;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService{

	@Resource
	public UserMapper userMapper;
	
	@Override
	public List<User> findAllUser() {
		// TODO Auto-generated method stub
		
		List<User> user = userMapper.findAllUser();
		
		
		return user;
	}

}
