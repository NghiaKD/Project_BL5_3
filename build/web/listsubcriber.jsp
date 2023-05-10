<%-- 
    Document   : listsubcriber
    Created on : Apr 23, 2023, 5:52:01 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="entity.admin,jakarta.servlet.http.HttpSession"%>
        <%admin ad = (admin)session.getAttribute("logininfor");%>
        <%if (ad!=null){%>


        <%@page import="java.sql.ResultSet"%>
        <%ResultSet rs = (ResultSet)request.getAttribute("sub");%>
    <center>
        <h1>List of subcriber</h1>
        <table border="1px" width="40%">
            <tr>
                <th>Name</th>
                <th>Email</th>
            </tr>
            <%while (rs.next()){%>
            <tr>
                <th><%=rs.getString(2)%></th>
                <th><%=rs.getString(3)%></th>
            </tr>
            <%}%>
        </table>
        </br>

        <a href="postcontroller"><input type="submit" name="HOME" value="HOME"></a>
        <a href="postmanagementcontroller"><input type="submit" name="MANAGEMENT" value="MANAGEMENT"></a>

    </center>
    <%}else{%>
    Get out!
    <%}%>  

</body>
</html>
