package com.webaid.service;

import java.util.List;

import com.webaid.domain.HospitalTimeVO;

public interface HospitalTimeService {
	public List<HospitalTimeVO> selectAll();
	public HospitalTimeVO selectOne(int no);
	public void insert(HospitalTimeVO vo);
	public void update(HospitalTimeVO vo);
	public void delete(int no);
}
