package com.pwr.library.LibraryOnnline.model;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;

@Data
@Entity
@Table(name = "TBO_BOOK_DETAILS")
public class BookDetails {

    public BookDetails()
    {

    }

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "user_id")
    private long user;

    @NotNull
    @Column(name = "bookshelf_id")
    private long bookShelf;

    private String description;
}
