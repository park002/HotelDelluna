package com.hotel.jaeho.DAO;

import java.util.List;

import com.hotel.jaeho.DTO.NoticeDTO;

public interface NoticeDAO {

	public void NoticeInsert(NoticeDTO dto);
	
	public List<NoticeDTO> NoticeSelect ();
	

}
