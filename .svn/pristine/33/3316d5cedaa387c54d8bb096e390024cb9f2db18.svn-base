function check_reg_valid(){
	
	var username=document.getElementById("username").value;
	
	if((null==username)|| (username.length<1) ){
		alert('请输入登录名！');
		document.getElementById("username").focus;
		return false;
	}
	
	var userpass=document.getElementById("userpass").value;
	
	if((null==userpass)|| (userpass.length<1) ){
		alert("请输入密码！");
		document.getElementById("userpass").focus;
		return false;
	}
	
	var userpass1=document.getElementById("userpass1").value;
	
	if((null==userpass1)|| (userpass1.length<1) ){
		alert("请输入密码！");
		document.getElementById("userpass1").focus;
		return false;
	}
	
	if(userpass!=userpass1){
		alert("密码不一致，请重新输入！");
		document.getElementById("userpass").focus;
		return false;
	}
	

	var validcode=document.getElementById("validcode").value;
	
	if((null==validcode)|| (validcode.length!=4) ){
		alert("请输入验证码！");
		document.getElementById("validcode").focus;
		return false;
	}
	var birthday=document.getElementById("birthday").value;
	
	if((null==birthday)){
		alert("请选择出生日期！");
		document.getElementById("birthday").focus;
		return false;
	}
	if(document.getElementById("agreecheckbox").checked==false){
		alert("未同意许可协议，无法注册！");
		return false;
	}
	
	document.forms[0].submit();
}
function reload_valid_image(){
	document.getElementById("validImage").src="validCode.jsp?r="+Math.random();
}














