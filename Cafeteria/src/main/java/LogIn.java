

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LogIn
 */
@WebServlet("/LogIn")
public class LogIn extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogIn() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name= request.getParameter("name");
		String number= request.getParameter("number");
		String email= request.getParameter("email");
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		try {
			Connection conn= DAO.connect();         // ekhane variable gulo uporer string theke nichche
			String sql="insert into logins(name,number,email)" + "values('"+name+"','"+number+"','"+email+"')";
			PreparedStatement st=conn.prepareStatement(sql);
			int rs=st.executeUpdate();
			if(rs==1)
			{
				//out.println("<h1> Data Inserted</h1>");
				request.setAttribute("message", "Order Successful");
				request.getRequestDispatcher("Index.html").forward(request, response);
			}else {
				out.println("<h1> Data Not Inserted Successfully</h1>");
			}
			conn.close();
			}
			catch(Exception e) {
				System.out.println(e);
		
		}
	}

}
