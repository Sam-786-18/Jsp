<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
/*  read form data */
double pAmt=Double.parseDouble(request.getParameter("pAmt"));
double rate =Double.parseDouble(request.getParameter("rate"));
double time=Double.parseDouble(request.getParameter("time"));

%>
<!-- create or locate java bean class object -->

<jsp:useBean id="dto" class="com.mhb.service.IntrAmtCalculatrsDTO" scope="request"/>
<!--set form dta to bean Properties  -->
<jsp:setProperty property="*" name="dto"/>
<!--pass dto to service class  -->
<jsp:useBean id="service" class="com.mhb.dto.IntrAmtCalculatorServiceImpl"/>
<%
service.calCulatrAmt(dto);
 %>
 <!-- Display details -->
 <br>Principle Amount::<jsp:getProperty property="pAmt" name="dto"/><br>
 Rate Of Interest::<jsp:getProperty property="rate" name="dto"/>
 <br>
 Time::<jsp:getProperty property="time" name="dto"/>
 <br>
 Intr Amount::<jsp:getProperty property="intrAmt" name="dto"/>
