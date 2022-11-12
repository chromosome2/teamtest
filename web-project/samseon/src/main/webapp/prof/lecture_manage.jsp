<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<<<<<<< HEAD
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="${contextPath}/images/logo.png">
<link rel="stylesheet" as="style" crossorigin href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-dynamic-subset.css" />
<link rel="stylesheet" as="style" crossorigin href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard.css" />
<link rel="stylesheet" href="${contextPath}/css/common.css">
<link rel="stylesheet" href="${contextPath}/css/viewMyLectures_ST.css">

<script src="${contextPath}/js/jquery-3.6.0.min.js"></script>
<script src="${contextPath}/js/common.js"></script>
<script src="${contextPath}/js/menu_third.js"></script>
<script src="${contextPath}/js/pf_menu.js"></script>
<script src="${contextPath}/js/table.js"></script>
<title>삼선대학교</title>
<style>
	input{
		width : 50px;
	}
</style>
<script type="text/javascript">
  function fn_chulcheck(cl_name, url) {  //출석체크폼으로 이동
    let form=document.createElement("form");
    form.setAttribute('action', url);
    form.setAttribute('method','post');
		let cl_name_input=document.createElement("input");
		cl_name_input.setAttribute('type','hidden');
		cl_name_input.setAttribute('name','cl_name');
		cl_name_input.setAttribute('value', cl_name);
		form.appendChild(cl_name_input);
		document.body.appendChild(form);
    form.submit();
  }
</script>
=======
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="${contextPath}/images/logo.png">
    <link rel="stylesheet" as="style" crossorigin
    href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-dynamic-subset.css" />
    <link rel="stylesheet" as="style" crossorigin
    href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard.css" />
    <link rel="stylesheet" href="${contextPath}/css/common.css">
    <link rel="stylesheet" href="${contextPath}/css/viewMyLectures_ST.css">
    <script src="${contextPath}/js/jquery-3.6.0.min.js"></script>
    <script src="${contextPath}/js/common.js"></script>
    <script src="${contextPath}/js/menu_third.js"></script>
	<script src="${contextPath}/js/table.js"></script>
    <title>삼선대학교</title>
    <style>
    	input{
    		width : 50px;
    	}
    </style>
    <script type="text/javascript">
	    window.onload=function(){//중간고사와 기말고사가 다 입력되면 등록하기버튼과 입력취소 버튼 hidden
	    	if($('.finish').attr('disabled')=='disabled'){
				$('.submit').attr('type','hidden');
				$('.reset').attr('type','hidden');
	    	}
		}
    	function fn_chulcheck(cl_name, url) {  //출석체크폼으로 이동
    		let form=document.createElement("form");
    		form.setAttribute('action', url);
    		form.setAttribute('method','post');
			let cl_name_input=document.createElement("input");
			cl_name_input.setAttribute('type','hidden');
			cl_name_input.setAttribute('name','cl_name');
			cl_name_input.setAttribute('value', cl_name);
			form.appendChild(cl_name_input);
			document.body.appendChild(form);
			form.submit();
    	}
    </script>
    <c:choose>
    	<c:when test='${lect_msg=="add_first_score" }'>
    		<script>
	    		window.onload=function(){
					alert("중간고사 점수입력에 성공하였습니다.");
				}
    		</script>
    	</c:when>
    	<c:when test='${lect_msg=="add_second_score" }'>
    		<script>
	    		window.onload=function(){
					alert("기말고사 점수입력에 성공하였습니다.");
					$('.submit').attr('type','hidden');
					$('.reset').attr('type','hidden');
				}
    		</script>
    	</c:when>
    </c:choose>
>>>>>>> e357fbfa86207005d98d666bae70bf03679f78fa
</head>
<body>
  <jsp:include page="../common/header.jsp"/>

<<<<<<< HEAD
  <div id="middle_area">
    <div id="main_menu_back">
			<jsp:include page="../common/menu.jsp"/>
    </div>
    <div id="contents_area">
      <section class="contents_wrapper">
        <div class="table_header">
          <h3>${cl_name}</h3>
=======
        <div id="middle_area">
            <div id="main_menu_back">
				<jsp:include page="../common/menu.jsp"/>
            </div>

            <div id="contents_area">
       		 <section class="contents_wrapper">
         		 <div class="table_header">
        		    <h3>${cl_name}</h3>
       	   </div>
       	   <form action="${contextPath}/view/add_score.do" method="post" id="frm_add_score" name="frm_add_score">
            <div class="tbl_header">
              <table border="0" cellpadding="0" cellspacing="0">
                <thead>
                  <tr class="tr_header">
                    <td colspan="9" class="3">수업 관리(학생, 출석, 성적 관리)</td>
                  </tr>
                  <tr>
                    <th>NO</th>
                    <th>학생 이름</th>
                    <th>학생 학번</th>
                    <th>전화번호</th>
                    <th>이메일</th>
                    <th>출석률</th>
                    <th>중간 점수</th>
                    <th>기말 점수</th>
                    <th>최종 성적</th>
                  </tr>
                </thead>
              </table>
            </div>
            <div class="tbl_content">
              <table border="0" cellpadding="0" cellspacing="0">
                <tbody>
            					<c:choose>
            						<c:when test="${empty studentList}">
            							<tr class="td_none">
            								<td colspan="9">
            									수업을 듣는 학생이 없습니다.
            								</td>
            							</tr>
            						</c:when>
            						<c:when test="${!empty studentList}">
            							<c:forEach var="student" items="${studentList}" varStatus="stuNum">
            								<tr>
			            						<td>${stuNum.count}</td>
			            						<td>${student.st_name}</td>
			            						<td>${student.st_id}</td>
			            						<td>${student.st_ph}</td>
			            						<td>${student.st_email}</td>
			            						<td><fmt:formatNumber value="${student.cl_check/30}" pattern="0.0%"/></td>
			            						
			            						<c:choose>
			            							<c:when test="${student.s_first eq -1 }" >
			            								<td><input type="number" name="s_first" required></td>
				            							<td><input type="number" name="s_second" disabled></td>
				            							<td></td>
				            							<input type="hidden" name="st_id" value="${student.st_id }">
				            							<input type="hidden" name="count" value="1">
				            						</c:when>
				            						<c:when test="${student.s_second eq -1 }" >
			            								<td><input type="number" value="${student.s_first}" name="s_first" disabled></td>
				            							<td><input type="number" name="s_second" required></td>
				            							<td></td>
				            							<input type="hidden" name="st_id" value="${student.st_id }">
				            							<input type="hidden" name="count" value="2">
				            						</c:when>
				            						<c:when test="${student.s_first != -1 && student.s_second != -1}">
					            						<td><input type="number" value="${student.s_first}" name="s_first"disabled></td>
					            						<td><input type="number" value="${student.s_second}" name="s_second" class="finish" disabled></td>
					            						<td>${student.hakjum}</td>    						
				            						</c:when>
				            						
			            						</c:choose>
			            					</tr>
            							</c:forEach>
            						</c:when>
            					</c:choose>
            				</tbody>
       				    </table>
       				   </div>
       				   <div class="class_submit">
    				  		<input type="button" class="btn_submit button" value="출석체크" onclick="fn_chulcheck('${cl_name}', '${contextPath}/professor/chulcheckForm.do')">
       					    <input type="submit"class="btn_submit button submit" value="등록">
       					    <input type="reset" class="btn_submit button reset" value="입력취소">
          				</div>
          				<input type="hidden" name="cl_name" value="${cl_name }">
         			 </form>
            		
            	</section>
            </div>
>>>>>>> e357fbfa86207005d98d666bae70bf03679f78fa
        </div>
        <div class="MA_btn_area">
          <button class="move_attend"><a href="${contextPath}/prof/manage_attend.jsp">출석등록</a>
        </div>
        <form action="${contextPath}/" method="post" id="frm_add_score" name="frm_add_score">
          <div class="tbl_header">
            <table border="0" cellpadding="0" cellspacing="0">
              <thead>
                <tr class="tr_header">
                  <td colspan="9" class="3">수업 관리(학생, 출석, 성적 관리)</td>
                </tr>
                <tr>
                  <th>NO</th>
                  <th>학생 이름</th>
                  <th>학생 학번</th>
                  <th>전화번호</th>
                  <th>이메일</th>
                  <th>출석률</th>
                  <th>중간 점수</th>
                  <th>기말 점수</th>
                  <th>최종 성적</th>
                </tr>
              </thead>
            </table>
          </div>
          <div class="tbl_content">
            <table border="0" cellpadding="0" cellspacing="0">
              <tbody>
	          <%--<c:choose>
	            		<c:when test="${empty}">
	            			<tr class="td_none">
	            				<td colspan="9">수업을 듣는 학생이 없습니다.</td>
	            			</tr>
	            		</c:when>
	            		<c:when test="${!empty  }">
	            			<c:forEach var="" items="${}"> --%>
	            				<tr>
				            	  <td>1</td>
				            		<td>홍길동</td>
				            		<td>1111</td>
				            		<td>01011112222</td>
				            		<td>hong@naver.com</td>
				            		<td>55%</button></td>
				            		<td><input type="number" value="" name="s_first"></td><%-- value값 = 기존 성적값 --%>
				            		<td><input type="number" value="" name="s_second"></td>
				            		<td>A+</td><%--최종 성적(s_final)을 사용하여 알바펫점수를 매김. --%>
				            	</tr>
	          		<%--</c:forEach>
	            		</c:when>
	            	</c:choose> --%>
	            </tbody>
            </table>
          </div>
          <div class="class_submit">
          	<input class="btn_submit button" type="submit" value="등록(완료)하기">
          	<button class="btn_submit"><a href="${contextPath} /prof/my_lecture.jsp" class="btn_cancle button">취소</a></button>
          </div>
          <%--<c:choose>
            <c:when test="${empty studentList}">
            	<tr class="td_none">
            		<td colspan="9">수업을 듣는 학생이 없습니다.</td>
            	</tr>
            </c:when>
            <c:when test="${!empty studentList}">
            	<c:forEach var="student" items="${studentList}" varStatus="stuNum">
            		<tr>
			            <td>${stuNum.count}</td>
			            <td>${student.st_name}</td>
			            <td>${student.st_id}</td>
			            <td>${student.st_ph}</td>
			            <td>${student.st_email}</td>
			            <td><fmt:formatNumber value="${student.cl_check/30}" pattern="0.0%"/></td>
			            <c:choose>
				            <c:when test="${student.s_first != -1 && student.s_second != -1}">
					            <td><input type="number" value="${student.s_first}" name="s_first" disabled></td>
					          	<td><input type="number" value="${student.s_second}" name="s_second" disabled></td>
					          	<td>${student.hakjum}</td><!-- 최종 성적(s_final)을 사용하여 알바펫점수를 매김. -->            						
				        		</c:when>
		    						<c:when test="${student.s_first != -1}">
                    	<td><input type="number" value="${student.s_first}" name="s_first" disabled></td>
				            	<td><input type="number" name="s_second"></td>
				            	<td></td>
				          	</c:when>
				          	<c:when test="${student.s_second != -1}">
				          		<td><input type="number" name="s_first"></td>
				          		<td><input type="number" value="${student.s_second}" name="s_second" disabled></td>
				          		<td></td>
				          	</c:when>
				          <c:otherwise>
				          	<td><input type="number" name="s_first"></td>
				          	<td><input type="number" name="s_second"></td>
				          	<td></td>
				          </c:otherwise>
			          </c:choose>
			        </tr>
          	</c:forEach>
  				</c:when>
  			  </c:choose>--%>
  		    </tbody>
            </table>
          </div>
          <div class="class_submit">
        <%--<button class="move_attend"><a href="${contextPath}/professor/chulcheckForm.do?cl_name=${cl_name}">출석체크</a></button> --%>
            <input type="button" class="btn_submit button" value="출석체크" onclick="fn_chulcheck('${cl_name}', '${contextPath}/professor/chulcheckForm.do')">
            <input type="submit"class="btn_submit button" value="등록">
            <input type="reset" class="btn_submit button" value="취소">
        <%--<button class="btn_submit"><a href="${contextPath} /prof/my_lecture.jsp" class="btn_cancle button">취소</a></button> --%>
          </div>
        </form>
      </section>
    </div>
  </div>

	<jsp:include page="../common/footer.jsp"/>
</body>
</html>