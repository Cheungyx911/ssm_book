package com.cheungyx.pojo;

/**
 * @author xiaozhang
 * @date 2021-08-28 09:54
 * @description:
 * @version:
 */

public class Book {
    private Integer id;
    private String name;
    private Double price;
    private Integer sales;

    public Book() {
    }

    public Book(Integer id, String name, Double price, Integer sales) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.sales = sales;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getSales() {
        return sales;
    }

    public void setSales(Integer sales) {
        this.sales = sales;
    }

    @Override
    public String toString() {
        return "Book{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", sales=" + sales +
                '}';
    }
}
