<%@page import="net.tanesha.recaptcha.ReCaptchaImpl"%>
<%@page import="net.tanesha.recaptcha.ReCaptchaResponse"%>
<% 
//get Ip address of client machine
String remotAddrs=request.getRemoteAddr();
ReCaptchaImpl reCaptcha=new ReCaptchaImpl();
 reCaptcha.setPrivateKey("6LdsGosUAAAAANuOYKwPAF5MWiZx9miRkzphZUa9");
 // get challenge content and its response content
 String challenge=request.getParameter("recaptcha_challenge_field");
 String urResponse=request.getParameter("recaptcha_response_field");
 ReCaptchaResponse res=reCaptcha.checkAnswer(remotAddrs, challenge, urResponse);
 
 if(res.isValid())
 {
out.println("Answer was entered correctly");
 }
 else
 {
 out.println("Answer was wrong");
 }
 %>