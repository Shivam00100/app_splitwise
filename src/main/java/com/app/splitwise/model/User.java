package com.app.splitwise.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Builder;
import lombok.Data;
import java.util.UUID;

@Data
@Builder
public class User {
    @JsonProperty("userId")
    private UUID userId;

    @JsonProperty("userName")
    private String userName;

    @JsonProperty("userEmail")
    private String userEmail;
}
