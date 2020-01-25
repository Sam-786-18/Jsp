package com.mhb.tags;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class ExampleTag extends TagSupport {
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
@Override
public int doStartTag() throws JspException //execute when <start:example> encounters
{
	// TODO Auto-generated method stub
	System.out.println("Inside doStartTag() ExampleTag");
	try{
		JspWriter out=pageContext.getOut();
		out.print("Prime numbers"+"</br>");
	}
	catch(IOException ioe){
		System.out.println("Error in ExampleTag: "+ioe);
		//ioe.printStackTrace();
	}
	return (SKIP_BODY);
}
@Override
	public int doEndTag() throws JspException {
		// TODO Auto-generated method stub
	System.out.println("Inside doEndTag() of ExampleTag");
		return EVAL_PAGE;
	}
}
