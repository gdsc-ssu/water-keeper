package com.gdsc.savewater.domain.News.repository;

import com.gdsc.savewater.domain.News.Campaign;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CampaignRepository extends JpaRepository<Campaign, Long> {
    List<Campaign> findAll();
}
