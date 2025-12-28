package com.app.splitwise.model;


import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Builder;
import lombok.Data;
import org.springframework.stereotype.Component;

@Data
@Builder
public class Friends {
    @JsonProperty("user1")
    private Long user1;

    @JsonProperty("user2")
    private Long user2;
}
