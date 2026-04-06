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
<title>add product controller </title>
</head>
<body>
<%

String products_id = request.getParameter("product_id");
int product_id = Integer.parseInt(products_id);


String vendors_id = request.getParameter("vendor_id");
int vendor_id = Integer.parseInt(vendors_id);

String vendor_name = request.getParameter("vendor_name");
String product_name = request.getParameter("product_name");

String description = request.getParameter("description");

String prices = request.getParameter("price");
double price = Double.parseDouble(prices);

String quantitys = request.getParameter("quantity");
int quantity = Integer.parseInt(quantitys);




try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection(
        "jdbc:oracle:thin:@localhost:1521:XE","lmms","lmms");
    
    String sql = "INSERT INTO products (product_id,vendor_id,vendor_name,product_name,product_image,description,price,quantity,created_at) VALUES(PRODUCT_seq.nextval, ?,?,?,?,?,?,?,SYSDATE)";

    PreparedStatement ps = con.prepareStatement(sql);
	ps.setInt(1, product_id);
    ps.setInt(1, vendor_id);
    ps.setString(2, vendor_name);
    ps.setString(3, product_name);

    ps.setNull(4, java.sql.Types.BLOB); 

    ps.setString(5, description);
    ps.setDouble(6, price);
    ps.setInt(7, quantity);

    int i = ps.executeUpdate();

    if(i > 0){
        out.println(" Add Successful");
    } else {
        out.println("Failed");
    }

    con.close();

} catch(Exception e){
	out.println(e);
}
%>

</body>
</html>