package com.pwr.library.LibraryOnnline.model;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;
import java.sql.Date;

@Data
@Entity
@Table(name = "TBO_BOOK_DETAILS")
public class BookDetails {

    public BookDetails()
    {

    }

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @Column(name = "user_id")
    private long user;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "bookshelf_id", nullable = false)
    private BookShelf bookShelf;

    @NotNull
    @OneToOne(fetch = FetchType.LAZY)
    private Book book;

    private String description;

    private Date expireDate;
}
