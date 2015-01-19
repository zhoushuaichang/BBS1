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
			<img id="menuLeft" src="images/menuLeft.gif" alt="左滑动" /> 
			<img id="menuRight" src="images/menuRight.gif" alt="右滑动" />
		    <img id="menuMasker" src="images/menuBlock.gif" style="left: 340px;"
				alt="蒙" />
			<ul>
				<li><s:a href="index.jsp">首 页</s:a></li>
				<li><s:a href="blogList.jsp">日 志</s:a></li>
				<li><s:a href="photo.jsp">相 册</s:a></li>
				<li><s:a href="friends.jsp">博 友</s:a></li>
				<li><s:a href="about.jsp" class="over">关 于</s:a></li>
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
				<span>当前位置 > 关于我们</span>
			</div>
			<div class="contentBox">
				<p>唐山市启奥职业培训学校即唐山启奥IT实训基地，依托知名的专业化软件公司，致力于高端IT人才的培养。建筑面积2000多平方米，具有强大的师资队伍和教学管理团队以及设备精良的实训环境，是唐山市高校大学生就业见习基地。</p>
				<p>启奥实训设有教学研究中心、培训见习中心、技术研发中心、就业服务中心、企业服务中心、综合管理中心等。</p>
				<p>启奥实训一方面为公司的发展提供所需人才，另一方面为企事业单位的信息化建设提供合格的人才，是一个非赢利性的实训基地，目的是帮助大学生。</p>
				<p>拥有优秀的职业素养</p>
				<p>拥有优秀的职业素养</p>
				<p>培养成功的职业思维</p>
				<p>具备实战的IT技能</p>
				<p>丰富自身的工作经验</p>
				<p>掌握职场的生存技巧</p>
				<p>实现需求的零距离、适应的零时间、就业的零等待、人才的零对接。</p>
				<p>启奥实训的特点是：先进实用的技能培训+现代公司的经验积累</p>
				<p>启奥实训的目标是：建立一流的实训基地，培养一流的IT人才。</p>
				<p>口号：启奥实训 IT前程</p>
				<p>目标：建立一流的实训基地，培养一流的IT人才</p>
				<p>特点：先进实用的技能培训+现代公司的经验积累</p>
			</div>
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
					<p class="reName">	<s:a href="#">张三</s:a>		</p>
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