package com.cheungyx.service;

import com.cheungyx.dao.BookDao;
import com.cheungyx.pojo.Book;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * @author xiaozhang
 * @date 2021-08-28 10:16
 * @description:
 * @version:
 */

public class BookServiceImpl implements BookService {

    private BookDao bookDao;

    public void setBookDao(BookDao bookDao) {
        this.bookDao = bookDao;
    }

    @Override
    public int addBook(Book book) {
        return bookDao.addBook(book);
    }

    @Override
    public int deleteBookById(int id) {
        return bookDao.deleteBookById(id);
    }

    @Override
    public int updateBook(Book book) {
        return bookDao.updateBook(book);
    }

    @Override
    public Book queryBookOne(int id) {
        return bookDao.queryBookOne(id);
    }

    @Override
    public List<Book> queryAllBook() {
        return bookDao.queryAllBook();
    }

    @Override
    public Book searchBook(String name) {
        return bookDao.searchBook(name);
    }
}
