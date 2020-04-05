package com.hotel.jaeho.DAO;

import com.hotel.jaeho.DTO.MemberDTO;

public interface MemberDAO {

	public MemberDTO duplicateCheck(String m_id);

	public void MemberInsert(MemberDTO dto);

	public String MemberLogin(MemberDTO dto);

}
