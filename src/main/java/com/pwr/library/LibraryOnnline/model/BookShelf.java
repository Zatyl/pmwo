package com.pwr.library.LibraryOnnline.model;

import lombok.Data;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;
import java.util.List;
import java.util.Set;

@Data
@Entity
@Table(name = "TBO_BOOKSHELF")
public class BookShelf {

    public BookShelf()
    {

    }

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "bookShelf")
//    @Fetch(FetchMode.SELECT)
    private List<BookDetails> bookDetails;

    @NotNull
    @Column(name = "user_id")
    private long user;

    private String description;
}
