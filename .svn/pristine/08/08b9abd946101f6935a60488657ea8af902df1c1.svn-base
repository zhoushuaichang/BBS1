package com.shinow.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.stereotype.Service;

import com.shinow.model.Lable;

@Service
public class LableDAO {

	@Resource
	private JdbcTemplate jt;
	
	public List<Lable> getLableList(){
		final List<Lable> lableList=new ArrayList<Lable>();
		jt.query("select * from lable",new Object[]{},new int []{},new RowCallbackHandler() {
			
			@Override
			public void processRow(ResultSet rs) throws SQLException {
				Lable lab=new Lable();
				lab.setLableId(rs.getInt("lableId"));
				lab.setLableName(rs.getString("lableName"));
				lableList.add(lab);
			}
		});
		return lableList;
	}
	
}
