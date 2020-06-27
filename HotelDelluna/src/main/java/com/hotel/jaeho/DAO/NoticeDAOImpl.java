package com.hotel.jaeho.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

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
	public List<NoticeDTO> NoticeSelect(int start, int end, String Search, String Searchtext) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("Search", Search);
		map.put("Searchtext", Searchtext);
		return sqlSession.selectList(namespace + ".NoticeList", map);
	}

	@Override
	public void NoticeCountUpdate(int b_no) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + ".NoticeCountUpdate", b_no);
	}

	@Override
	public NoticeDTO SelectNotice(int b_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".SelectNotice", b_no);
	}

	@Override
	public int SelectCount(String Search, String Searchtext) {
		Map<String, String> map = new HashMap<String, String>();
		// TODO Auto-generated method stub
		map.put("Search", Search);
		map.put("Searchtext", Searchtext);
		Set<Map.Entry<String, String>> entries = map.entrySet();
		System.out.println("entries = " + entries);
		/*
		 * for (Map.Entry<String, String> tempEntry : entries) {
		 * System.out.println("getKey() = " + tempEntry.getKey() + ", getValue() = " +
		 * tempEntry.getValue()); }
		 */

		return sqlSession.selectOne(namespace + ".SelectCount", map);
	}

	@Override
	public void NoticeDelete(int b_no) {
		// TODO Auto-generated method stub
		sqlSession.delete(namespace + ".NoticeDelete", b_no);

	}

	@Override
	public void NoticeModify(NoticeDTO dto) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + ".NoticeModify", dto);

	}
}
