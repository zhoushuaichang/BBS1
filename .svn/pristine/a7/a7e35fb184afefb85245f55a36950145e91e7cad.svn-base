package com.shinow.test;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.shinow.dao.BlogLogInfoDAO;
import com.shinow.model.BlogLogInfo;
import com.shinow.model.UserInfo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:application-context.xml"})
public class Testbolglist1 extends AbstractJUnit4SpringContextTests{
@Resource
private BlogLogInfoDAO dao;
 UserInfo user=new UserInfo();

@Test
public void test1(){
	List<BlogLogInfo> a=dao.qureyall();
	System.out.println(a.size());
	for(BlogLogInfo s:a){
		System.out.println(s.getBlogClassId());
		
	}
	
	
	
	
}
}

