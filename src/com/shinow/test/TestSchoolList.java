package com.shinow.test;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.shinow.dao.SchoolInfoDAO;
import com.shinow.model.SchoolInfo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:application-context.xml"})
public class TestSchoolList {

	private Logger logger=Logger.getLogger(getClass());
	
	@Resource
	private SchoolInfoDAO dao;
	@Test
	public void test(){
		logger.debug("!!!!!!!!!!!!!");
		List<SchoolInfo> schoolList=dao.getSchoolList();
		for(SchoolInfo school:schoolList){
			System.out.println(school.getSchoolName());
		}
	}
	
}
