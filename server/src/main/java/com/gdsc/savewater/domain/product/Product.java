package com.gdsc.savewater.domain.product;

import com.gdsc.savewater.common.BaseTimeEntity;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Getter
@NoArgsConstructor
public class Product extends BaseTimeEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String image;

    @Column(nullable = false)
    private String title;

    @Column(nullable = false)
    private int price;

    @Builder
    public Product(String image, String title, int price) {
        this.image = image;
        this.title = title;
        this.price = price;
    }
}
