package com.gdsc.savewater.domain.News;

import com.gdsc.savewater.common.BaseTimeEntity;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Getter
@NoArgsConstructor
public class News extends BaseTimeEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String picture;

    @Column(nullable = false)
    private String title;

    @Column(nullable = false)
    private String contents;

    @Column(nullable = false)
    private String url;

    @Builder
    public News(String picture, String title, String contents, String url) {
        this.picture = picture;
        this.title = title;
        this.contents = contents;
        this.url = url;
    }
}
