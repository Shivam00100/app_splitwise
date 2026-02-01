package com.app.splitwise.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Builder;
import lombok.Data;

import java.util.UUID;

@Data
@Builder
public class Groups {

    @JsonProperty("groupId")
    private UUID groupId;

    @JsonProperty("groupName")
    private String groupName;
}
