<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="/js/jQuery-2.1.4.mis.js"></script>
<script type="text/javascript">
$(document).ready(funtion(){
	$("#putBtn").on("click",funtion(){
		var boardNo = ${"#boardNo"}; 
		var title = ${"#title"};
		var content = ${"#content"}; 
		var writer = ${"#writer"};
	
		var boardNoVal = boardNo.val();
		var contentVal = content.val();
		var writerVal = writer.val();
		
		var boardObject = {
			boardNo : boardNoVal,
			title : titleVal,
			content : contentVal,
			writer : writerVal
		};
		
		$.ajax({
			type:"put",
			url: "/board/"+boardNoVal,
			data: JSON.stringify(boardObject),
			contentType:"application/json;charset=utf-8",
			success : function(result){
				console.log("result:"+result);
				if(result=="SUCCESS"){
					alert("SUCCESS");
				}
			}
		});
	});
	$("#pubHeaderBtn").on("click",funtion(){
		var boardNo = ${"#boardNo"}; 
		var title = ${"#title"};
		var content = ${"#content"}; 
		var writer = ${"#writer"};
		
		var boardNoVal = boardNo.val();
		var contentVal = content.val();
		var writerVal = writer.val();
		
		var boardObject = {
			boardNo : boardNoVal,
			title : titleVal,
			content : contentVal,
			writer : writerVal
		};
		
		$.ajax({
			type:"put",
			url: "/board/"+boardNoVal,
			headers:{
				"X-HTTP-Method-Override":"PUT"
			},
			data: JSON.stringify(boardObject),
			contentType:"application/json;charset=utf-8",
			success : function(result){
				console.log("result:"+result);
				if(result=="SUCCESS"){
					alert("SUCCESS");
				}
			}
		});
	});
});


</script>
<body>
	<h1>AjaxHome</h1>
</body>
</html>