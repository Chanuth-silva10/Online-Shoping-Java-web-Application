<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@page import="project.ConnectionProvider" %> 
 <%@page import="java.sql.*" %> 
 
 <%
 String name=request.getParameter("name");
 //signup.jsp eke name eke value eka ganao(User enter krna eka)
 String email=request.getParameter("email");
 String mobileNumber=request.getParameter("mobileNumber");
 String securityQuestion=request.getParameter("securityQuestion");
 String answer=request.getParameter("answer");
 String password=request.getParameter("password");
 String address = "";
 String city = "";
 String state = "";// users table eke aneke value
 String country = "";
 
 try{
	 Connection con = ConnectionProvider.getCon();
	 PreparedStatement ps = con.prepareStatement("insert into users values(?,?,?,?,?,?,?,?,?,?)");//uda 8,9 linwla tyena ver eala value users tbl ekta add kirima
     ps.setString(1, name);
     ps.setString(2, email);
     ps.setString(3, mobileNumber);
     ps.setString(4, securityQuestion);
     ps.setString(5, answer);
     ps.setString(6, password);
     ps.setString(7, address);
     ps.setString(8, city);
     ps.setString(9, state);
     ps.setString(10, country);
     ps.executeUpdate();
     response.sendRedirect("signup.jsp?msg=valid");//signup jsp eke msg print wimta
 }catch(Exception e){
	 System.out.println(e);
     response.sendRedirect("signup.jsp?msg=invalid");
     
 }
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>