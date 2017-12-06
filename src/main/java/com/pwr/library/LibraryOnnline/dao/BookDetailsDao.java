package com.pwr.library.LibraryOnnline.dao;

import com.pwr.library.LibraryOnnline.model.BookDetails;
import com.pwr.library.LibraryOnnline.model.BookShelf;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;


@Transactional
@Repository
public interface BookDetailsDao extends CrudRepository<BookDetails, Long> {
    List<BookDetails> findByUser(long user);
    List<BookDetails> findByBookShelf(BookShelf bookShelf);
}
