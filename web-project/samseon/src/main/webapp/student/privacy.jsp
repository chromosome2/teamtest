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
                        <a href="${contextPath}/main.jsp">
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
                    <a href="${contextPath}/member/logout.do">로그아웃</a>
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
                        <li><a href="#" class="menu_title">수강신청</a></li>
                        <li class="my_page point"><div class="my_page_click_area"><a href="#" class="menu_title">마이페이지</a></div>
                            <ul class="my_page_menu">
                                <li><a href="${contextPath}/student/viewScores.jsp">전체성적 조회</a></li>
                                <li><a href="${contextPath}/student/viewMyLectures_ST.jsp">수강중인 과목 조회</a></li>
                                <li><a href="${contextPath}/student/privacy_check.jsp" class="mypage_point">개인정보</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>

            <div id="contents_area">
                <div class="contents_wrapper">
                    <h2>개인정보</h2>
                    <form action="" method="post" id="privacy_modForm" name="privacy_modForm">
                        <table border="1">
                            <tr>
                                <th>학번</th>
                                <td><input type="number" value="1111" disabled></td>
                            </tr>
                            <tr>
                                <th>비밀번호</th>
                                <td><input type="password" name="pwd"></td>
                            </tr>
                            <tr>
                                <th>이름</th>
                                <td><input type="text" value="홍길동" disabled></td>
                            </tr>
                            <tr>
                                <th>전화번호</th>
                                <td><input type="tel" value="01012341111" name="tel"></td>
                            </tr>
                            <tr>
                                <th>이메일</th>
                                <td><input type="text" value="hong@naver.com" name="email"></td>
                            </tr>
                            <tr>
                                <th>주소</th>
                                <td><input type="text" value="서울시 종로구 종로동 77-7" name="addr"></td>
                            </tr>
                            <tr>
                                <th>학적 상태</th>
                                <td><input type="text" value="재직" disabled></td>
                            </tr>
                            <tr>
                                <th>학과 명</th>
                                <td><input type="text" value="컴퓨터공학과" disabled></td>
                            </tr>
                            <tr>
                                <th>단과 대학</th>
                                <td><input type="text" value="IT대학" disabled></td>
                            </tr>
                        </table>
                        <input type="submit" value="수정하기">
                        <input type="reset" value="취소">
                    </form>
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