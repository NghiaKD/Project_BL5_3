<%-- 
    Document   : home.jsp
    Created on : Apr 22, 2023, 3:48:37 PM
    Author     : lenovo
--%>


<style>
    /* Split the screen in half */
    .split {
        height: 100%;
        position: fixed;
        z-index: 1;
        top: 0;
        overflow-x: scroll;
        padding-top: 20px;
    }

    .left {
        left: 0;
        width: 70%;
        background-color: azure;
    }

    .right {
        right: 0;
        width: 30%;
        background-color: skyblue;
    }

    .centered {
        position: absolute;
        left: 15%;
        top: 15%;
        right: 15%;
    }
    .postbox{
        border: solid black 1px;
        margin-bottom: 50px;
        padding: 1rem;
        box-shadow: 0 15px 30px 0 rgba(0,0,0,0.11),
            0 5px 15px 0 rgba(0,0,0,0.08);
        background-color: #ffffff;
        border-radius: 0.5rem;
        border-left: 0 solid #00ff99;
        transition: border-left 300ms ease-in-out;
    }
    .postbox:hover{
        padding-left: 0.5rem;
        border-left: 0.5rem solid #00ff99;
    }
    .imgbox{
        width: inherit;
        height: 500px;
        display: flex;
        justify-content: space-evenly;
        flex-wrap: wrap;
        overflow:hidden;
        background: inherit;
    }

    .imgbox img{
        width: inherit;
        height: inherit;
        object-fit: inherit;
    }
    .title{
        font-size: x-large;
    }
    .content{
        border-top:  solid black 1px;
        padding-top: 10px;
        padding-bottom: 10px;
    }
</style>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Blog</title>
    </head>
    <body>
        <%@page import="java.sql.ResultSet"%>
        <%ResultSet rs = (ResultSet)request.getAttribute("post");%>
        <div class="split left">
            <div class="centered">
                <%while (rs.next()){%>
                <div class="postbox">
                    <div class="imgbox"><img src="<%=rs.getString(4)%>"/></div>
                    <div class="title"><%=rs.getString(2)%></div>
                    <div class="dateCreated">Date created: <%=rs.getString(5)%></div>
                    <div class="content"><%=rs.getString(3)%></div>
                </div>
                <br>
                <%}%>
            </div>
        </div>

        <div class="split right">
            <div class="centered">
                <h1 class="newsletter_taital">NEWSLETTER</h1>
                <form action="newsub" method="POST">
                    <input type="text"  name="emailSub" required placeholder="Enter your email"> </br>
                    <input type="text" name="nameSub" required placeholder="Enter your name"> </br>
                    <input type="submit" name="submit" value="SUBCRIBES">
                </form>

                <h1 class="newsletter_taital">Contact Us</h1>
                <form action="contactController" method="post">
                    <input type="text" name="nameContact" required placeholder="Enter your name..."> </br>
                    <input type="text" name="phoneContact"  required placeholder="PhoneNumber"> </br>
                    <input type="text" name="emailContact" required placeholder="Your email"> </br>
                    <textarea type="text" rows="5" name="messageContact" required  placeholder="Message"></textarea> </br>
                    <input type="submit" name="send" value="Send">
                </form>
                <a href="login"><input type="submit" name="login" value="LoginAdmin"></a>
<!--                <a href="postmanagementcontroller"><input type="submit" name="MANAGEMENT" value="MANAGEMENT"></a>
                <a href="add"><input type="submit" name="ADD" value="ADD"></a>
                <a href="listsubcriber"><input type="submit" name="SUB" value="SUB"></a> 
                <a href="listcontact"><input type="submit" name="CONTACT" value="CONTACT"></a> -->
                    </br>
                    </br>

                    <h1>Welcome to KDN's blog</h1>
                    <h2>Blog about....</h2>
                    <h2>My telephone number: 0982042003</h2>
                    <h2>Email: nghiau2k3@gmail.com</h2>

            </div>

            </br>

        </div>
    </body>
</html>
