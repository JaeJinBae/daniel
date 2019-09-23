package com.webaid.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webaid.domain.SearchCriteria;
import com.webaid.domain.UserVO;

@Repository
public class UserDaoImpl implements UserDao {

	private static final String namespace = "com.webaid.mappers.UserMapper";

	@Autowired
	private SqlSession session;
	
	@Override
	public UserVO selectOne(int no) {
		return session.selectOne(namespace+".selectOne", no);
	}

	@Override
	public void insert(UserVO vo) {
		session.insert(namespace+".insert", vo);
	}

	@Override
	public void update(UserVO vo) {
		session.update(namespace+".update", vo);
	}

	@Override
	public void updateLoginCnt(int no) {
		session.update(namespace+".updateLoginCnt", no);
	}

	@Override
	public void delete(int no) {
		session.delete(namespace+".delete", no);
	}

	@Override
	public List<UserVO> listSearchAll(SearchCriteria cri) {
		return session.selectList(namespace+".listSearchAll", cri);
	}

	@Override
	public int listSearchCountAll(SearchCriteria cri) {
		return session.selectOne(namespace+".listSearchCountAll", cri);
	}

}
