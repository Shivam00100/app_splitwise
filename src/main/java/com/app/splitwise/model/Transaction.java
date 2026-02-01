package com.app.splitwise.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Builder;
import lombok.Data;
import org.springframework.stereotype.Component;

import java.util.UUID;

@Data
@Builder
public class Transaction {
    @JsonProperty("transactionId")
    private UUID transactionId;

    @JsonProperty("lender")
    private UUID lender;

    @JsonProperty("borrower")
    private UUID borrower;

    @JsonProperty("amount")
    private Long amount;

    @JsonProperty("groupId")
    private UUID groupId;
}
