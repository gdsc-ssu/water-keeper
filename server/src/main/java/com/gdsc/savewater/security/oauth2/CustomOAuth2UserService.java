package com.gdsc.savewater.security.oauth2;

import com.gdsc.savewater.config.AppProperties;
import com.gdsc.savewater.domain.user.User;
import com.gdsc.savewater.domain.user.UserRepository;
import com.gdsc.savewater.security.UserPrincipal;
import com.gdsc.savewater.security.oauth2.user.GoogleOAuth2UserInfo;
import com.gdsc.savewater.security.oauth2.user.OAuth2UserInfo;
import lombok.RequiredArgsConstructor;
import org.springframework.security.authentication.InternalAuthenticationServiceException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class CustomOAuth2UserService extends DefaultOAuth2UserService {

    private final UserRepository userRepository;
    private final AppProperties appProperties;

    @Override
    public OAuth2User loadUser(OAuth2UserRequest oAuth2UserRequest) throws OAuth2AuthenticationException {
        OAuth2User oAuth2User = super.loadUser(oAuth2UserRequest);

        try {
            return processOAuth2User(oAuth2UserRequest, oAuth2User);
        } catch (AuthenticationException ex) {
            throw ex;
        } catch (Exception ex) {
            // Throwing an instance of AuthenticationException will trigger the OAuth2AuthenticationFailureHandler
            throw new InternalAuthenticationServiceException(ex.getMessage(), ex.getCause());
        }
    }

    // 시용자 정보 추출
    private OAuth2User processOAuth2User(OAuth2UserRequest oAuth2UserRequest, OAuth2User oAuth2User) {
        OAuth2UserInfo oAuth2UserInfo = new GoogleOAuth2UserInfo(oAuth2User.getAttributes());

        User user = userRepository.findByEmail(oAuth2UserInfo.getEmail())
                .map(value -> updateExistingUser(value, oAuth2UserInfo))
                .orElseGet(() -> registerNewUser(oAuth2UserInfo));
        return UserPrincipal.create(user, oAuth2User.getAttributes());
    }

    private User registerNewUser(OAuth2UserInfo oAuth2UserInfo) {
        return userRepository.save(User.builder()
                .name(oAuth2UserInfo.getName())
                .email(oAuth2UserInfo.getEmail())
                .image(oAuth2UserInfo.getImageUrl())
                .build()
        );
    }

    private User updateExistingUser(User user, OAuth2UserInfo oAuth2UserInfo) {
        return userRepository.save(user
                .update(
                        oAuth2UserInfo.getName(),
                        oAuth2UserInfo.getImageUrl()
                )
        );
    }
}
