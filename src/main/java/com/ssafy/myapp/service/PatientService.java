package com.ssafy.myapp.service;

import java.util.List;

import com.ssafy.myapp.domain.PatientDto;//vo

public interface PatientService {

	public List<PatientDto> getList();//selectAll( pno, name, age, cname)
	public PatientDto getPatient(String pno);//selectOne( pno, name, age, cname)
	public int register(PatientDto dto);//insert
	public int remove(String pno);//delete
}
