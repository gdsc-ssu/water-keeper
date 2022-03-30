package com.gdsc.savewater.domain.Image;

import com.gdsc.savewater.common.BaseTimeEntity;
import com.gdsc.savewater.domain.user.User;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Getter
@NoArgsConstructor
public class Image extends BaseTimeEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String image;

    private String message;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @Builder
    public Image(String image, String message, User user) {
        this.image = image;
        this.message = message;
        this.user = user;
    }
}
