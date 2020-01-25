package com.mhb.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javazoom.upload.MultipartFormDataRequest;
import javazoom.upload.UploadBean;
import javazoom.upload.UploadParameters;

public class RegisterServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
	String resumePath="c:/store/resume";
	String photoPath="c:/store/photoes";
	PrintWriter pw=resp.getWriter();
	try{
		//get special request obj given by Java zoom api
		MultipartFormDataRequest nreq=new MultipartFormDataRequest(req);
	//read text data from the form page
		int eId=Integer.parseInt(nreq.getParameter("tid"));
		String eName=nreq.getParameter("tname");
		String eAdd=nreq.getParameter("tadd");
		String ePhoto =nreq.getParameter("tphoto");//shows null
		String eResume=nreq.getParameter("tresume");//shows null
		//setting related to Resume uploading 
		UploadBean upb=new UploadBean();
		upb.setFilesizelimit(100*1024);
		upb.setFolderstore(resumePath);
		upb.setOverwrite(false);
		upb.store(nreq,"tresume");  //completes files uploading
		//setting related photo uploading
		upb.setFolderstore(photoPath);
		upb.setOverwrite(false);
		upb.store(nreq,"tphoto");   //completes files uploading
		//get the file name of the uploaded files
		Vector<UploadParameters> history=upb.getHistory();
		ArrayList <String> fileNames=new ArrayList<String>();
		for(UploadParameters up:history){
			fileNames.add(up.getFilename());
		}
		System.out.println("resume"+fileNames.get(0));
		System.out.println("photo"+fileNames.get(1));
		//store the paths of the uploaded files to c:\store folder
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");
        PreparedStatement ps=con.prepareStatement("insert into EmployeeReg values(?,?,?,?,?)");
        ps.setInt(1, eId);
        ps.setString(2, eName);
        ps.setString(3, eAdd);
    
        ps.setString(4, resumePath+"/"+fileNames.get(0));
        ps.setString(5, photoPath+"/"+fileNames.get(1));
        int i=ps.executeUpdate();
        if(i==1)
        	pw.println("<h1>Successfully uploaded and Stored in DataBase</h1>");
        else
        	pw.println("<h1>Failed in uploading</h1>");
        pw.println("<br><a href='home.html'>Home</a>");
	}
	catch(Exception e){
		pw.println(e);
	}//catch
	}//doGet
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}//doPost()
}//class
