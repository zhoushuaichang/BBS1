package com.shinow.dao;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.stereotype.Service;

import com.shinow.model.BlogClassInfo;
import com.shinow.model.BlogLogInfo;
import com.shinow.model.Lable;
import com.shinow.model.PhotoInfo;
import com.shinow.model.PhotoList;
import com.shinow.model.UserInfo;



@Service
public class PhotoInfoDAO {

	@Resource
	private JdbcTemplate jt;
	
	public List<PhotoInfo> querylist(){
		final List<PhotoInfo> result=new ArrayList<PhotoInfo>();
		jt.query("select * from photo_info ", new Object[]{}, new int[]{},new RowCallbackHandler() {
			
			@Override
			public void processRow(ResultSet rs) throws SQLException {
				PhotoInfo pif=new PhotoInfo();
				pif.setPhotoId(rs.getInt("photoId"));
				pif.setListId(rs.getInt("listId"));
				pif.setPhotoUrl(rs.getString("photoUrl"));
				pif.setDescription(rs.getString("description"));
				pif.setUploadTime(rs.getTimestamp("uploadTime"));
				result.add(pif);		
			}
		});
		return result;
	}

	// 插入相册信息表
	public boolean insert(PhotoInfo pif) {
		boolean result = false;
		String sql = "insert into photo_info(listId,photoUrl,description,uploadTime) values(?,?,?,?,getdate())";
		int i = jt.update(sql,new Object[] {  pif.getListId(),pif.getPhotoUrl(), pif.getDescription(),pif.getUploadTime()}, new int[] {Types.INTEGER, Types.VARCHAR,Types.VARCHAR,Types.DATE});
		result = i > 0;
		return result;
	}
	public List<PhotoInfo> qureyall(){
		final List<PhotoInfo> piflist=new ArrayList<PhotoInfo>();
		jt.query("select a.*,b.listid from photo_info a  INNER JOIN photo_list b on a.listid=b.listid ",new RowCallbackHandler() {
			
			@Override
			public void processRow(ResultSet rs) throws SQLException {
				PhotoInfo pif = new PhotoInfo();
				PhotoList plt=new PhotoList(); 
				pif.setPhotoUrl(rs.getString("photoUrl"));
				pif.setDescription(rs.getString("description"));
				pif.setUploadTime(rs.getTimestamp("uploadTime"));
				plt.setListId(rs.getInt("listId"));
				pif.setPlt(plt);
				piflist.add(pif);
			
			}
		});
		return piflist;
		
	}
}
