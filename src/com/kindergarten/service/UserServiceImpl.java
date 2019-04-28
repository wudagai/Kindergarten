package com.kindergarten.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kindergarten.dao.ChildrenMapper;
import com.kindergarten.dao.UserMapper;
import com.kindergarten.entity.Children;
import com.kindergarten.entity.ChildrenLeave;
import com.kindergarten.entity.User;

@Service("userService")
public class UserServiceImpl implements UserServiceIfac {
	@Resource
	private UserMapper userMapper;
	@Resource
	private ChildrenMapper childrenMapper;
   //登陆方法 
	public User LoginUser(User user) {
		return userMapper.findUserByNameAndPwd(user);
	}

	//用户个人信息查询
	public User selectUserInfo(int userId) {
		return userMapper.queryUserById(userId);
	}

	//查询个人的幼儿的基本信息
	public User selectChildrenByUser(int userId) {
		return userMapper.queryChildrenByUser(userId);
	}

	//修改个人信息
	public void editUser(User user) {
		userMapper.updateUserById(user);
	}

	//删除用户
	public void removeUser(int userId) {
		userMapper.deleteUser(userId);
		
	}

   //幼儿报名
	public void insertChildren(Children children) {
		childrenMapper.appleChildren(children);
		
	}

	//查询用户的孩子的报名信息
	public User selectApple(int userId) {
		return userMapper.queryApple(userId);
	}

	//修改报名信息
	public void editApple(Children children) {
		userMapper.updateApple(children);
		
	}

	//查询某个孩子的报名信息
	public Children selectAppleById(int childrenId) {
		return userMapper.queryAppleById(childrenId);
	}

	//修改报名状态0---1
	public void editAppleOne(int childrenId) {
		userMapper.updateAppleOne(childrenId);
	}

	//修改报名状态1----3
	public void editAppleTwo(int childrenId) {
		userMapper.updateAppleTwo(childrenId);
	}

	/*幼儿请假*/
	public void childrenLeave(ChildrenLeave childrenLeave) {
		childrenMapper.leaveChildren(childrenLeave);
		
	}

	@Override
	public User selectAllLeave(int userId) {
		return userMapper.queryAllLeave(userId);
	}

	@Override
	public void insertUser(User user) {
		userMapper.addUser(user);
		
	}


}
