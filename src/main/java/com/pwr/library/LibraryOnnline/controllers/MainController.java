package com.pwr.library.LibraryOnnline.controllers;


import com.pwr.library.LibraryOnnline.dao.BookDao;
import com.pwr.library.LibraryOnnline.dao.BookDetailsDao;
import com.pwr.library.LibraryOnnline.dao.BookShelfDao;
import com.pwr.library.LibraryOnnline.model.Book;
import com.pwr.library.LibraryOnnline.model.BookDetails;
import com.pwr.library.LibraryOnnline.model.BookShelf;
import com.pwr.library.LibraryOnnline.services.BookService;
import com.pwr.library.LibraryOnnline.services.BookShelfService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@Controller
public class MainController {

    @Autowired
    private BookDao bookDao;

    @Autowired
    private BookShelfDao bookShelfDao;

    @Autowired
    private BookDetailsDao bookDetailsDao;

    @Autowired
    private BookService bookService;

    @Autowired
    private BookShelfService bookShelfService;

    @GetMapping("/welcome")
    public String welcome()
    {

        return "welcome";
    }

    @GetMapping("/list/{user}")
    public String bookListUser(Model model, @PathVariable("user") long id)
    {
        List<BookShelf> shelfs = bookShelfDao.findAllByUser(id);
        model.addAttribute("shelfs", shelfs);
        model.addAttribute("id", id);
        return "bookShelf";
    }

    @GetMapping("/bookshelf/{id}")
    public String booksOnShelf(Model model, @PathVariable("id") long id)
    {
        if(id == 0) id = 1;
        BookShelf bookShelf = bookShelfDao.findById(id);
        List<BookDetails> books = bookDetailsDao.findByBookShelf(bookShelf);
        model.addAttribute("books", books);
        return "bookDetailsUser";
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

    @PostMapping("/addBookShelf/{id}")
    public String addBookShelf(@ModelAttribute("book") BookShelf bookShelf, @PathVariable("id") long id, Model model)
    {
        bookShelf.setUser(id);
        bookShelfDao.save(bookShelf);
        model.addAttribute("id", id);
        return "bookShelf";
    }

    @GetMapping("/addBookShelf/{id}")
    public String addBookShelfPost(@PathVariable("id") long id, Model model)
    {
        model.addAttribute("bookShelf", new BookShelf());
        model.addAttribute("id", id);
        return "addBookShelf";
    }

    @PostMapping("/editBook")
    public String editBookPost(@ModelAttribute("book") Book book, Model model)
    {
        bookDao.save(book);
        return "bookListAdmin";
    }

    @GetMapping("/editBook/{id}")
    public String editBook(Model model, @PathVariable("id") long id)
    {
        Book book = bookDao.findById(id);
        model.addAttribute("book", book);
        model.addAttribute("id", book.getId());
        return "editBook";
    }


    @PostMapping("/bookShelf/{user}")
    public String bookShelfPost(@PathVariable("user") long id)
    {

        return "bookShelf";
    }

    @GetMapping("/rentBook")
    public String rentBook(@RequestParam("bookshelfId") long bookshelfId,
                           @RequestParam("userId") long userId,
                           @RequestParam("bookId") long bookId)
    {
        bookShelfService.rentABook(bookshelfId, userId, bookId);
        return "bookShelf";
    }

    @GetMapping("/bookList/{id}")
    public String rentBookk(@PathVariable("id") long id, Model model)
    {

        model.addAttribute("bookList", bookDao.findAll());
        model.addAttribute("id", id);
        return "bookListUser";
    }
}
