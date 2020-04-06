package com.hotel.jaeho.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotel.jaeho.DAO.NoticeDAO;
import com.hotel.jaeho.DTO.NoticeDTO;

@Service
public class NoticeServiceImpl implements NoticeService {
	@Autowired
	NoticeDAO dao;
	
	@Override
	public void NoticeInsert(NoticeDTO dto) {
		// TODO Auto-generated method stub
		dao.NoticeInsert(dto);
	}
	@Override
	public List<NoticeDTO> NoticeSelect() {
		// TODO Auto-generated method stub
		return dao.NoticeSelect();
	}

}
