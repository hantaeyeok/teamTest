package com.spring.service;

import java.util.List;

import com.spring.dto.Notice;

public interface NoticeService {
    public List<Notice> getNoticeList();
    public Notice getNotice(int bno);
    public void insertNotice(Notice notice);
    public void updateNotice(Notice notice);
    public void deleteNotice(int bno);
}