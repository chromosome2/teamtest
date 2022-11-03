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
                        <a href="${contextPath}/student/board.jsp">
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
                    <a href="${contextPath}/member/logout.do" class="btn_logout">로그아웃</a>
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
                        <li class="point"><a href="${contextPath}/student/board.jsp" class="menu_title">공지사항</a></li>
                        <li><a href="${contextPath}/student/main_apply_lectures.jsp" class="menu_title">수강신청</a></li>
                        <li class="my_page"><div class="my_page_click_area"><a href="#" class="menu_title">마이페이지</a></div>
                            <ul class="my_page_menu">
                                <li><a href="${contextPath}/student/viewScores.jsp">전체성적 조회</a></li>
                                <li><a href="${contextPath}/student/viewMyLectures_ST.jsp">수강중인 과목 조회</a></li>
                                <li><a href="${contextPath}/student/privacy_check.jsp">개인정보</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>

            <div id="contents_area">
              <section class="notice contents_wrapper">
                <div class="page-title">
                  <div class="container">
                    <h3>공지사항</h3>
                  </div>
                </div>

                <!-- board seach area -->
                <!-- <div id="board-search">
                  <div class="container">
                    <div class="search-window">
                      <form action="">
                        <div class="search-wrap">
                          <label for="search" class="blind">공지사항 내용 검색</label>
                          <input id="search" type="search" name="" placeholder="검색어를 입력해주세요." value="">
                          <button type="submit" class="btn btn-dark">검색</button>
                        </div>
                      </form>
                    </div>
                  </div>
                </div> -->

                <!-- board list area -->
                <div id="board-list">
                  <div class="container">
                    <table class="board-table">
                      <thead>
                        <tr>
                          <th scope="col" class="th-num">번호</th>
                          <th scope="col" class="th-title">제목</th>
                          <th scope="col" class="th-date">등록일</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>3</td>
                          <th>
                            <a href="#!">[공지사항] 개인정보 처리방침 변경안내처리방침</a>
                            <p>테스트</p>
                          </th>
                          <td>2017.07.13</td>
                        </tr>

                        <tr>
                          <td>2</td>
                          <th><a href="#!">공지사항 안내입니다. 이용해주셔서 감사합니다</a></th>
                          <td>2017.06.15</td>
                        </tr>

                        <tr>
                          <td>1</td>
                          <th><a href="#!">공지사항 안내입니다. 이용해주셔서 감사합니다</a></th>
                          <td>2017.06.15</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>

              </section>
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