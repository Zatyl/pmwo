package com.pwr.library.LibraryOnnline.model;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;

@Data
@Entity
@Table(name = "TBO_BOOK")
public class Book {

    public Book()
    {

    }

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @NotNull
    private String name;

    private String description;

    @NotNull
    private BigDecimal price;

    @NotNull
    @Column(name = "stock_left")
    private int stockLeft;

    @NotNull
    private int max;

    @NotNull
    private BigDecimal rating;
}
