package com.dajingzhu.dao;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.dajingzhu.bean.User;
@Repository
public class UserDaoImpl implements UserDao {
	ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
	// 获取IoC容器中JdbcTemplate实例
	JdbcTemplate jdbcTemplate = (JdbcTemplate) ctx.getBean("jdbcTemplate");

	@Override
	public  List<User> findUser(User user) {
		 String sql="select * from user where user_name=? and password=?";
		  List<User> user1=jdbcTemplate.query(sql, new Object[] {user.getUser_name(),user.getPassword()},BeanPropertyRowMapper.newInstance(User.class));
	
		return user1;
	}

}
