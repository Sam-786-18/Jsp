package com.mhb.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TestServlet extends HttpServlet {
public TestServlet() {
	// TODO Auto-generated constructor stub
	super();
}
@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
	RequestDispatcher rd=null;
	//create 3 attributes
	req.setAttribute("attr1","val1");
	req.getSession().setAttribute("attr2", "val2");
	req.getServletContext().setAttribute("attr3", "val3");
		//forward request
	rd=req.getRequestDispatcher("/ELApp3.jsp");
	rd.forward(req, resp);
	}
 @Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
}
