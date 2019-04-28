package com.kindergarten.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kindergarten.dao.AdminMapper;
import com.kindergarten.dao.UserMapper;
import com.kindergarten.entity.Admin;
import com.kindergarten.entity.Children;
import com.kindergarten.entity.User;
@Service("adminService")
public class AdminServiceImpl implements AdminServiceIfac {
	@Resource
	private AdminMapper adminMapper;
	
	@Resource
	private UserMapper userMapper;
	
	//管理员登录
	public Admin LoginAdmin(String adminName, String password) {
		
		return adminMapper.findAdminByNameAndPwd(adminName, password);
	}
	//查询所有用户
	public List<User> selectAllUser(User user) {
		
		return adminMapper.queryAllUser(user);
	}
	//组合+模糊查询用户信息
	public List<User> selectUserByIf(User user) {
		
		return adminMapper.queryUserByIf(user);
	}
	/*//修改某个用户的信息
	 public void editUser_admin(User user) {
		adminMapper.updateUser(user);
		
	}*/
	//查询所有报名信息
	public List<Children> selectAllApple(Children children) {
	return userMapper.queryAllApple(children);
	}

}
