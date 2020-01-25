<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="service" class="com.mhb.service.AddRotatorService"/>
<%
service.nextAdvertisement();
response.setHeader("refresh", "2");

%>
<!-- Display add as graphical hyperlink --> 
<a href='<jsp:getProperty property="url" name="service"/>'>
<img width="900" height="450" src='<jsp:getProperty property="image" name="service"/>'>
</a>