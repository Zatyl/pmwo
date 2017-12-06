package com.pwr.library.LibraryOnnline.dao;

import com.pwr.library.LibraryOnnline.model.Book;
import com.pwr.library.LibraryOnnline.model.BookDetails;
import com.pwr.library.LibraryOnnline.model.BookShelf;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;


@Transactional
@Repository
public interface BookShelfDao extends CrudRepository<BookShelf, Long> {
    List<BookShelf> findAllByUser(long user);
    BookShelf findById(long id);
    List<BookDetails> findBookDetailsById(long id);
}
