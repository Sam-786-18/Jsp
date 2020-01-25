package com.mhb.tags;

import java.io.IOException;

import javax.servlet.ServletRequest;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class DisplayTag extends TagSupport{
/**
 serialVersionUID
* 
*/
private static final long serialVersionUID = -772964956871032201L;
private String font;
private int size=20;
public String getFont() {
	return font;
}
public void setFont(String font) {
	this.font = font;
}
public int getSize() {
	return size;
}
public void setSize(int size) {
	this.size = size;
}
public int doStartTag(){
	System.out.println("Inside doStartTag() of DisplayTag !!!........");
	String status =null;
	try{
		JspWriter out=pageContext.getOut();
		ServletRequest req=pageContext.getRequest();
		status=req.getParameter("print");
		out.print("<table border='0'>");
		out.print("<tr><th><span style='font-size:"+size+"px;font-family:"+font+";'>");
	}
	catch(IOException ioe){
		System.out.println("Error in ExampleTag:"+ioe);
	}
	
	if(status==null)
		return (SKIP_BODY);
	else if(status.equalsIgnoreCase("YES"))
		return (EVAL_BODY_INCLUDE);
		else
			return (SKIP_BODY);
			
			
}//
public int doEndTag(){
System.out.println("Inside DoEnding()");
try{
	JspWriter out=pageContext.getOut();
	out.print("</SPAN><TH></TR></TABLE>");
}
catch(IOException ie)
{
	ie.printStackTrace();
}
return EVAL_PAGE;
}
//doEnding()
}//class
