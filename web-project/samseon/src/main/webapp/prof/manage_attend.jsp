<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="${contextPath}/images/logo.png">
    <link rel="stylesheet" as="style" crossorigin
    href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-dynamic-subset.css" />
    <link rel="stylesheet" as="style" crossorigin
    href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard.css" />
    <link rel="stylesheet" href="${contextPath}/css/common.css">
		<link rel="stylesheet" href="${contextPath}/css/apply_header.css">
    <link rel="stylesheet" href="${contextPath}/css/viewMyLectures_ST.css">
		<link rel="stylesheet" href="${contextPath}/css/manage_attend.css">
    <script src="${contextPath}/js/jquery-3.6.0.min.js"></script>
    <script src="${contextPath}/js/common.js"></script>
	<script src="${contextPath}/js/menu_second.js"></script>
	<script src="${contextPath}/js/table.js"></script>
	<script src="${contextPath}/js/pf_menu.js"></script>
    <title>삼선대학교</title>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
	<div id="middle_area">
    <div id="main_menu_back">
			<jsp:include page="../common/menu.jsp"/>
    </div>

    <div id="contents_area">
      <div class="table_header">
        <h3>강의이름 출석 관리</h3>
      </div>
      <section class="contents_wrapper">
				<div class="tbl_area">            		
					<div class="tbl_header">
						<table border="0" cellpadding="0" cellspacing="0">
							<thead>
								<tr>
									<th>NO</th>
									<th>학생이름</th>
									<th>강의 이름(과목)</th>
									<th>출석률</th>
									<th >출석 등록</th>
								</tr>
							</thead>
						</table>
					</div>
					<div class="tbl_content1">
						<table border="0" cellpadding="0" cellspacing="0">
							<tbody>
								<%--<c:choose>
									<c:when test="${empty}">
										<form action="">
											<tr>
												<td colspan="">조회된 학생이 없습니다.</td>
											</tr>
										</form>
											</c:when>
									<c:when test="${!empty  }">
										<form action="">
											<c:forEach var="" items="${}">--%>
													<tr>
														<td>1</td> 
														<td>유해찬</td>
														<td>잘학고싶다과</td>
														<td>10/30[총일수] ?</td>
														<td><input type="radio" value="1"></td>
													</tr> 
											<%--</c:forEach>
										</form>
									</c:when>
								</c:choose> --%>
							</tbody>
						</table>
					</div>
				</div>
				<div class="sb_btn">
						<input type="submit" class="apply_btn">
				</div>
      </section>
    </div>
  </div>
<jsp:include page="../common/footer.jsp"/>
</body>
</html>