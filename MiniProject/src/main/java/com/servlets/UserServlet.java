package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.MyConnection;
import com.model.UserImpl;
import com.pojo.User;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UserServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public void init(ServletConfig config) throws ServletException {
		try (Connection conn = MyConnection.connect()) {
			System.out.println("databse connected.");
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter pw = response.getWriter();
		String userAction = request.getParameter("act");
		System.out.println("useraction" + userAction);
		HttpSession session = request.getSession();
		UserImpl impl = new UserImpl();
		User user = new User();
		boolean b;
		if (userAction.equalsIgnoreCase("registerAction")) {
			String username = request.getParameter("username");
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			long contact = Long.parseLong(request.getParameter("contact"));
			String address = request.getParameter("address");
			String password = request.getParameter("password");

			user.setUsername(username);
			user.setName(name);
			user.setEmail(email);
			user.setContact(contact);
			user.setAddress(address);
			user.setPassword(password);

			b = impl.register(user);

			if (b)
				response.sendRedirect("login.jsp?msg=valid");

			else
				System.out.println("Something went wrong.....");

		} else if (userAction.equalsIgnoreCase("loginAction")) {
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			if ("admin@gmail.com".equals(user.getEmail()) && "admin".equals(user.getPassword())) {
				session.setAttribute("email", email);
				response.sendRedirect("admin/admin.jsp");

			} else {

				user.setEmail(email);

				user.setPassword(password);

				b = impl.login(user);
				if (b)
//					pw.print("You are logged in successfully....... Welcome "+name);
					response.sendRedirect("menuList.jsp?msg=valid");
				else
//					pw.print("Something went wrong.....");
					response.sendRedirect("login.jsp?msg=invalid");
			}
		} else if (userAction.equalsIgnoreCase("forgotPassword"))
			System.out.println("Request comes in post");
	}

}
