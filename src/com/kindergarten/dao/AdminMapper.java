package com.kindergarten.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.kindergarten.entity.Admin;
import com.kindergarten.entity.User;

public interface AdminMapper {
	//查询老师登录名密码
		public Admin findAdminByNameAndPwd(@Param("adminName")String adminName,@Param("password")String password); 
       //查询所有用户信息
		public List<User> queryAllUser(User user);
		//组合+模糊查询用户信息(根据用户名和真实姓名)
		public List<User> queryUserByIf(User user);
	/*	//修改某个用户信息
		public void updateUser(User user);*/
		

}
