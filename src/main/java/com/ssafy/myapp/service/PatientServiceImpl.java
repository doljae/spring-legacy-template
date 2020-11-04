package com.ssafy.myapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.myapp.domain.PatientDto;
import com.ssafy.myapp.repository.PatientRepo;

@Service
public class PatientServiceImpl implements PatientService {
	
	@Autowired
	private PatientRepo repo;
	
	@Override
	public int register(PatientDto dto) {
		return repo.insert(dto);
	}
	
		
	@Override
	public List<PatientDto> getList() {
		return repo.selectAll();
	}
	
	@Override
	public PatientDto getPatient(String pno) {
		return repo.select(pno);
	}
	
	@Override
	public int remove(String pno) {
		return repo.delete(pno);
	}

	
}
