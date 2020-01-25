package com.mhb.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mhb.dto.BookDTO;
import com.mhb.service.SearchBookService;
import com.mhb.service.SearchBookServiceImpl;
@WebServlet("/controller")
public class SearchBookControllerServlet extends HttpServlet {
@Override
public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	// TODO Auto-generated method stub
	String category =null;
	String action=null;
	SearchBookService service=null;
	List<BookDTO> listDTO=null;
	RequestDispatcher rd=null;
	String target_page=null;
	//read form data 
	category=req.getParameter("category");
	action=req.getParameter("source");
	//create service class object
	service=new SearchBookServiceImpl();
try{
	listDTO=service.searchBooks(category);
	//keep result in requst scope
	req.setAttribute("booksList", listDTO);
	
}
catch(Exception e){
	e.printStackTrace();
	rd=req.getRequestDispatcher("/error.jsp");
	rd.forward(req, resp);
	return ;
}
//decide result /target page based button that is clicked
if(action.equalsIgnoreCase("HTML")){
	target_page="/html_print.jsp";
}
else{
	target_page="/excel_screen.jsp";
}
rd=req.getRequestDispatcher(target_page);
rd.forward(req, resp);
}//doGet(-,-)
@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
}
