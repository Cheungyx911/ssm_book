<%--
  Created by IntelliJ IDEA.
  User: 稚念
  Date: 2021/8/28
  Time: 17:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增书籍</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>新增书籍</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/book/addBook" method="post">
        <div class="form-group">
            <label for="bookName">书籍名称:</label>
            <input type="text" class="form-control" id="bookName"  name="name" required>
        </div>
        <div class="form-group">
            <label for="bookPrice">书籍价格:</label>
            <input type="text" class="form-control" id="bookPrice" name="price" required>
        </div>
        <div class="form-group">
            <label for="bookSales">书籍销量:</label>
            <input type="text" class="form-control" id="bookSales" name="sales" required>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="添加" >
        </div>
    </form>
</div>
</body>
</html>
