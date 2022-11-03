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
  <link rel="stylesheet" href="${contextPath}/css/main_apply_lectures.css">
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
            <li><a href="${contextPath}/student/board.jsp" class="menu_title">공지사항</a></li>
            <li class="point"><a href="${contextPath}/student/main_apply_lectures.jsp" class="menu_title">수강신청</a></li>
            <li class="my_page">
              <div class="my_page_click_area"><a href="#" class="menu_title">마이페이지</a></div>
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
        <div class="contents_wrapper">
          <h3>수강 신청 및 조회</h3>
          <div class="st_lecture_area">
            <div class="lt_search_form">
              <div class="lt_select">
                <label class="lt_label">학년</label>
                <div class="lt_inner">
                  <select name="lt_options" id="lt_options">
                    <option value="1">1학년</option>
                    <option value="1">2학년</option>
                    <option value="1">3학년</option>
                    <option value="1">3학년</option>
                  </select>
                </div>
              </div>
              <div class="lt_select">
                <label class="lt_label">학기</label>
                <div class="lt_inner">
                  <select name="lt_options" id="lt_options">
                    <option value="1">1학기</option>
                    <option value="1">2학기</option>
                  </select>
                </div>
              </div>
              <div class="lt_select">
                <label class="lt_label">교과구분</label>
                <div class="lt_inner">
                  <select name="lt_options" id="lt_options">
                    <option value="1">선택</option>
                    <option value="2">전공과목</option>
                    <option value="3">교양과목</option>
                  </select>
                </div>
              </div>
              <div class="lt_select">
                <label class="lt_label">전공</label>
                <div class="lt_inner">
                  <select name="lt_options" id="lt_options">
                    <option value="1">컴퓨터공학과</option>
                    <option value="2">전기전자공학과</option>
                    <option value="3">기계공학과</option>
                  </select>
                </div>
              </div>
              <div class="lt_input_text">
                <label class="lt_label">과목명</label>
                <div>
                  <input type="text">
                </div>
              </div>
              <div class="lt_search_submit lt_select">
                <button class="search_btn">검색</button>
              </div>
            </div>
          </div>

          <div class="st_lecture_list">
            <table border="1">
              <tr>
                <th>선택</th>
                <th>구분</th>
                <th>학과</th>
                <th>강좌명</th>
                <th>학점</th>
                <th>정원</th>
                <th>담당 교수</th>
                <th>강의실</th>
                <th>강의 시간</th>
              </tr>
              <tr>
                <td><input type="checkbox" name="xxx" checked></td>
                <td>전공</td>
                <td>컴퓨터공학과</td>
                <td>컴퓨터개론및실습</td>
                <td>3</td>
                <td>27</td>
                <td>김선생</td>
                <td>IT 203호</td>
                <td>수,금 9시~10시 30분</td>
              </tr>
              <tr>
                <td><input type="checkbox" name="xxx"></td>
                <td>전공</td>
                <td>컴퓨터공학과</td>
                <td>C++ 기초</td>
                <td>3</td>
                <td>32</td>
                <td>이이젠</td>
                <td>IT 304호</td>
                <td>월,화 9시~10시 30분</td>
              </tr>
              <tr>
                <td><input type="checkbox" name="xxx"></td>
                <td>전공</td>
                <td>컴퓨터공학과</td>
                <td>보안 관리 및 실습</td>
                <td>2</td>
                <td>18</td>
                <td>나교수</td>
                <td>IT 101호</td>
                <td>금 15시~18시</td>
              </tr>
              <tr>
                <td><input type="checkbox" name="xxx"></td>
                <td>교양</td>
                <td>인문학부</td>
                <td>서양미술의 이해</td>
                <td>2</td>
                <td>18</td>
                <td>박화실</td>
                <td>컨퍼런스 202호</td>
                <td>목 11시~12시 30분</td>
              </tr>
            </table>
          </div>
          <div class="st_lecture_list lt_apply">
            <button class="apply_btn">신청하기</button>
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