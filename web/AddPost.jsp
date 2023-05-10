<%-- 
    Document   : AddPost
    Created on : Apr 23, 2023, 3:14:41 PM
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
    <h1>Add new post</h1>
    <h3 style="color: red"></h3>
    <form action="add" method="post">
        enter picture url: <input type="text" name="url" style="width: 300px"/></br>
        enter title: <input type="text" name="title" /> </br>
        enter post content: <textarea type="text" name="postcontent"> </textarea></br>
        <input type="submit" name="save" value="save"> 
    </form>
    <a href="postcontroller"><input type="submit" name="HOME" value="HOME"></a>
    <a href="postmanagementcontroller"><input type="submit" name="MANAGEMENT" value="MANAGEMENT"></a>
        <%}else{%>
    Login please
    <%}%>    
</body>
</html>
