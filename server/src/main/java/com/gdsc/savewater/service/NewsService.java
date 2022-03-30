package com.gdsc.savewater.service;

import com.gdsc.savewater.domain.News.Campaign;
import com.gdsc.savewater.domain.News.News;
import com.gdsc.savewater.controller.response.CampaignResponse;
import com.gdsc.savewater.controller.response.GetNewsResponse;
import com.gdsc.savewater.controller.response.NewsResponse;
import com.gdsc.savewater.domain.News.repository.CampaignRepository;
import com.gdsc.savewater.domain.News.repository.NewsRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class NewsService {

    private final NewsRepository newsRepository;
    private final CampaignRepository campaignRepository;

    public GetNewsResponse getNews() {
        List<News> newsList = newsRepository.findAll();
        List<Campaign> campaignList = campaignRepository.findAll();

        List<NewsResponse> newsResList = new ArrayList<>();
        List<CampaignResponse> campaignResList = new ArrayList<>();
        for (News news : newsList)
            newsResList.add(NewsResponse.create(news));
        for (Campaign campaign : campaignList)
            campaignResList.add(CampaignResponse.create(campaign));
        return new GetNewsResponse(campaignResList, newsResList);
    }
}
