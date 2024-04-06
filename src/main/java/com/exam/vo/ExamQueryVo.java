package com.exam.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotNull;

/**
 * @author szy
 * @implNote 2024/4/7 12:23
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ExamQueryVo {

    private Integer examType;

    private String startTime;

    private String endTime;

    private String examName;

    @NotNull
    private Integer pageNo;

    @NotNull
    private Integer pageSize;

}
