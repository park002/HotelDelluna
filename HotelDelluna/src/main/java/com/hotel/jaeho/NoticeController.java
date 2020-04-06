package com.hotel.jaeho;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hotel.jaeho.DTO.NoticeDTO;
import com.hotel.jaeho.Service.NoticeService;

@Controller
@RequestMapping("/notice/")
public class NoticeController {

	@Autowired
	NoticeService service;

//공지사항 클릭 했을 경우 
	@RequestMapping(value = "/NoticeList", method = RequestMethod.GET)
	public ModelAndView Notice() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/notice/NoticeList");
		List<NoticeDTO> list = service.NoticeSelect();
		mav.addObject("list", list);
		return mav;
	}
@RequestMapping(value="/NoticeContent",method=RequestMethod.GET)
	public String NoticeContent(@RequestParam ("b_no") int b_no) {
		
		return null;

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
