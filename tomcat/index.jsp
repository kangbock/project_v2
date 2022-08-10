<%@page import="java.sql.*" contentType="text/html;charset=utf-8"%>
<%@page import="javax.servlet.*" contentType="text/html;charset=utf-8"%>
<%@page import="javax.servlet.http.*" contentType="text/html;charset=utf-8"%>
<%@page import="java.io.*" contentType="text/html;charset=utf-8"%>


<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DB Connection Test</title>
</head>
<body>
        <%
                String DB_URL = "jdbc:mysql://13.125.125.45:3306/member?useSSL=false";
                String DB_USER = "root";
                String DB_PASSWORD= "It1";

                Connection conn;
                Statement stmt;
                PreparedStatement ps;
                ResultSet rs;

                try {
                        Class.forName("com.mysql.jdbc.Driver");
                        conn = DriverManager.getConnection(DB_URL, "root", "It1");
                        stmt = conn.createStatement();

                        ps = conn.prepareStatement("SELECT*FROM member");
                        rs = ps.executeQuery();
                        %>
                        <table border="1"><thead><th>no</th><th>id</th><th>name</th><th>phone</th><th>address</th></thead><tbody>
        <%
        while (rs.next()) {
                out.print("<tr><td>" + rs.getString("no") + "</td>");
		out.print("<td>" + rs.getString("id") + "</td>");
		out.print("<td>" + rs.getString("name") + "</td>");
		out.print("<td>" + rs.getString("phone") + "</td>");
                out.print("<td>" + rs.getString("address") + "</td></tr>");
        }
        %>
                        </tbody>
                        </table>
                        <%
                        out.println("MySQL Connection Success!");
                        conn.close();
                } catch(Exception e){
                        out.println(e);
                }
        %>
</body>
</html>
