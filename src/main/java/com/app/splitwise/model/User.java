package com.app.splitwise.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Builder;
import lombok.Data;
import org.springframework.stereotype.Component;

@Data
@Builder
public class User {
    @JsonProperty("userId")
    private String userId;

    @JsonProperty("userName")
    private String userName;
}
