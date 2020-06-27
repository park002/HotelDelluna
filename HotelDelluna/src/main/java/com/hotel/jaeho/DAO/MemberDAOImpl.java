package com.hotel.jaeho.DAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.hotel.jaeho.DTO.MemberDTO;

@Component
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	SqlSession sqlSession;

	private static String namespace = "com.spring.jaeho.mybatis.mapper.MemberMapper";

	@Override
	public MemberDTO duplicateCheck(String m_id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace +".duplicateCheck",m_id);
	}
	@Override
	public void MemberInsert(MemberDTO dto) {
		// TODO Auto-generated method stub
		  sqlSession.selectOne(namespace+".MemberInsert", dto);
	}
	@Override
	public String MemberLogin(MemberDTO dto) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".MemberLogin",dto);
	}
}
