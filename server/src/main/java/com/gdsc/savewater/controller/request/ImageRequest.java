package com.gdsc.savewater.controller.request;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class ImageRequest {
    private String image;
    private String message;
}
