 //获取数据
window.onload = function(){
 	//创建ajax引擎对象
 	var ajax;
 	if(window.XMLHttpRequest){
 		ajax=new XMLHttpRequest();
 	}else if(window.ActiveXObject){
 		ajax=new ActiveXObject("Msxml2.XMLHTTP");
 	}
 	//复写onreadystatechange
 	ajax.onreadystatechange=function(){
 	//判断ajax状态码
 		if(ajax.readyState==4){
 		//判断响应状态码
 			if(ajax.status==200){
 				//获取响应数据
 				var result=ajax.responseText;
// 				alert(result);
 				eval("var text="+result);
 				var list = document.getElementsByClassName("list-unstyled")[0];
 				for(var i=0;i < text.length;i++){
 					list.innerHTML += "<li><a href='/wizard/read?aid="+text[i].aid+"'><h4 class='h4 title'>"+text[i].title+"</h4><p class='desc'>"+text[i].content+"</p></a></li>";
 				}
 			}
 		}
 	}
 	//发送请求
 	ajax.open("get","/wizard/upload?oper=queryAllText");
 	ajax.send(null);
}
 	

