package com.exam.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.exam.entity.QuestionBank;
import com.exam.vo.BankHaveQuestionSum;
import com.exam.vo.PageResponse;
import com.exam.vo.QuestionVo;

import java.util.List;

/**
 * @author szy
 * @implNote 2024/4/7 12:23
 */
public interface QuestionBankService extends IService<QuestionBank> {

    PageResponse<BankHaveQuestionSum> getBankHaveQuestionSumByType(String bankName, Integer pageNo, Integer pageSize);

    List<QuestionVo> getQuestionsByBankId(Integer bankId);

    List<QuestionVo> getQuestionByBankIdAndType(Integer bankId, Integer type);

    List<QuestionBank> getAllQuestionBanks();

    void addQuestionToBank(String questionIds, String banks);

    void removeBankQuestion(String questionIds, String banks);

    void deleteQuestionBank(String ids);

    void addQuestionBank(QuestionBank questionBank);
}
