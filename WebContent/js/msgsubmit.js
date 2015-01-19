function msgCheck(){
	
	if(false==UE.getEditor('editor').hasContents()){
		alert("留言不能为空！");
		return false;	
	}
	document.getElementById("msg").value=UE.getEditor('editor').getContent();


	document.forms[0].submit();
}
