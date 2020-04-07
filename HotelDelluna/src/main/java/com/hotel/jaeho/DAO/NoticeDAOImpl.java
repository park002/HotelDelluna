package com.hotel.jaeho.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
		sqlSession.insert(namespace + ".NoticeInsert", dto);

	}

	@Override
	public List<NoticeDTO> NoticeSelect(int start,int end) {
		// TODO Auto-generated method stub
        Map<String,Object>map = new HashMap<String,Object>();
        map.put("start",start);
        map.put("end",end);
		return sqlSession.selectList(namespace + ".NoticeList",map);
	}

	@Override
	public void NoticeCountUpdate(int b_no) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + ".NoticeCountUpdate", b_no);
	}
	@Override
	public NoticeDTO SelectNotice(int b_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".SelectNotice",b_no);
	}
	@Override
	public int SelectCount() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".SelectCount");
	}
}
