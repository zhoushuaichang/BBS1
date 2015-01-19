package com.shinow.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.stereotype.Service;

import com.shinow.model.BlogClassInfo;
import com.shinow.model.BlogLogInfo;

import com.shinow.model.Lable;
import com.shinow.model.UserInfo;
@Service
public class BlogLogInfoDAO {
	@Resource
	private JdbcTemplate jt;

	// 根据userID的查询博客日志信息表的信息
	public List<BlogLogInfo> queryByuserID(int userID) {
		final List<BlogLogInfo> result = new

		ArrayList<BlogLogInfo>();
		jt.query("select * from blog_log_info  where userID=?",
				new Object[] { userID }, new int[]{Types.INTEGER }, new

				RowCallbackHandler() {
					@Override
					public void processRow(ResultSet rst)

					throws SQLException {
						BlogLogInfo one_info = new BlogLogInfo();
						one_info.setUserID(rst.getInt("userID"));
						one_info.setBlogId(rst.getInt("blogId"));
						one_info.setLableId(rst.getInt("lableId"));
						one_info.setBlogClassId(rst.getInt("blogClassId"));
						one_info.setBlogLable(rst.getString("blogLable"));
						one_info.setBlogMsg(rst.getString("blogMsg"));
						one_info.setBlogTitle(rst.getString("blogTitle"));
						one_info.setBlogTime(rst.getTimestamp("blogTime"));
						result.add(one_info);
					}
				});
		return result;
	}

	// 插入博客日志信息表
	public boolean insert(BlogLogInfo user) {
		boolean result = false;
		String sql = "insert into blog_log_info(blogTime,blogMsg,blogTitle,lableId,userID,blogClassId) values(NOW(),?,?,?,?,?)";
		int i = jt.update(sql,new Object[] { user.getBlogMsg(),user.getBlogTitle(), user.getLableId(), user.getUserID(),user.getBlogClassId() }, new int[] {Types.VARCHAR, Types.VARCHAR, Types.INTEGER, Types.INTEGER, Types.INTEGER });
		result = i > 0;
		return result;
	}
	public List<BlogLogInfo> qureyall(){
		final List<BlogLogInfo> bloglist=new ArrayList<BlogLogInfo>();
		jt.query("SELECT a.*, b.blogClassName,c.userName,lable.labelName FROM blog_log_info a INNER JOIN blogclass_info b on a.blogClassId =b.blogClassId INNER JOIN user_info c on a.userId = c.userId INNER JOIN lable on a.lableId = lable.lableId",new RowCallbackHandler() {
			
			@Override
			public void processRow(ResultSet rs) throws SQLException {
				BlogLogInfo blog = new BlogLogInfo();
				UserInfo user=new UserInfo();
				Lable lable =new Lable();
				BlogClassInfo bc=new BlogClassInfo();
				blog.setUserID(rs.getInt("userID"));
				blog.setBlogId(rs.getInt("blogId"));
				blog.setLableId(rs.getInt("lableId"));
				blog.setBlogClassId(rs.getInt("blogClassId"));
				blog.setBlogLable(rs.getString("blogLable"));
				blog.setBlogMsg(rs.getString("blogMsg"));
				blog.setBlogTitle(rs.getString("blogTitle"));
				blog.setBlogTime(rs.getTimestamp("blogTime"));
				user.setUserName(rs.getString("userName"));
				lable.setLableName(rs.getString("lableName"));
				bc.setBlogClassName(rs.getString("blogClassName"));
				blog.setLable(lable);
				blog.setUser(user);
				blog.setType(bc);
				bloglist.add(blog);
			
			}
		});
		return bloglist;
		
	}
	
	
}












