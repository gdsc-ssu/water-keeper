package com.gdsc.savewater.controller.response;

import com.gdsc.savewater.domain.News.Campaign;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

@Getter
@Setter
@AllArgsConstructor
public class CampaignResponse {
    private Long id;
    private String picture;
    private String title;
    private String link;
    private LocalDateTime createdAt;

    public static CampaignResponse create(Campaign campaign) {
        return new CampaignResponse(campaign.getId(), campaign.getPicture(),
                campaign.getTitle(), campaign.getUrl(), campaign.getCreatedDate());
    }
}
