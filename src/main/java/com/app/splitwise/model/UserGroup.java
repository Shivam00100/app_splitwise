package com.app.splitwise.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Builder;
import lombok.Data;

import java.util.UUID;


@Data
@Builder
public class UserGroup {
    @JsonProperty("groupId")
    private UUID groupId;

    @JsonProperty("userId")
    private UUID userId;
}
