<%@page import="cn.apiclub.captcha.Captcha"%>
<%@page import="cn.apiclub.*"%>
<% 
//get ur anser
String answer=request.getParameter("answer");
Captcha captcha=(Captcha)session.getAttribute(Captcha.NAME);
 if(captcha.isCorrect(answer))
 {
out.println("Valid Response");
 }
 else
 {
 out.println("Invalid Response");
 }
 %>