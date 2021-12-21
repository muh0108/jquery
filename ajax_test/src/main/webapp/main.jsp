<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
	<script type="text/javascript">
		function sendRequest() {
			var httpRequest = new XMLHttpRequest();
			httpRequest.open("POST","request_ajax.jsp",true);
			httpRequest.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
			httpRequest.send("city=Seoul&zipcode=55775");
			
			httpRequest.onreadystatechange = function(){
				if(httpRequest.readyState == XMLHttpRequest.DONE && httpRequest.status == 200){
					document.getElementById("text").innerHTML = httpRequest.responseText;
				}
			}
		}
	</script>
</head>
<body>
	<h1>Post방식의 요청</h1>
	<button type="button" onclick="sendRequest()">POST방식으로 요청 보내기</button>
	<p id="text"></p>
</body>
</html>