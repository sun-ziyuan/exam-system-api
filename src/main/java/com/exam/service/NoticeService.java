package com.exam.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.exam.entity.Notice;
import com.exam.vo.PageResponse;

/**
 * @author szy
 * @implNote 2024/4/7 12:23
 */
public interface NoticeService extends IService<Notice> {
    // 将所有公告设置为历史公告
    boolean setAllNoticeIsHistoryNotice();

    String getCurrentNotice();

    PageResponse<Notice> getAllNotices(String content, Integer pageNo, Integer pageSize);

    void publishNotice(Notice notice);

    void deleteNoticeByIds(String noticeIds);

    void updateNotice(Notice notice);
}
