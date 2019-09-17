<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="a.jsp" method="post" name="frm">
	gender: <input type="radio" name="gender" value="남">male
			<input type="radio" name="gender" value="여">female<br>
	hobby : <input type="checkbox" name="hobby" value="여행">여행
			  <input type="checkbox" name="hobby" value="게임">게임
			  <input type="checkbox" name="hobby" value="야구">야구
		<br>
		<button type="button">전송</button>
	</form>
	<button type="button" onclick="info()">정보확인</button>
	
	<script>
		// window - document - forms[0] - radio,checkbox이름[0]
		
	    // 폼이름.라디오,체크박스이름[0].필드
	    // frm.gender[0].필드     name   value  type  checked(체크되면true,아니면false)
	    // frm.gender[0].메소드()  focus()  blur()   click()
	    
	    function info(){
		//첫번째 라디오 버튼 필드값을 alert로 출력
		alert('name:' +frm.gender[0].name);
		alert('type:' +frm.gender[0].type);
		alert('value:'+frm.gender[0].value);
		alert('checked:'+frm.gender[0]checked);
		}
		function checkAndSubmit(){
			//성별이 체크 안 되어 있으면 성별 체크하세요 포커스 return
			if(frm.gender[0]/checked==false && frm.frm.gender[1]==false){
				alert('성별 체크하세요');
				frm.gender[0].focus();
				return;
			}
			//취미가 체크 안되어 있으면 "취미 체크하세요"
			if(frm.hobby[0].checked==false
					&& frm.hobby[1].checked==false
					&& frm.hobby[2].checked==false){
				alert('취미 체크하세요');
				frm.hobby[0].focus();
				return;
			}
			
			//전송
			frm.submit();
		}
	</script>
</body>
</html>