package com.hotel.jaeho.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotel.jaeho.DAO.MemberDAO;
import com.hotel.jaeho.DTO.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService { //스프링 빈 생성
	
 @Autowired
  MemberDAO dao;
	
	@Override
		public MemberDTO duplicateCheck(String m_id) {
			// TODO Auto-generated method stub
			return dao.duplicateCheck(m_id);
		}
	@Override
		public void MemberInsert(MemberDTO dto) {
			 dao.MemberInsert(dto);
		}
	@Override
		public String MemberLogin(MemberDTO dto) {
			// TODO Auto-generated method stub
			return dao.MemberLogin(dto);
		}
}
