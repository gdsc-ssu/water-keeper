package com.gdsc.savewater.controller;

import com.gdsc.savewater.controller.request.ImageRequest;
import com.gdsc.savewater.domain.user.User;
import com.gdsc.savewater.controller.response.WaterResponse;
import com.gdsc.savewater.security.CurrentUser;
import com.gdsc.savewater.security.UserPrincipal;
import com.gdsc.savewater.service.UserService;
import com.gdsc.savewater.service.WaterService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/water")
@RequiredArgsConstructor
public class WaterController {

    private final WaterService waterService;
    private final UserService userService;

    @GetMapping
    public WaterResponse getWater(@CurrentUser UserPrincipal userPrincipal) {
        User user = userService.getUserFromId(userPrincipal.getId());
        return waterService.getWater(user);
    }

    @PostMapping("/picture")
    public void postImage(@CurrentUser UserPrincipal userPrincipal, @RequestBody ImageRequest imageRequest) {
        User user = userService.getUserFromId(userPrincipal.getId());
        waterService.postImage(user, imageRequest);
    }
}
