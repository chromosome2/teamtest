package samseon.professor;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/professor/*")
public class ProfController extends HttpServlet {
	ProfDAO profDAO;
	ProfVO profVO;

	@Override
	public void init() throws ServletException {
		profDAO=new ProfDAO();
		profVO=new ProfVO();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}
	
	private void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter pw;
		String nextPage=null;
		String action=request.getPathInfo();
		System.out.println("요청매핑이름 : " + action);
		List<ProfVO> list=new ArrayList<ProfVO>();
		if(action.equals("/listLectures.do")) {  //나의 수업 목록 보기
			HttpSession session=request.getSession(false);
			int id=(int) session.getAttribute("log_id");  //세션에서 나(교수)의 아이디 불러오기
			//과목설계테이블에서 교수 아이디로 과목 조회 리스트로 받아서 jsp로 포워딩
			list=profDAO.selectMyLectures(id);
			request.setAttribute("lectureList", list);
			nextPage="/prof/my_lecture.jsp";
		}else if(action.equals("/lectureManageForm.do")) {  //수업관리 페이지로 이동
			String cl_name=request.getParameter("cl_name");
			
			HttpSession session=request.getSession(false);
			String chul_cl_name="chul_"+cl_name;
			System.out.println("체크된 과목 - " + chul_cl_name + " : " + session.getAttribute(chul_cl_name));
			
			//강의이름으로 수강신청테이블에서 수강생정보 얻어오고, 수강생학번으로 성적테이블에서 수강생성적 조회해서 폼에 전달
			List<ProfVO> students=profDAO.selectMyStudents(cl_name);
			request.setAttribute("cl_name", cl_name);
			request.setAttribute("studentList", students);
			nextPage="/prof/lecture_manage.jsp";
		}else if(action.equals("/chulcheckForm.do")) {  //출석체크폼으로 이동
			String cl_name=request.getParameter("cl_name");
			List<ProfVO> studentsChul=profDAO.selectMyStudents(cl_name);
			request.setAttribute("cl_name", cl_name);
			request.setAttribute("chulcheck", studentsChul);
			nextPage="/prof/manage_attend.jsp";
		}else if(action.equals("/chul_check.do")) {  //출석체크 등록
			String cl_name=request.getParameter("cl_name");
//			System.out.println(cl_name);
			String[] st_id_arr=request.getParameterValues("chul_Ck");
			int cl_id=profDAO.getCl_id(cl_name);  //과목코드 리턴
			//출석체크테이블에 출석일수 +1
			for(int i=0; i<st_id_arr.length; i++) {
				int st_id=Integer.parseInt(st_id_arr[i]);
				profDAO.updateChul(st_id, cl_id);
			}
			HttpSession session=request.getSession(false);
			String chul_cl_name="chul_"+cl_name;
//			System.out.println(chul_cl_name);
			session.setAttribute(chul_cl_name, "done");
			request.setAttribute("cl_name", cl_name);
			nextPage="/professor/chulcheckForm.do";
		}else if(action.equals("/lecture_board_list.do")) {  //강의 공지사항 게시판 불러오기
			HttpSession session=request.getSession(false);
			int cl_id=Integer.parseInt(request.getParameter("cl_id"));
			System.out.println(cl_id);
//			String cl_name=request.getParameter("cl_name");
			//공지사항테이블에서 과목코드로 모든 공지사항 조회해서 가져옴
			Map lesson_notice_map=profDAO.selectLessonNotice(cl_id);
			List<ProfVO> lesson_notice_list=(List<ProfVO>) lesson_notice_map.get("lessonNotice");
			ProfVO noticeInfo=(ProfVO) lesson_notice_map.get("noticeInfo");
			request.setAttribute("lessonNotice", lesson_notice_list);
			request.setAttribute("noticeInfo", noticeInfo);
			nextPage="/prof/lecture_board.jsp";
		}
		RequestDispatcher dispatcher=request.getRequestDispatcher(nextPage);
		dispatcher.forward(request, response);
	}
}
