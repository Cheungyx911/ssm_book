<%--
  Created by IntelliJ IDEA.
  User: 稚念
  Date: 2021/8/28
  Time: 18:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改书籍</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改书籍</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/book/updateBook" method="post">
        <div class="form-group">
            <input type="hidden"  class="form-control" id="bookId"  name="id" value="${book.id}" required>
        </div>
        <div class="form-group">
            <label for="bookName">书籍名称:</label>
            <input type="text" class="form-control" id="bookName"  name="name" value="${book.name}" required>
        </div>
        <div class="form-group">
            <label for="bookPrice">书籍价格:</label>
            <input type="text" class="form-control" id="bookPrice" name="price" value="${book.price}" required>
        </div>
        <div class="form-group">
            <label for="bookSales">书籍销量:</label>
            <input type="text" class="form-control" id="bookSales" name="sales" value="${book.sales}" required>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="修改" >
        </div>
    </form>
</div>

</body>
</html>
