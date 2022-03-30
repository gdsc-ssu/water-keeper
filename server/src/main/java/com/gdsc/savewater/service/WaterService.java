package com.gdsc.savewater.service;

import com.gdsc.savewater.domain.Image.Image;
import com.gdsc.savewater.domain.Image.ImageRepository;
import com.gdsc.savewater.controller.request.ImageRequest;
import com.gdsc.savewater.domain.user.User;
import com.gdsc.savewater.controller.response.WaterResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
@Transactional
@RequiredArgsConstructor
public class WaterService {

    private final ImageRepository imageRepository;

    public WaterResponse getWater(User user) {
        return new WaterResponse(user.getWaterCount());
    }

    public void postImage(User user, ImageRequest imageRequest) {
        if (imageRequest.getImage() != null) {
            user.updateCount(user.getWaterCount()+1);
            imageRepository.save(
                    Image.builder()
                            .image(imageRequest.getImage())
                            .message(imageRequest.getMessage())
                            .user(user)
                            .build()
            );
        }
    }
}
