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
	public List<NoticeDTO> NoticeSelect(int start,int end,String Search,String Searchtext) {
		// TODO Auto-generated method stub
		
		return dao.NoticeSelect(start,end,Search,Searchtext);
	}
	@Override
	public void NoticeCountUpdate(int b_no) {
		// TODO Auto-generated method stub
		dao.NoticeCountUpdate(b_no);
	}
	@Override
	public NoticeDTO SelectNotice(int b_no) {
		// TODO Auto-generated method stub
		return dao.SelectNotice(b_no);
	}
	@Override
	public int SelectCount(String Search, String Searchtext) {
		// TODO Auto-generated method stub
		return dao.SelectCount(Search,Searchtext);
	}

}
