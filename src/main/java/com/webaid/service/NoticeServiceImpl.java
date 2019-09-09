package com.webaid.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webaid.domain.NoticeVO;
import com.webaid.domain.SearchCriteria;
import com.webaid.domain.SearchCriteria5;
import com.webaid.persistence.NoticeDao;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	private NoticeDao dao;

	@Override
	public List<NoticeVO> selectAll() {
		return dao.selectAll();
	}

	@Override
	public NoticeVO selectOne(int no) {
		return dao.selectOne(no);
	}

	@Override
	public NoticeVO selectBefore(int no) {
		return dao.selectBefore(no);
	}

	@Override
	public NoticeVO selectAfter(int no) {
		return dao.selectAfter(no);
	}

	@Override
	public List<NoticeVO> selectTopNotice() {
		return dao.selectTopNotice();
	}

	@Override
	public void insert(NoticeVO vo) {
		dao.insert(vo);
	}

	@Override
	public void update(NoticeVO vo) {
		dao.update(vo);
	}

	@Override
	public void updateCnt(int no) {
		dao.updateCnt(no);
	}

	@Override
	public void updateUseState(NoticeVO vo) {
		dao.updateUseState(vo);
	}

	@Override
	public void delete(int no) {
		dao.delete(no);
	}

	@Override
	public List<NoticeVO> listSearch(SearchCriteria cri) throws Exception {
		return dao.listSearch(cri);
	}
	
	@Override
	public List<NoticeVO> listSearch5(SearchCriteria5 cri) throws Exception {
		// TODO Auto-generated method stub
		return dao.listSearch5(cri);
	}

	@Override
	public List<NoticeVO> listSearchAll(SearchCriteria cri) throws Exception {
		return dao.listSearchAll(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.listSearchCount(cri);
	}

	@Override
	public int listSearchCount5(SearchCriteria5 cri) throws Exception {
		return dao.listSearchCount5(cri);
	}

	

}
