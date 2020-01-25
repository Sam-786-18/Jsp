package com.mhb.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InboxServlet extends HttpServlet {
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	// TODO Auto-generated method stub
	PrintWriter pw=null;
	String user=null;
	pw=resp.getWriter();
	resp.setContentType("text/html");
	//get Authenticated and Authorized user details
		user=req.getRemoteUser();
	if(user.equalsIgnoreCase("santi"))
	{
		pw.println("<b>Welcome CEO Madam</b>");
	}
	//generate response
	pw.println("<h1 style='color:green'>Inbox Page</h1>");
	pw.println("<br><a href='index.html'>Home</a>");
	pw.close();
	
}
@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
}
