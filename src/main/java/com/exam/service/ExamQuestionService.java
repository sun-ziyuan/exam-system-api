package com.exam.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.exam.entity.ExamQuestion;

/**
 * @author szy
 * @implNote 2024/4/7 12:23
 */
public interface ExamQuestionService extends IService<ExamQuestion> {

    ExamQuestion getExamQuestionByExamId(Integer examId);

}
