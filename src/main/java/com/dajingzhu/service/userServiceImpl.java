package com.dajingzhu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dajingzhu.bean.User;
import com.dajingzhu.dao.UserDao;

@Service
public class userServiceImpl implements userService {
	
	@Autowired
	private UserDao dao;


	@Override
	public  List<User> findUser(User user) {
		
		return dao.findUser(user);
	}

}
