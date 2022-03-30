package com.gdsc.savewater.controller.response;

import com.gdsc.savewater.domain.News.News;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

@Getter
@Setter
@AllArgsConstructor
public class NewsResponse {
    private Long id;
    private String picture;
    private String title;
    private String content;
    private String link;
    private LocalDateTime createdAt;

    public static NewsResponse create(News news) {
        return new NewsResponse(news.getId(), news.getPicture(),
                news.getTitle(), news.getContents(),
                news.getUrl(), news.getCreatedDate());
    }
}
