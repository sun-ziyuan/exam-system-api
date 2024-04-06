package com.exam.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.exam.entity.Exam;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author szy
 * @implNote 2024/4/7 12:23
 */
@Repository
public interface ExamMapper extends BaseMapper<Exam> {
    List<Integer> selectExamRecordByUsername(String username);
}
