package com.cheungyx.service;

import com.cheungyx.pojo.Book;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public interface BookService {
    //增加一本书
    int addBook(Book book );
    //删除书
    int deleteBookById(int id);
    //更新书
    int updateBook(Book book);
    //查询一本书
    Book queryBookOne(int id);
    //查询所有书
    List<Book> queryAllBook();
    //搜索书籍
    Book searchBook(String name);
}
