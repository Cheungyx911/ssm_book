import com.cheungyx.pojo.Book;
import com.cheungyx.service.BookService;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * @author xiaozhang
 * @date 2021-08-28 14:41
 * @description:
 * @version:
 */

public class test {
    @Test
    public void test1(){
        ClassPathXmlApplicationContext classPathXmlApplicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        BookService bookService = (BookService) classPathXmlApplicationContext.getBean("bookServiceImpl");
        List<Book> books = bookService.queryAllBook();
        for (Book book : books) {
            System.out.println(book);
        }
    }
}
