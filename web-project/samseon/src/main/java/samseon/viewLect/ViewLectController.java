package samseon.viewLect;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/view/*")
public class ViewLectController extends HttpServlet {
	ViewLectService viewLectService;
	
	public ViewLectController() {
		viewLectService=new ViewLectService();
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
		String nextPage=null;
		String action=request.getPathInfo();
		System.out.println("요청매핑이름 : "+action);
		HttpSession session=request.getSession();
		int id=(int) session.getAttribute("log_id");
		System.out.println(id);
		try {
			if(action.equals("/viewScores.do")) {
				//System.out.println(id);
				List<ViewLectVO> scoresList=viewLectService.viewScores_serv(id);
				request.setAttribute("scoresList", scoresList);
				
				ViewLectVO student_info=viewLectService.st_info_serv(id);
				request.setAttribute("student_info", student_info);
				
				nextPage="/student/viewScores.jsp";
			}else if(action.equals("/viewMyLectures.do")) {
				List<ViewLectVO> lectureList=viewLectService.view_lecture_list_serv(id);
				request.setAttribute("lectureList", lectureList);
				
				nextPage="/student/viewMyLectures_ST.jsp";
			}else if(action.equals("/pf_lectureList.do")) {
				List<ViewLectVO> pf_LectureList=viewLectService.view_pf_lecture_list_serv(id);
				request.setAttribute("pf_LectureList", pf_LectureList);
				
				nextPage="/prof/lecture_list.jsp";
			}else if(action.equals("/add_lecture.do")) {
				int pf_id=id;
				int cl_id=Integer.parseInt(request.getParameter("cl_id"));
				String cl_name=request.getParameter("cl_name");
				int cl_pt=Integer.parseInt(request.getParameter("cl_pt"));
				String cl_time=request.getParameter("cl_time");
				String cl_room=request.getParameter("cl_room");
				String cl_mj_t=request.getParameter("cl_mj_t");
				System.out.println(pf_id+","+cl_id+","+cl_name+","+cl_pt+","+cl_time+","+cl_room+","+cl_mj_t);
				
				ViewLectVO viewlectVO=new ViewLectVO();
				viewlectVO.setPf_id(pf_id);
				viewlectVO.setCl_id(cl_id);
				viewlectVO.setCl_name(cl_name);
				viewlectVO.setCl_pt(cl_pt);
				viewlectVO.setCl_time(cl_time);
				viewlectVO.setCl_room(cl_room);
				viewlectVO.setCl_mj_t(cl_mj_t);
				
				viewLectService.add_lecture_serv(viewlectVO);
				request.setAttribute("lect_msg", "addLect");
				nextPage="/view/pf_lectureList.do";
			}
			RequestDispatcher dispatcher=request.getRequestDispatcher(nextPage);
			dispatcher.forward(request, response);
		}catch(Exception e) {
			System.out.println("요청 처리 중 에러 : "+ e.getMessage());
		}
		
		
	}

}
