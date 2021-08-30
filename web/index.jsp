<%--
  Created by IntelliJ IDEA.
  User: 稚念
  Date: 2021/8/28
  Time: 13:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>书籍展示</title>
    <style>
      h3{
        width: 180px;
        height: 30px;
        margin: 100px auto;
        text-align: center;
        line-height: 30px;
        background: aquamarine;
        border-radius: 5px;
      }
      a{
        text-decoration-line: none;
        color: black;
        font-size: 18px;
      }
    </style>
  </head>
  <body>
  <h3>
    <a href="${pageContext.request.contextPath}/book/allBook">进入书籍展示页面</a>
  </h3>
  </body>
</html>
