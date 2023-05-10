<%-- 
    Document   : update
    Created on : Apr 23, 2023, 3:53:04 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%@page import="entity.admin,jakarta.servlet.http.HttpSession"%>
    <%admin ad = (admin)session.getAttribute("logininfor");%>
    <%if (ad!=null){%>

    <%@page import="java.sql.ResultSet"%>
    <%ResultSet rs = (ResultSet)request.getAttribute("post");%>
    <%rs.next();%>
    <body>
        <h1>update post</h1>
        <form action="updatecontroller" method="post">
            <input type="hidden" name="pid" value="<%=rs.getInt(1)%>">
            title:  <input type="text" name="title" value="<%=rs.getString(2)%>"/> </br>  
            content:  <input type="text" name="content" value="<%=rs.getString(3)%>"/> </br>
            url: <input type="text" name="url" value="<%=rs.getString(4)%>"/> </br>
            <input type="submit" value="UPDATE" name="submit"> 
        </form>
        <%}else{%>
        Get out!
        <%}%>  
    </body>
</html>
