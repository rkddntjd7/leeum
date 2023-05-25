package findid;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import user.UserDAO;
import user.UserDTO;


public class FindIdPw extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		//넘어온 값 받기
		PrintWriter out = res.getWriter();
		String uname = req.getParameter("uname");
		String uemail = req.getParameter("uemail");
		
		//쿼리 실행
		UserDAO dao = new UserDAO();
		UserDTO dto = null;
		
		dto = dao.findId(uname, uemail);
		
		if(dto != null) {
			res.setContentType("text/html;charset+UTF-8");
			req.setCharacterEncoding("UTF-8");
			out.println("<script>alert('"+uname+"님의 아이디는" +dto.getUid()+"입니다. </script>");
		}else {
			res.setContentType("text/html;charset+UTF-8");
			req.setCharacterEncoding("UTF-8");
			out.println("<script>alert('아이디가 존재하지 않습니다.')</script>");
		}
	}

}
