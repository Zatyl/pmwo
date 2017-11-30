package com.pwr.library.LibraryOnnline.controllers;


import com.pwr.library.LibraryOnnline.dao.BookDao;
import com.pwr.library.LibraryOnnline.model.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Controller
public class MainController {

    @Autowired
    private BookDao bookDao;

    @GetMapping("/welcome")
    public String welcome()
    {

        return "welcome";
    }

    @GetMapping("/list/{user}")
    public String bookListUser(Model model, @PathVariable("user") long id)
    {
        List<Book> books = bookDao.findAll();
        model.addAttribute("books", books);
        return "bookListUser";
    }

    @GetMapping("/list")
    public String bookListAdmin(Model model)
    {
        List<Book> books = bookDao.findAll();
        model.addAttribute("bookList", books);
        return "bookListAdmin";
    }

    @GetMapping("/test")
    public String test(Model model)
    {
        List<Book> books = bookDao.findAll();
        model.addAttribute("book", books.get(0));
        return "firstBook";
    }

    @PostMapping("/addBook")
    public String addBook(@ModelAttribute("book") Book book, Model model)
    {
        book.setRating(BigDecimal.ZERO);
        bookDao.save(book);
        return "bookListAdmin";
    }

    @GetMapping("/addBook")
    public String addBookPost(Model model)
    {
        model.addAttribute("book", new Book());
        return "addBook";
    }

    @GetMapping("/bookShelf/{user}")
    public String bookShelf(@PathVariable("user") long id)
    {

        return "bookShelf";
    }

    @PostMapping("/bookShelf/{user}")
    public String bookShelfPost(@PathVariable("user") long id)
    {

        return "bookShelf";
    }
}
