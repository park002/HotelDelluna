package com.hotel.jaeho.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hotel.jaeho.DTO.NoticeDTO;

@Repository
public class NoticeDAOImpl implements NoticeDAO {

	@Autowired
	SqlSession sqlSession;

	private static final String namespace = "com.spring.jaeho.mybatis.mapper.NoticeMapper";

	@Override
	public void NoticeInsert(NoticeDTO dto) {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace +".NoticeInsert",dto);

	}
	@Override
	public List<NoticeDTO> NoticeSelect() {
		// TODO Auto-generated method stub
		
		return sqlSession.selectList(namespace+".NoticeList");
	}
}
