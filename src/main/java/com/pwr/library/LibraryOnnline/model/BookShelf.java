package com.pwr.library.LibraryOnnline.model;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;

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

    @NotNull
    @Column(name = "user_id")
    private long user;

    private String description;
}
