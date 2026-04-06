<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>register Controller</title>
</head>
<body>
<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String password = request.getParameter("password");

String gender = request.getParameter("gender");

String address = request.getParameter("address");

try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection(
        "jdbc:oracle:thin:@localhost:1521:XE","batch8","batch8");

    String sql = "INSERT INTO users1 ( user_id,user_name, email, password, gender, address,created_at) VALUES (users1_seq.nextval, ?, ?, ?, ?, ?,SYSDATE )";

    PreparedStatement pst = con.prepareStatement(sql);

    pst.setString(1, name);
    pst.setString(2, email);
    pst.setString(3, password);
    pst.setString(4, gender);
    
    pst.setString(5, address);
     

    int i = pst.executeUpdate();

    if(i > 0){
        out.println("Registration Successful");
    } else {
        out.println("Registration Failed");
    }

    con.close();

} catch(Exception e){
    out.println(e);
}
%>

</body>
</html>