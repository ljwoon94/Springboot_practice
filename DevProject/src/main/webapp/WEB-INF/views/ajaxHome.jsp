<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page session="false"%>

<html>
<head>
<title>Insert title here</title>
</head>
<script src="/js/jQuery-2.1.4.mis.js"></script>
<script type="text/javascript">
$(document).ready(funtion(){
	$("#postBtn").on("click",funtion(){
		var boardNo = ${"#boardNo"}; 
		var title = ${"#title"};
		var content = ${"#content"}; 
		var writer = ${"#writer"};
	
		var boardNoVal = boardNo.val();
		var titleVal = title.val();
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
		var titleVal = title.val();
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
	$("#putXmlBtn").on("click",funtion(){
		var boardNo = ${"#boardNo"}; 
		var title = ${"#title"};
		var content = ${"#content"}; 
		var writer = ${"#writer"};
		
		var boardNoVal = boardNo.val();
		var titleVal = title.val();
		var contentVal = content.val();
		var writerVal = writer.val();
		
		var xmlData="<Board>";
		xmlData +="<BoardNo>0</BoardNo>"
		xmlData +="<title>title1</title>"
		xmlData +="<content>content1</content>"
		xmlData +="<writer>writer1</writer>"
		xmlData +="<regDate>2020-12-17</regDate>"
		xmlData +="</Board>";
		
		$.ajax({
			type:"put",
			url: "/board/"+boardNoVal,
			data: xmlData,
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
	<form>
		boardNo:<input type ="text" name="boardNo" value="" id="boardNo"><br>
		title:<input type ="text" name="title" value="" id="title"><br>
		content:<input type ="text" name="content" value="" id="content"><br>
		writer:<input type ="text" name="writer" value="" id="writer"><br>
	</form>
	<div>
		<button id ="posttBtn">MODIFY(post)</button>
		<button id ="putHeaderBtn">MODIFY(put json)</button>
		<button id ="putXmlBtn">MODIFY(put xml)</button>
	</div>
</body>
</html>