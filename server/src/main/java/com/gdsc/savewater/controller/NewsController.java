package com.gdsc.savewater.controller;

import com.gdsc.savewater.controller.response.GetNewsResponse;
import com.gdsc.savewater.service.NewsService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class NewsController {

    private final NewsService newsService;

    @GetMapping("/news")
    public GetNewsResponse getNews() {
        return newsService.getNews();
    }
}
