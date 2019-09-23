package com.webaid.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webaid.domain.SearchCriteria;
import com.webaid.domain.UserVO;
import com.webaid.persistence.UserDao;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao dao;

	@Override
	public UserVO selectOne(int no) {
		return dao.selectOne(no);
	}

	@Override
	public UserVO selectById(String id) {
		return dao.selectById(id);
	}

	@Override
	public void insert(UserVO vo) {
		dao.insert(vo);
	}

	@Override
	public void update(UserVO vo) {
		dao.update(vo);
	}

	@Override
	public void updateLoginCnt(int no) {
		dao.updateLoginCnt(no);
	}

	@Override
	public void delete(int no) {
		dao.delete(no);
	}

	@Override
	public List<UserVO> listSearchAll(SearchCriteria cri) {
		return dao.listSearchAll(cri);
	}

	@Override
	public int listSearchCountAll(SearchCriteria cri) {
		return dao.listSearchCountAll(cri);
	}

}
