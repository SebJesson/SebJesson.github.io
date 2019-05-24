<%@ page import="com.jesson.utils.User" %><%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2019/4/21
  Time: 18:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%
  String remoteHost = request.getRemoteHost();
  System.out.println(remoteHost);
%>
<html>
  <head>
    <title>JessonWeb20190421</title>
    <link rel="shortcut icon" href="drawable/fake.ico" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="css/home_main.css">
  </head>
  <body>
  <%--<%
    User user = (User) session.getAttribute("user");
  %>--%>
    <div class="out">
      <div class="banner">
        <div class="bannerTop">
          <a href="index.jsp"><span class="bannerTopText">JessonWeb</span></a>
          <a href="index.jsp" class="bannerOpt">home</a>
          <a href="index.jsp" class="bannerOpt">disco</a>
          <a href="index.jsp" class="bannerOpt">app</a>
          <a href="index.jsp" class="bannerOpt">license</a>
          <div id="userBar">


            <%--<c:if test="${empty user}">
              <a href="login.jsp"><div class="loginButton">Login</div></a>
              <a href="register.jsp"><span class="register">Register</span></a>
            </c:if>--%>

            <c:choose>
              <c:when test="${empty user}">
                <a href="login.jsp"><div class="loginButton">Login</div></a>
                <a href="register.jsp"><span class="register">Register</span></a>
              </c:when>
              <c:otherwise>
                <div class="userIcon"></div>
                <a href="login.jsp"><div class="userName">${sessionScope.user.username}</div></a>
              </c:otherwise>
            </c:choose>
            <%--<%
              if (user == null) {
                out.println("<a href=\"login.jsp\"><div class=\"loginButton\">Login</div></a>\n" +
                        "            <a href=\"register.jsp\"><span class=\"register\">Register</span></a>");
              } else {
                out.println("<div class=\"userIcon\"></div>\n" +
                        "                    <a href=\"login.jsp\"><div class=\"userName\">"+user.getUsername()+"</div></a>");
              }
            %>--%>

          </div>
          <a href="index.jsp"><div id="searchImg" class="search"></div></a>
          <a href="index.jsp"><div id="markImg" class="search"></div></a>
        </div>
        <div class="bannerButtom">
          <div class="selectCenter">
            <a href="html/ne20190515snake.html"><div class="selection">Scenery</div></a>
            <a href="html/ne20190518mi.html"><div class="selection">Portrait</div></a>
            <a href="index.jsp"><div class="selection">Humanity</div></a>
            <a href="index.jsp"><div class="selection">Originality</div></a>
            <a href="index.jsp"><div class="selection">Film</div></a>
          </div>
        </div>
      </div>
      <div class="content">
        <div class="card">
          <div>
            <div class="img" id="img01"></div>
            <div class="textDiv">
              <span class="name">Canton Tower</span><br>
              <span class="desc">Even low visibility ！</span><br>
              <span class="author">Sebastian_Jesson</span>
            </div>
          </div>

        </div>
        <div class="card" id="card02">
          <div id="card02Inner">
            <div class="img" id="img02"></div>
            <div class="textDiv">
              <span class="name">Busy</span><br>
              <span class="desc">People are hurrying to and fro...</span><br>
              <span class="author">Sebastian_Jesson</span>
            </div>
          </div>
        </div>
        <div class="card">
          <div>
            <div class="img" id="img03"></div>
            <div class="textDiv">
              <span class="name">Crowding</span><br>
              <span class="desc">Suffocating rhythm of life !</span><br>
              <span class="author">Sebastian_Jesson</span>
            </div>
          </div>
        </div>
      </div>
      <div class="footer">
        <div class="footerTop">
          <div class="buttomBanner">Power by JessonSoftWare</div>
        </div>
        <div class="footerButtom">
          <span><a href="index.jsp">JessonWeb20190424</a> | <a href="index.jsp">create by "@+id/Seb_Jesson"</a> | <a href="index.jsp">sjzhong1998@foxmail.com</a></span>
        </div>
      </div>
    </div>
  </body>
</html>
