package com.webaid.service;

import java.util.List;

import com.webaid.domain.NoticeVO;
import com.webaid.domain.SearchCriteria;
import com.webaid.domain.SearchCriteria5;

public interface NoticeService {
	public List<NoticeVO> selectAll();
	public NoticeVO selectOne(int no);
	public NoticeVO selectBefore(int no);
	public NoticeVO selectAfter(int no);
	public List<NoticeVO> selectTopNotice();
	public void insert(NoticeVO vo);
	public void update(NoticeVO vo);
	public void updateCnt(int no);
	public void updateUseState(NoticeVO vo);
	public void delete(int no);
	public List<NoticeVO> listSearch(SearchCriteria cri) throws Exception;
	public List<NoticeVO> listSearch5(SearchCriteria5 cri) throws Exception;
	public List<NoticeVO> listSearchAll(SearchCriteria cri) throws Exception;
	public int listSearchCount(SearchCriteria cri) throws Exception;
	public int listSearchCount5(SearchCriteria5 cri) throws Exception;
}
