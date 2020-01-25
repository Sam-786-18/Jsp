package com.mhb.tags;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class PrimeTag extends TagSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int n=10;
	public void setN(int n) //sets the attribute "n" value to the variable "n"
	{
		this.n = n;
	}
 private boolean isPrime(int x) {
	// TODO Auto-generated method stub
for(int k=2;k<x;k++)
{
if(x%k==0)
	return false;
}//for
return true;
}//isPrime
 @Override
public int doStartTag() throws JspException {
	// TODO Auto-generated method stub
	System.out.println("Inside doStartTag() of PrimeTag");
	try{
		JspWriter out=pageContext.getOut();
		for(int i=2;i<=n;i++){
			if(isPrime(i))
				out.print(i+" ");
		}// for
	}//try
	catch(IOException ie)
	{
		ie.printStackTrace();
	}
	return SKIP_BODY;
}//doStartTag
 @Override
public int doEndTag() throws JspException {
	// TODO Auto-generated method stub
	 System.out.println("Inside DoEndTag() of PrimeTag");
	return EVAL_PAGE;
}
}
