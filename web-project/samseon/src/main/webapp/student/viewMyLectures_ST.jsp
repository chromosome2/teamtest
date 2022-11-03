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
    <link rel="stylesheet" href="${contextPath}/css/table.css">
    <script src="${contextPath}/js/jquery-3.6.0.min.js"></script>
    <script src="${contextPath}/js/common.js"></script>
    <title>삼선대학교</title>
</head>
<body>
    <div id="wrapper">
        <header>
            <div class="head1">
                <div class="black_head1"></div>
                <div class="header_contents">
                    <div class="white_head1">
                        <h2 class="hidden">대학교 로고</h2>
                        <a href="${contextPath}/board.jsp">
                            <img src="${contextPath}/images/logo.png" alt="삼선대학교 로고">
                            <span>삼선대학교</span>
                        </a>
                    </div>
                    <span class="st_name">${studentInfo.m_name} ${studentInfo.name}님</span>
                    <ul class="mini_menu">
                        <li><a href="#">학교 서비스</a>
                            <ul class="service_menu">
                                <li><a href="#">대학홈페이지</a></li>
                                <li><a href="#">도서관</a></li>
                                <li><a href="#">총학생회</a></li>
                                <li><a href="#">학생생활상담소</a></li>
                                <li><a href="#">취업정보센터</a></li>
                            </ul>
                        </li>
                    </ul>
                    <c:choose>
			          <c:when test="${!empty isLogin && isLogin == true}">
				      	<a href="${contextPath}/member/logout.do" class="btn_logout">로그아웃</a>     
			          </c:when>
			          <c:otherwise>
			          	<a href="${contextPath}/index.jsp" class="btn_logout">로그인</a>
			          </c:otherwise>
		         	 </c:choose>
                </div>
            </div>
            <div class="head2">
            </div>
            <div class="head3">
            </div>
        </header>

        <div id="middle_area">
            <div id="main_menu_back">
                <nav>
                    <h2 class="hidden">메인메뉴</h2>
                    <ul class="main_menu">
                        <li><a href="${contextPath}/board.jsp" class="menu_title">공지사항</a></li>
                        <li><a href="${contextPath}/student/main_apply_lectures.jsp" class="menu_title">수강신청</a></li>
                        <li class="my_page point"><div class="my_page_click_area"><a href="#" class="menu_title">마이페이지</a></div>
                            <ul class="my_page_menu">
                                <li><a href="${contextPath}/student/viewScores.jsp">전체성적 조회</a></li>
                                <li><a href="${contextPath}/student/viewMyLectures_ST.jsp" class="mypage_point">수강중인 과목 조회</a></li>
                                <li><a href="${contextPath}/student/privacy_check.jsp">개인정보</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>

            <div id="contents_area">
                <div class="contents_wrapper">
                    <h3>수강중인 과목 조회</h3>
                    <div class="st_lecture_list">
                        <table border="1">
                            <tr>
                                <th>NO</th>
                                <th>과목 코드</th>
                                <th>과목 이름</th>
                                <th>교수 이름</th>
                                <th>학점</th>
                                <th>중간 점수</th>
                                <th>기말 점수</th>
                                <th>강의 시간</th>
                                <th>강의실</th>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>555555</td>
                                <td>컴퓨터개론및실습</td>
                                <td>김선생</td>
                                <td>3</td>
                                <td>27</td>
                                <td></td>
                                <td>수,금 9시~10시 30분</td>
                                <td>IT 203호</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <footer id="footer">
            <div id="footerInner">
                <a href="#" class="privacy_policy">개인정보 처리방침</a>
                <address>
                    <span>서울시 종로구 종로동 11-1 삼선대학교</span>
                    <span>Tel : 02)333-1234</span>
                </address>
            </div>
        </footer>
    </div>
</body>
</html>