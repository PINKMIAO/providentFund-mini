package com.baven.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class FundSystem {

    private String seqName;
    private int seq;
    private int maxSeq;
    private String descp;

}
