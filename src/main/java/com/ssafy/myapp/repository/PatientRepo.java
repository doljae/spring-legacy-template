package com.ssafy.myapp.repository;

import java.util.List;

import com.ssafy.myapp.domain.PatientDto;

public interface PatientRepo {
	public List<PatientDto> selectAll();
	
	public PatientDto select(String num);
	
	public int insert(PatientDto patient);
	
	
	public int delete(String nums);
	
}
