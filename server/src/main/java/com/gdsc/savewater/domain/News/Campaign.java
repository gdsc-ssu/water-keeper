package com.gdsc.savewater.domain.News;

import com.gdsc.savewater.common.BaseTimeEntity;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Getter
@NoArgsConstructor
public class Campaign extends BaseTimeEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String picture;

    @Column(nullable = false)
    private String title;

    @Column(nullable = false)
    private String url;

    @Builder
    public Campaign(String picture, String title, String url) {
        this.picture = picture;
        this.title = title;
        this.url = url;
    }
}
