package com.pwr.library.LibraryOnnline.dao;

import com.pwr.library.LibraryOnnline.model.Book;
import com.pwr.library.LibraryOnnline.model.BookShelf;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;

@Transactional
@Repository
public interface BookDao extends CrudRepository<Book, Long> {
    List<Book> findAll();
    Book findById(long id);
}
