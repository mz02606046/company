package com.era.service;

import java.util.List;

import com.era.orm.Comment;

public interface CommentService {
	/**
	 * 查询所有评论
	 * 
	 * @param pageNo
	 * @param pageSize
	 * @return
	 */
	public List<Object> selComment(int pageNo, int pageSize);

	/**
	 * 删除评论
	 * 
	 * @param id
	 * @return
	 */
	public boolean delComment(int id);

	/**
	 * 查询所有评论条数
	 * 
	 * @return
	 */
	public int numberComment();

	/**
	 * 查询商家的评论条数
	 * 
	 * @param sellerId
	 * @param type 
	 * @return
	 */
	public int countComment(int sellerId, String type);

	/**
	 * 添加评论
	 * 
	 * @param comment
	 * @return
	 */
	public boolean putComment(Comment comment);

	/**
	 * 查询商家的评论
	 * 
	 * @param sellerId
	 * @param pageNo
	 * @param pageSize
	 * @return
	 */
	public List<Comment> getComment(int sellerId, int pageNo, int pageNum);
	
	/**
	 * 查询获取对应商家评论列表
	 * @param sellerId
	 * @param pageNo
	 * @param pageNum
	 * @return
	 */
	public List<Comment> getCommentInfo(String type,int sellerId,int pageNo,int pageNum);

	/**
	 * 查询分享评论
	 * @param shareId
	 * @param pageNo
	 * @param pageNum
	 * @return
	 */
	public List<Comment> selShareComment(String shareId, String pageNo,
			String pageNum);

	/**
	 * 添加评论
	 * @param shareId
	 * @param userId
	 * @param pid
	 * @param receiver
	 * @param content
	 */
	public void addShareComment(String shareId, String userId, String pid,
			String receiver, String content);
}
