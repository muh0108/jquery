<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript">
		function sendRequest() {
			$.ajax({
				url:"request_ajax.jsp",
				type:"post",
				data:{"city":"Seoul","zipcode":"12345"},
//				dataType:"json",
//				dataType:"text",
				success:function(data){
					document.getElementById("text").innerHTML=data;
				},
				error:function(){
					document.getElementById("text").innerHTML="<h3>ajax fail</h3>";
				}
			});
		}
	</script>
</head>
<body>
	<h1>Post방식의 요청</h1>
	<button type="button" onclick="sendRequest()">POST방식으로 요청 보내기</button>
	<p id="text"></p>
</body>
</html>