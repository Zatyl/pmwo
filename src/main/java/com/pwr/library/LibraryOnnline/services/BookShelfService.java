package com.pwr.library.LibraryOnnline.services;

import com.pwr.library.LibraryOnnline.dao.BookDao;
import com.pwr.library.LibraryOnnline.dao.BookDetailsDao;
import com.pwr.library.LibraryOnnline.dao.BookShelfDao;
import com.pwr.library.LibraryOnnline.model.BookDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Date;

@Service
public class BookShelfService {

    @Autowired
    BookDetailsDao bookDetailsDao;

    @Autowired
    BookDao bookDao;

    @Autowired
    BookShelfDao bookShelfDao;

    public void rentABook(long bookShelfId, long userId, long bookId)
    {
        BookDetails bookDetails = new BookDetails();
        bookDetails.setBook(bookDao.findById(bookId));
        bookDetails.setBookShelf(bookShelfDao.findById(bookShelfId));
        bookDetails.setUser(userId);
        bookDetails.setDescription("");
        bookDetails.setExpireDate(Date.valueOf("2018-01-01"));

        bookDetailsDao.save(bookDetails);
    }
}
