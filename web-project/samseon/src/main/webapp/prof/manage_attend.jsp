<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
	String cl_name=request.getParameter("cl_name");
	HttpSession session2=request.getSession(false);
	String chul_done=(String)session2.getAttribute("chul_done/"+cl_name);
%>
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
	<script src="${contextPath}/js/menu_third.js"></script>
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
        <h3>${cl_name} 출석 관리</h3>
      </div>
      <section class="contents_wrapper">
				<div class="tbl_area">            		
					<div class="tbl_header">
						<table border="0" cellpadding="0" cellspacing="0">
							<thead>
								<tr>
									<th>NO</th>
									<th>학생이름</th>
									<th>소속 학과</th>
									<th>출석률</th>
									<th>출석 등록</th>
								</tr>
							</thead>
						</table>
					</div>
					<div class="tbl_content1">
						<table border="0" cellpadding="0" cellspacing="0">
							<tbody>
							<form action="${contextPath}/professor/chul_check.do" method="post">
								<c:choose>
									<c:when test="${empty chulcheck}">
										<tr>
											<td colspan="5">조회된 학생이 없습니다.</td>
										</tr>
									</c:when>
									<c:when test="${!empty chulcheck}">
										<c:set var="chul_done" value="${chul_done}"/>
										<c:forEach var="chul" items="${chulcheck}" varStatus="chulNum">
											<tr>
												<td>${chulNum.count}</td> 
												<td>${chul.st_name}</td>
												<td>${chul.m_name}</td>
												<td><fmt:formatNumber value="${chul.cl_check/30}" pattern="0.0%"/></td>
												<td><input type="checkbox" name="chul_Ck" value="${chul.st_id}"></td>
											</tr> 
										</c:forEach>
									</c:when>
								</c:choose>
							</tbody>
						</table>
					</div>
					<div class="sb_btn">
						<input type="hidden" name="cl_name" value="${cl_name}">
						<input type="submit" class="apply_btn">
						<button class="apply_btn"><a href="${contextPath}/professor/lectureManageForm.do?cl_name=${cl_name}">수업관리</a></button>
					</div>
						<%-- <c:choose>
							<c:when test="${empty chulcheck}">
								<tr>
									<td colspan="5">조회된 학생이 없습니다.</td>
								</tr>
							</c:when>
							<c:when test="${!empty chulcheck}">
								<c:set var="chul_done" value="${chul_done}"/>
								<c:forEach var="chul" items="${chulcheck}" varStatus="chulNum">
									<tr>
										<td>${chulNum.count}</td> 
										<td>${chul.st_name}</td>
										<td>${chul.m_name}</td>
										<td><fmt:formatNumber value="${chul.cl_check/30}" pattern="0.0%"/></td>
										<c:choose>
											<c:when test="${!empty chul_done and chul_done == cl_name}">
												<td><input type="checkbox" name="chul_Ck" value="${chul.st_id}" disabled></td>
											</c:when>
											<c:otherwise>
												<td><input type="checkbox" name="chul_Ck" value="${chul.st_id}"></td>											
											</c:otherwise>
										</c:choose>
									</tr> 
								</c:forEach>
							</c:when>
						</c:choose>
					</tbody>
				</table>
			</div>
			<div class="sb_btn">
				<c:choose>
					<c:when test="${!empty chul_done and chul_done == cl_name}">
						<button class="apply_btn"><a href="${contextPath}/professor/lectureManageForm.do?cl_name=${cl_name}">수업관리</a></button>
					</c:when>
					<c:otherwise>
						<input type="hidden" name="cl_name" value="${cl_name}">
						<input type="submit" class="apply_btn">	
						<button class="apply_btn"><a href="${contextPath}/professor/lectureManageForm.do?cl_name=${cl_name}">수업관리</a></button>				
					</c:otherwise>
				</c:choose>
			</div> --%>
		  </form>
		</div>
      </section>
    </div>
  </div>
<jsp:include page="../common/footer.jsp"/>
</body>
</html>