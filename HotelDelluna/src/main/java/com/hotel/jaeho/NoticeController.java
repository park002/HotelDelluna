package com.hotel.jaeho;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hotel.jaeho.DTO.NoticeDTO;
import com.hotel.jaeho.Service.NoticeService;
import com.hotel.jaeho.page.Pagination;

@Controller
@RequestMapping("/notice/")
public class NoticeController {

	@Autowired
	NoticeService service;

//공지사항 클릭 했을 경우 
	@RequestMapping(value = "/NoticeList", method = RequestMethod.GET)
	public ModelAndView Notice(@RequestParam(value ="curPage",required = false,defaultValue = "1") int curPage) { //총 레코드 갯수 구하고 , 현재페이지도 줘야하고 
		ModelAndView mav = new ModelAndView();
		int count = service.SelectCount();
    	Pagination page = new Pagination(count,curPage);
		mav.setViewName("/notice/NoticeList");
		Map<String,Object> map  = new HashMap<String, Object>();
		int start = page.getPageBegin(); //1
		int end = page.getPageScale(); //
		List<NoticeDTO> list = service.NoticeSelect(start,end);
	    mav.addObject("page",page);
		mav.addObject("list", list);
		return mav;
	}

	@RequestMapping(value = "/NoticeContent", method = RequestMethod.GET)
	public ModelAndView NoticeContent(@RequestParam("b_no") int b_no, NoticeDTO dto) {
		ModelAndView mav = new ModelAndView();
		service.NoticeCountUpdate(b_no);
		dto = service.SelectNotice(b_no);
		mav.addObject("dto", dto);
		mav.setViewName("/notice/NoticeContent");
		return mav;
	}

	@RequestMapping("/NoticeWrite")
	public String NoticeWrite() {
		return "/notice/NoticeWrite";
	}

	@RequestMapping(value = "/Write", method = RequestMethod.POST)
	public String NoticeWrite(NoticeDTO dto) {
		service.NoticeInsert(dto);
		return "redirect:/notice/NoticeList"; // redirect 해줘야 한다

	}
}
