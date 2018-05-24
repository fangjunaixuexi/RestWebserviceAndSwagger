package com.dajingzhu.dao;

import java.util.List;

import com.dajingzhu.bean.User;

//@Repository
public interface UserDao {


	 List<User> findUser(User user);

}
