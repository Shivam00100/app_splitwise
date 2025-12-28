package com.app.splitwise.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Builder;
import lombok.Data;
import org.springframework.stereotype.Component;

@Data
@Builder
public class Transaction {
    @JsonProperty("transactionId")
    private String transactionId;

    @JsonProperty("lender")
    private String lender;

    @JsonProperty("borrower")
    private String borrower;

    @JsonProperty("amount")
    private Long amount;

    @JsonProperty("groupId")
    private Long groupId;
}
