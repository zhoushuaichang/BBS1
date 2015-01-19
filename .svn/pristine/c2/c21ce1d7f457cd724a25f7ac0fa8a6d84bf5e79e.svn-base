package com.shinow.test;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:application-context.xml"})
public class TestUserInfo {

	@Resource
	private JdbcTemplate jt;
	
	@Test
	public void test1(){
		
		int i=jt.queryForInt("select count(*) from user_info");
		System.out.println("!!!!!!!!!!");
	}
	
}
