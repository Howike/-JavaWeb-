"use strict";


//ajax提交信息
$("#leaveMsgForm").submit(function(){
    $.ajax({
        async: true,
        data:$("#leaveMsgForm").serialize(),
        type: "POST",
        url:'lm?oper=form',
        contentType : "application/x-www-form-urlencoded; charset=utf-8",
        dataType: "json",
        success: function (data) {
          },
         clearForm: false,//禁止清楚表单
         resetForm: false //禁止重置表单
    })
})

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
 				var msg=$.parseJSON( result );
 				
 				var list = document.getElementsByClassName("comments")[0];
 				for(var i = 0;i < msg.length; i++){
 					if($("ol.comments>li").length==0){
 						list.innerHTML = "<li class='comment'><span class='comment-author-avatar'><img src='home/static/images/comments/placeholder.png' alt='' /></span>" +
							"<div class='comment-inner'>" +
									"<div class='comment-info clearfix'><div class='comment-meta'><span class='comment-meta-author'>"+msg[i].uname+"</span><span class='comment-meta-date'>"+msg[i].time+"</span></div><!-- .comment-meta -->" +
											"<span class='comment-reply'><a rel='nofollow' href='#'>Reply</a></span>" +
													"</div><!-- .comment-info -->" +
													"<div class='comment-main'>" +
															"<p>"+msg[i].message+"</p>" +
															"</div><!-- .comment-main -->" +
															"</div><!-- .comment-inner -->" +
															"</li><!-- .comment -->";
 					}else{
 						list.innerHTML += "<li class='comment'><span class='comment-author-avatar'><img src='home/static/images/comments/placeholder.png' alt='' /></span>" +
 							"<div class='comment-inner'>" +
 									"<div class='comment-info clearfix'><div class='comment-meta'><span class='comment-meta-author'>"+msg[i].uname+"</span><span class='comment-meta-date'>"+msg[i].time+"</span></div><!-- .comment-meta -->" +
 											"<span class='comment-reply'><a rel='nofollow' href='#'>Reply</a></span>" +
 													"</div><!-- .comment-info -->" +
 													"<div class='comment-main'>" +
 															"<p>"+msg[i].message+"</p>" +
 															"</div><!-- .comment-main -->" +
 															"</div><!-- .comment-inner -->" +
 															"</li><!-- .comment -->";
 					}
 				}
 			}
 		}
 	}
 	//发送请求
 	var aid = $("input[name='aid']").val();
 	ajax.open("get","lm?oper=msglist&aid="+aid);
 	ajax.send(null);
}
 	

