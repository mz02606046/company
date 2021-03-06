package com.era.service;

import com.era.orm.User;
import com.era.orm.UserFeedBack;

public interface UserService
{
	/**
	 * 通过ID查询用户
	 * @param id
	 * @return
	 */
	public User selUserId(int id);
	/**
	 * 用户登陆
	 * @param userName
	 * @param passWord
	 * @return
	 */
	public User login(String userName,String passWord);
	/**
	 * 通过qq登陆
	 * @param email
	 * @return
	 */
	public User loginQq(String email);
	/**
	 * 用qq添加qq用户
	 * @return
	 */
	public boolean addUser(User user);
	/**
	 * 添加用户反馈
	 * @param back
	 * @return
	 */
	public boolean addUserFeedBack(UserFeedBack back);
}
