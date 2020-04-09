package com.hotel.jaeho.Service;

import java.util.List;

import com.hotel.jaeho.DTO.NoticeDTO;
import com.hotel.jaeho.page.Pagination;

public interface NoticeService {
	public void NoticeInsert(NoticeDTO dto);

	public List<NoticeDTO> NoticeSelect(int start,int end,String Search,String Searchtext);

	public void NoticeCountUpdate(int b_no);

	public NoticeDTO SelectNotice(int b_no);

	public int SelectCount(String Search, String Searchtext);
	
	public void NoticeDelete(int b_no);
	
	public void NoticeModify(NoticeDTO dto);
	

}
