package com.shinow.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.stereotype.Service;

import com.shinow.model.BlogClassInfo;

@Service
public class BlogClassInfoDAO {

	@Resource
	private JdbcTemplate jt;
	
	public List<BlogClassInfo> getBlogClassList(){
		final List<BlogClassInfo> result=new ArrayList<BlogClassInfo>();
		jt.query("select * from blogclass_info", new Object[]{}, new int []{},new RowCallbackHandler() {
			
			@Override
			public void processRow(ResultSet rs) throws SQLException {
				BlogClassInfo classInfo=new BlogClassInfo();
				classInfo.setBlogClassId(rs.getInt("blogClassId"));
				classInfo.setBlogClassName(rs.getString("blogClassName"));
				result.add(classInfo);
			}
		});
		return result;
	}
	
}
