package com.webaid.persistence;

import java.util.List;

import com.webaid.domain.SearchCriteria;
import com.webaid.domain.UserVO;

public interface UserDao {
	public UserVO selectOne(int no);
	public void insert(UserVO vo);
	public void update(UserVO vo);
	public void updateLoginCnt(int no);
	public void delete(int no);
	public List<UserVO> listSearchAll(SearchCriteria cri);
	public int listSearchCountAll(SearchCriteria cri);
}
