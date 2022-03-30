package com.gdsc.savewater.controller.response;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@AllArgsConstructor
public class GetNewsResponse {
    List<CampaignResponse> campaignList;
    List<NewsResponse> newsList;
}
