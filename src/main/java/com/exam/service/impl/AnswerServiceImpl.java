package com.exam.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.exam.entity.Answer;
import com.exam.mapper.AnswerMapper;
import com.exam.service.AnswerService;
import org.springframework.stereotype.Service;

/**
 * @Date 2024/4/7 9:05
 * @created by szy
 */
@Service
public class AnswerServiceImpl extends ServiceImpl<AnswerMapper, Answer> implements AnswerService {
}
