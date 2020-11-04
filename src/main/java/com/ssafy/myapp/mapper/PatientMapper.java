package com.ssafy.myapp.mapper;

import java.util.List;

import com.ssafy.myapp.domain.PatientDto;


public interface PatientMapper {

	public int insert(PatientDto dto);
	public int check(String pno);
	public List<PatientDto> select();
	public PatientDto detail(String pno);
	public int delete(String pno);
}
