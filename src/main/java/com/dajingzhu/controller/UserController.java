package com.dajingzhu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.dajingzhu.bean.User;
import com.dajingzhu.service.userService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

@Api(value = "User")
@RestController
@RequestMapping("/user")
public class UserController {

	@Autowired
	private userService userservice;


	@RequestMapping(value = "/tologin", method = RequestMethod.POST)
	@ApiOperation(value = "post登录验证", notes = "post登录验证")
	public int tologin(@RequestBody User user) {
		System.out.println(user);
		System.out.println(user.getUser_name());
		System.out.println(user.getPassword());

		// 先到数据库验证
		 List<User> user1 = userservice.findUser(user);
		if (user1 != null&&user1.size()>1) {
			return 1;
		} else {
			return 0;
		}
	}
}
