package com.shinow.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.stereotype.Service;

import com.shinow.model.SchoolInfo;

@Service
public class SchoolInfoDAO {

	@Resource
	private JdbcTemplate jt;
	
	public List<SchoolInfo> getSchoolList(){
		final List<SchoolInfo> result=new ArrayList<SchoolInfo>();
		jt.query("select * from school_info", new Object[]{}, new int []{}, new RowCallbackHandler() {
			
			@Override
			public void processRow(ResultSet rs) throws SQLException {
				SchoolInfo school=new SchoolInfo();
				school.setSchoolId(Integer.valueOf(rs.getString("schoolId")));
				school.setSchoolName(rs.getString("schoolName"));
				result.add(school);
			}
		});
		return result;
	}
	
}
