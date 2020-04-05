package com.hotel.jaeho.Service;

import com.hotel.jaeho.DTO.MemberDTO;

public interface MemberService {
	
	public MemberDTO duplicateCheck(String m_id);
	
	public void MemberInsert(MemberDTO dto);
	
	public String MemberLogin(MemberDTO dto);
}
