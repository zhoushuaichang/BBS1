package com.shinow.model;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

public class UserInfo {
	private int userID;
	private int schoolId;
	private int sexId;
	private String userName;
	private String userPass;
	private Timestamp userBir;
	private String problem;
	private String answer;
	private String nickName;
	private String pic;
	private String userAdd;
	private SchoolInfo school;

	public int getSchoolId() {
		return schoolId;
	}
	public void setSchoolId(int schoolId) {
		this.schoolId = schoolId;
	}
	public int getSexId() {
		return sexId;
	}
	public void setSexId(int sexId) {
		this.sexId = sexId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPass() {
		return userPass;
	}
	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}
	public Timestamp getUserBir() {
		return userBir;
	}
	public void setUserBir(Timestamp userBir) {
		this.userBir = userBir;
	}
	public String getProblem() {
		return problem;
	}
	public void setProblem(String problem) {
		this.problem = problem;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public String getUserAdd() {
		return userAdd;
	}
	public void setUserAdd(String userAdd) {
		this.userAdd = userAdd;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public SchoolInfo getSchool() {
		return school;
	}
	public void setSchool(SchoolInfo school) {
		this.school = school;
	}
	public String getre_time1() {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date d=new Date(userBir.getTime());
		return sdf.format(d);
	}
}
