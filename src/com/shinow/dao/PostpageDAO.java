package com.shinow.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.stereotype.Repository;

import com.shinow.model.BlogClassInfo;
import com.shinow.model.BlogLogInfo;
import com.shinow.model.Lable;
import com.shinow.model.UserInfo;

@Repository
public class PostpageDAO {
	@Resource
	private JdbcTemplate jt;

	public List<BlogLogInfo> querypage(int pageSize, int pageIndex) {
		final List<BlogLogInfo> bloglist = new ArrayList<BlogLogInfo>();
		jt.query(
				"SELECT a.*, b.blogClassName,c.userName,lable.labelName FROM blog_log_info a INNER JOIN blogclass_info b on a.blogClassId =b.blogClassId INNER JOIN user_info c on a.userId = c.userId   INNER JOIN lable on a.lableId = lable.lableId ORDER BY a.blogTime DESC LIMIT "
						+ pageSize + "," +pageIndex + " ",
				new RowCallbackHandler() {

					@Override
					public void processRow(ResultSet rs) throws SQLException {
						BlogLogInfo blog = new BlogLogInfo();
						UserInfo user = new UserInfo();
						Lable lable = new Lable();
						BlogClassInfo bc = new BlogClassInfo();
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

	public int getRecordCount() {
		int i = jt.queryForInt("select count(0) from blog_log_info",
				new Object[] {}, new int[] {});
		return i;
	}

}
