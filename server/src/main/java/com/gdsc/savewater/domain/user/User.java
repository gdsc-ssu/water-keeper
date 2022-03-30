package com.gdsc.savewater.domain.user;

import com.gdsc.savewater.common.BaseTimeEntity;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import net.minidev.json.annotate.JsonIgnore;

import javax.persistence.*;

@Entity
@Getter
@NoArgsConstructor
public class User extends BaseTimeEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String email;

    @Column
    private String image;

    @Column
    private Role role;

    @JsonIgnore
    @Column
    private String password;

    @Column(nullable = true)
    private int waterCount;

    @Builder
    public User(String name, String email, String image) {
        this.name = name;
        this.email = email;
        this.image = image;
        this.waterCount = 0;
    }

    public User update(String name, String image) {
        this.name = name;
        this.image = image;

        return this;
    }

    public void updateCount(int count) {
        this.waterCount = count;
    }
}
