<%-- 
    Document   : list
    Created on : Apr 23, 2023, 2:49:38 PM
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
        <%ResultSet rs = (ResultSet)request.getAttribute("post");%>
    <center>
        <h1>MANAGEMENT</h1>
        <h3> <a href="add">Add new</a> </h3>
        <table border="1px" width="40%">
            <tr>
                <th>TITLE</th>
                <th>DATE-TIME</th>
            </tr>
            <%while (rs.next()){%>
            <tr>

                <th><%=rs.getString(2)%></th>
                <th><%=rs.getString(5)%></th>
                <tD>
                    <a href="updatecontroller?id=<%=rs.getInt(1)%>">Update</a>
                    <a href="deletecontroller?id=<%=rs.getInt(1)%>">Delete</a>
                </tD>

            </tr>
            <%}%>

        </table>
        <h3> <a href="listsubcriber">This is the list of subcriber</a> </h3>
        <h3> <a href="listcontact">This is the information of people</a> </h3>
        <a href="postcontroller"><input type="submit" name="HOME" value="HOME"></a>

    </center>
    <%}else{%>
    Get out!
    <%}%>  
</body>
</html>
