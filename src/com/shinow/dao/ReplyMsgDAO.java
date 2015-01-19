package com.shinow.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.stereotype.Repository;

import com.shinow.model.MsgInfo;
import com.shinow.model.UserInfo;

@Repository
public class ReplyMsgDAO {
	@Resource
	private JdbcTemplate jt;
public  boolean insertMsg( MsgInfo msg){
	boolean result=false;

	int a=jt.update("insert into reply_info(friendId,replyMsg,replytTime)values(?,?,getdate())",new Object[]{msg.getFriendId(),msg.getMsgContent()},new int[]{Types.INTEGER,Types.VARCHAR});

	if(a>0){
		result =true;
	}
	return result;
}
 public List<MsgInfo> selectMsg(){
	  final List<MsgInfo> replylist=new ArrayList<MsgInfo>();
	 jt.query("SELECT user_info.userName,reply_info.*from reply_info JOIN user_info ON reply_info.friendId=user_info.userId",new RowCallbackHandler() {
		
		@Override
		public void processRow(ResultSet rs) throws SQLException {
			MsgInfo msg=new MsgInfo();
			msg.setMsgContent(rs.getString("replyMsg"));
			msg.setMsgTime(rs.getTimestamp("replyTime"));
			UserInfo user=new UserInfo();
			user.setUserName(rs.getString("userName"));
			msg.setUser(user);
			replylist.add(msg);
		}
	});
	 return replylist;
 } 
}
