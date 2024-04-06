package com.exam.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.exam.dto.StudentExamRecordExcelDto;
import com.exam.entity.Exam;
import com.exam.vo.*;

import java.util.List;

/**
 * @author szy
 * @implNote 2024/4/7 12:23
 */
public interface ExamService extends IService<Exam> {

    PageResponse<Exam> getExamPage(ExamQueryVo examQueryVo, TokenVo tokenVo);

    AddExamByQuestionVo getExamInfoById(Integer examId);

    void operationExam(Integer type, String ids);

    void addExamByBank(AddExamByBankVo addExamByBankVo);

    void addExamByQuestionList(AddExamByQuestionVo addExamByQuestionVo);

    void updateExamInfo(AddExamByQuestionVo addExamByQuestionVo);

    List<String> getExamPassRateEchartData();

    List<String> getExamNumbersEchartData();

    List<StudentExamRecordExcelDto> getAllStudentScoreByExamId(Integer examId);

}
