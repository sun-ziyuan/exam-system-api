package com.exam.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.exam.entity.Notice;
import org.springframework.stereotype.Repository;

/**
 * @author szy
 * @implNote 2024/4/7 12:23
 */
@Repository
public interface NoticeMapper extends BaseMapper<Notice> {

    // 将所有公告设置为历史公告
    boolean setAllNoticeIsHistoryNotice();

}
