<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>blog首页</title>
<link href="style/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/myJs.js"></script>
</head>

<body>
	<div id="header">
		<div id="headerTop">
			<img src="images/logo.gif" alt="启奥实训" />
			<div id="searchBox">
				<div id="searchSpan">
					<s:textfield id="keys"></s:textfield>
					
					<s:submit id="searchSub" value="搜索" ></s:submit>
					
				</div>
				<img id="search" src="images/search.gif" alt="搜索" />
			</div>
		</div>
		<div id="mainMenu">
			<img id="menuLeft" src="images/menuLeft.gif" alt="左滑动" /> <img
				id="menuRight" src="images/menuRight.gif" alt="右滑动" /> <img
				id="menuMasker" src="images/menuBlock.gif" style="left: 120px;"
				alt="蒙" />
			<ul>
				<li><s:a href="index.jsp">首 页</s:a></li>
				<li><s:a href="blogList.jsp" class="over">日 志</s:a></li>
				<li><s:a href="photo.jsp">相 册</s:a></li>
				<li><s:a href="friends.jsp">博 友</s:a></li>
				<li><s:a href="about.jsp">关 于</s:a></li>
			</ul>
			<div id="tips" class="tips" >
				<label>欢迎:</label><s:property value="#session.current_userinfo.userName"/><label>回来</label>
				
				<s:hidden id="crruentuser" value="#session.current_userinfo.userName" ></s:hidden>
			</div>
		</div>
	</div>

	<div id="left">
		<div class="ListItem">
			<div class="ListItemTop">
				<span>当前位置 > 博文列表</span> <s:a href="editBlog.jsp" class="edit">[写日志]</s:a>
			</div>
			<s:iterator value="blog_list" >
			<ul class="ListBox">
				<li><s:a href="blogShow.jsp" target="_blank"><s:property value="blog.blogMsg" /></s:a> 
					<s:a href="" class="color1"><s:property value="blog.blogClassName" /></s:a>  <s:property value="blog.blogTime" />
				</li>
			</ul>
			</s:iterator>
		</div>
		<div class="pages">
			<s:a href="#">首页</s:a> <s:a href="#">1</s:a> <s:a href="#">2</s:a> <s:a href="#">3</s:a>
			<s:a href="#">4</s:a> <s:a href="#">5</s:a> <s:a href="#">末页</s:a>
		</div>
	</div>

	<div id="right">
		<div class="rightMenu">about us</div>
		<div class="rightNr">
			唐山市启奥职业培训学校即唐山启奥IT实训基地，依托知名的专业化软件公司，致力于高端IT人才的培养。建筑面积2000多平方米，具有强大的师资队伍和教学管理团队以及设备精良的实训环境，是唐山市高校大学生就业见习基地。
		</div>

		<div class="rightMenu">articles Category</div>
		<div class="rightNr">
			<ul>
				<li>
					<p class="reTag">
						<s:a href="#">DOTNET</s:a>
					</p>
				</li>
			</ul>
		</div>

		<div class="rightMenu">random posts</div>
		<div class="rightNr">
			<ul>
				<li>
					<p class="reName">
						<s:a href="#">css 3.0 中文手册API</s:a>
					</p>
				</li>
				<li>
					<p class="reName">
						<s:a href="#">CSS禅意花园中文版PDF电子书下载</s:a>
					</p>
				</li>
				<li>
					<p class="reName">
						<s:a href="#">HTML5</s:a>
					</p>
				</li>
			</ul>
		</div>

		<div class="rightMenu">recent comments</div>
		<div class="rightNr">
			<ul>
				<li>
					<p class="reName">
						<s:a href="#">张三</s:a>
					</p>
					<p class="reNr">我来说点啥.</p>
				</li>
			</ul>
		</div>

		<strong class="rightListTitle">STUDENTS</strong>
		<div class="rightList">
			<ul>
				<li><s:a href="#">张三</s:a> [唐山学院]</li>
			</ul>
		</div>
		<strong class="rightListTitle">ARCHIVE</strong>
		<div class="rightList">
			<ul>
				<li><s:a href="#">2010.05</s:a> (5)</li>
			</ul>
		</div>
	</div>

	<div id="footer">&copy; Copyright 2010. All rights shinowIT.com</div>
</body>
</html>