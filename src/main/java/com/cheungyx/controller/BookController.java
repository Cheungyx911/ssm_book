package com.cheungyx.controller;

import com.cheungyx.pojo.Book;
import com.cheungyx.service.BookService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

/**
 * @author xiaozhang
 * @date 2021-08-28 14:12
 * @description:
 * @version:
 */
@Controller
@RequestMapping("/book")
public class BookController {
    //controller层调service
    @Autowired
    @Qualifier("bookServiceImpl")
    private BookService bookService;

    //查询所有的数据并展示
    @RequestMapping("/allBook")
    public String list(Model model){
        List<Book> books = bookService.queryAllBook();
        model.addAttribute("list", books);
        return "allBook";

    }
    //跳转到增加书籍页面
    @RequestMapping("/toAddBook")
    public String add(){
        return "addBook";
    }
    //添加书籍的请求
    @RequestMapping("/addBook")
    public String addBook(Book book){
        System.out.println("addBook=>"+book);
        bookService.addBook(book);
        return "redirect:/book/allBook";
    }
    //跳转到修改书籍页面
    @RequestMapping("/toUpdateBook")
    public String toUpdateBook(int id,Model model){
        Book book = bookService.queryBookOne(id);
        model.addAttribute("book",book);
        return "updateBook";
    }
    //修改书籍
    @RequestMapping("/updateBook")
    public String updateBook(Book book){
        System.out.println(book);
        bookService.updateBook(book);
        return "redirect:/book/allBook";

    }
    //删除书籍
    @RequestMapping("/DeleteBook/{bookID}")
    public String DeleteBook(@PathVariable("bookID") int id){
        bookService.deleteBookById(id);
        return "redirect:/book/allBook";
    }
    //查询书籍
    @RequestMapping("/searchBook")
    public String searchBook(String searchBook, Model model){
        Book book = bookService.searchBook(searchBook);

        System.out.println(book);
        List<Book> bookList = new ArrayList<>();
        bookList.add(book);
        if(book == null){
            bookList = bookService.queryAllBook();
            model.addAttribute("erre", "没有查到，请重新输入");
        }
        model.addAttribute("list",bookList);
        return "allBook";
    }

}
