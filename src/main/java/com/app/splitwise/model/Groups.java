package com.app.splitwise.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Builder;
import lombok.Data;

import java.util.UUID;

@Data
@Builder
public class Groups {

    @JsonProperty("groupId")
    UUID groupId;

    @JsonProperty("groupName")
    String groupName;
}
