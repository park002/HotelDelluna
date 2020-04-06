package com.hotel.jaeho.Service;

import java.util.List;

import com.hotel.jaeho.DTO.NoticeDTO;

public interface NoticeService {
	public void NoticeInsert(NoticeDTO dto);

	public List<NoticeDTO> NoticeSelect();

}
