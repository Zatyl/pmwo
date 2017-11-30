package com.pwr.library.LibraryOnnline.dao;

import com.pwr.library.LibraryOnnline.model.BookShelf;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;


@Transactional
@Repository
public interface BookShelfDao extends CrudRepository<BookShelf, Long> {
}
