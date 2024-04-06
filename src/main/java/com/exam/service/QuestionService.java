package com.exam.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.exam.entity.Question;
import com.exam.vo.PageResponse;
import com.exam.vo.QuestionVo;

import java.util.List;

/**
 * @author szy
 * @implNote 2024/4/7 12:23
 */
public interface QuestionService extends IService<Question> {

    PageResponse<Question> getQuestion(String questionType, String questionBank, String questionContent, Integer pageNo, Integer pageSize);

    QuestionVo getQuestionVoById(Integer id);

    PageResponse<QuestionVo> getQuestionVoByIds(List<Integer> ids);

    void deleteQuestionByIds(String questionIds);

    void addQuestion(QuestionVo questionVo);

    void updateQuestion(QuestionVo questionVo);

}
