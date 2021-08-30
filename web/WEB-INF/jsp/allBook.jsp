<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 稚念
  Date: 2021/8/28
  Time: 14:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍展示</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>书籍列表------显示所有书籍</small>
                </h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 column">
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/toAddBook">新增书籍</a>
            </div>
            <div class="col-md-8 column" >

               <form class="form-inline" action="${pageContext.request.contextPath}/book/searchBook" method="post" style="float: right">
                   <span style="color: red ;font-weight: bold">${erre}</span>
                   <input type="text" name="searchBook" class="form-control" placeholder="输入需要搜索书籍的名称" required />
                   <input type="submit" value="搜索" class="btn btn-primary"/>

               </form>
            </div>
        </div>
    </div>
    <row class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <th>书籍编号</th>
                <th>书籍名称</th>
                <th>书籍价格</th>
                <th>书籍销量</th>
                <th>操作</th>

                </thead>

                <tbody>
                <c:forEach var="book" items="${list}">
                    <tr>
                        <td>${book.id}</td>
                        <td>${book.name}</td>
                        <td>${book.price}</td>
                        <td>${book.sales}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/book/toUpdateBook?id=${book.id}">修改</a> &nbsp;|&nbsp;
                            <a href="${pageContext.request.contextPath}/book/DeleteBook/${book.id}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </row>
</div>
</body>
</html>
