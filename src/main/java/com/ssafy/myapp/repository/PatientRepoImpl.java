package com.ssafy.myapp.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ssafy.myapp.domain.PatientDto;

@Repository
public class PatientRepoImpl implements PatientRepo{//DAOIMPL

	@Autowired
	SqlSession sqlSession;
	String ns = "patient";
	
	@Override
	public List<PatientDto> selectAll()  {
		return sqlSession.selectList( "patient.selectAll");//SELECTaLL. 결과가 여러개
	}

	@Override
	public PatientDto select(String num)  {
		return sqlSession.selectOne(ns + ".select", num);
	}

	@Override
	public int insert(PatientDto patient)  {
		return sqlSession.insert(ns + ".insert", patient);
	}

	@Override
	public int delete(String num)  {
		return sqlSession.delete(ns + ".delete", num);
	}
	

}
