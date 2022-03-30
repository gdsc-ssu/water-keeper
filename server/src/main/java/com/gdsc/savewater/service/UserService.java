package com.gdsc.savewater.service;

import com.gdsc.savewater.domain.user.User;
import com.gdsc.savewater.domain.user.UserRepository;
import com.gdsc.savewater.exception.ResourceNotFoundException;
import com.nimbusds.openid.connect.sdk.UserInfoErrorResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class UserService {

    private final UserRepository userRepository;

    public User getUserFromId(Long userId) {
        return userRepository.findById(userId)
                .orElseThrow(() -> new ResourceNotFoundException("user", "id", userId));
    }
}
