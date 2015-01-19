<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>blog首页</title>
<%
	String path;
	path = request.getContextPath();
%>
<link href="<%=path%>/style/style.css" rel="stylesheet" type="text/css" />
<script type="<%=path%>/text/javascript" src="js/jquery.js"></script>
<script type="<%=path%>/text/javascript" src="js/myJs.js"></script>
<script src="<%=path%>/js/my97/WdatePicker.js"></script>
</head>

<body>
	<div id="header">
		<div id="headerTop">
			<img src="<%=path%>/images/logo.gif" alt="启奥实训" />

			<div id="searchBox">
				<div id="searchSpan">
					<s:textfield id="keys"></s:textfield>

					<s:submit id="searchSub" value="搜索"></s:submit>

				</div>
				<img id="search" src="<%=path%>/images/search.gif" alt="搜索" />
			</div>
		</div>
		<div id="mainMenu">
			<img id="menuLeft" src="<%=path%>/images/menuLeft.gif" alt="左滑动" />
			<img id="menuRight" src="<%=path%>/images/menuRight.gif" alt="右滑动" />
			<img id="menuMasker" src="<%=path%>/images/menuBlock.gif"
				style="left: 340px;" alt="蒙" />
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
				<span>当前位置 > 用户注册</span>
			</div>
			<div class="contentBox">
				<div id="main">
					<div id="log" style="margin-top: 10px;">
						<s:form id="loginForm" action="reg" method="post" theme="simple"
							namespace="/reg">

							<div id="cmopd">
								<ul>
									<li><strong class="ltt">用户名： </strong>
									<s:textfield name="user.userName" styleClass="ltx"></s:textfield></li>
									<li><strong class="ltt">用户密码：</strong>
									<s:password name="user.userPass" styleClass="ltx"></s:password></li>
									<li><strong class="ltt">确认密码：</strong>
									<s:password name="userpass1" styleClass="ltx"></s:password></li>
									<li><strong class="ltt">性别： </strong>
									<s:radio name="user.sexId" value="1" list="#{1:'男',2:'女' }"
											styleClass="ltx"></s:radio></li>
									<li><strong class="ltt">出生日期：</strong>
									<s:textfield name="user.userBir" styleClass="ltx" onclick="WdatePicker()" readonly="true"></s:textfield></li>
									
									<li><strong class="ltt">院校： </strong> <s:select
			name="user.schoolId" list="schoolList" listKey="schoolId"
			listValue="schoolName"></s:select><br /></li>
									<li><strong class="ltt">密码问题：</strong>
									<s:textfield name="user.problem" styleClass="ltx"></s:textfield></li>
									<li><strong class="ltt">密保答案：</strong>
									<s:textfield name="user.answer" styleClass="ltx"></s:textfield></li>
									<li><strong class="ltt">昵 称： </strong>
									<s:textfield name="user.nickName" styleClass="ltx"></s:textfield></li>
									<li><strong class="ltt">用户头像：</strong>
									<s:textfield name="user.pic" styleClass="ltx"></s:textfield></li>
									<li><strong class="ltt">用户地址：</strong>
									<s:textfield name="user.userAdd" styleClass="ltx"></s:textfield></li>
									<li><strong class="ltt">&nbsp;</strong>
									<s:checkbox name="checkbox" styleClass="ltc"></s:checkbox>同意服务条款</li>
								</ul>
							</div>
							<div id="cfopd">
								<s:submit id="btrue" class="btn_sub" value="确认"></s:submit>
								<s:submit class="btn_res" value="返回"></s:submit>
							</div>
						</s:form>
					</div>

				</div>
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
<script type="text/javascript">
	<s:iterator value="fieldErrors">
	<s:iterator value="value" status="stut">
	alert("<s:property value='value.get(#stut.index).toString()'/>");
	</s:iterator>
	</s:iterator>
</script>
</html>