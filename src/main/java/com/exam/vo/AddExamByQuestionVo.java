package com.exam.vo;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.NotBlank;
import java.util.Date;

/**
 * @author szy
 * @implNote 2024/4/7 12:23
 */
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class AddExamByQuestionVo {

    @NotBlank
    private String examName;

    private String examDesc;

    private Integer type;

    private String password;

    private Integer examDuration;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date startTime;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date endTime;

    private Integer totalScore;

    private Integer passScore;

    private Integer status;

    private String questionIds;

    private Integer examId;

    private String scores;
}
