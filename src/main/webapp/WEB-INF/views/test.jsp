<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>테스트</title>
<script type="text/javascript">
	var a = document.querySelectorAll();
</script>
</head>
<body>
<c:forEach items="${koreaData}" var="kData">
	<button class="bookmark-btn" data-id="${element.id}">즐겨찾기</button>
	<div data-id="${kData['amuse_id']}">${kData['amuse_id']}</div>
	<hr>
</c:forEach>
<%-- <c:forEach items="${elements}" var="element">
  <div id="element-${element.id}">
    <!-- 요소 내용 -->
    <button class="bookmark-btn" data-id="${element.id}">즐겨찾기</button>
  </div>
</c:forEach> --%>
${member_id}
</body>
</html>