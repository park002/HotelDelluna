package com.hotel.jaeho;

import java.util.regex.Pattern;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hotel.jaeho.DTO.MemberDTO;
import com.hotel.jaeho.Service.MemberService;

@Controller
@RequestMapping("/member/")
public class MemberController {

	@Autowired
	MemberService service;

	@RequestMapping("/LoginLogOut")
	public String LoginLogout() {
		return "/member/LoginLogOut";
	}

	@RequestMapping("/MemberInsert")
	public String MemberInsert() {
		return "/member/MemberInsert";
	}
	
    @ResponseBody
	@RequestMapping(value="/memLogin", method=RequestMethod.POST)
	public String MemberLogin(MemberDTO dto,HttpSession session) {
	    String member = service.MemberLogin(dto);
        session.setAttribute("m_id", dto.getM_id());
	    if(member!=null) { 
	         return "ok";
	    }else { 
	      return "x";
	    }
	}
	@RequestMapping(value = "/family", method = RequestMethod.POST)
	public String MemberFamily(MemberDTO dto) {
        service.MemberInsert(dto);
		return "/member/JoinSuccess";
	}

	private static final Pattern ID_REGEX = Pattern.compile("^[a-zA-Z]{1}[a-zA-Z0-9_]{4,11}$");
	@ResponseBody
	@RequestMapping(value = "/duplicate", method = RequestMethod.POST)
	public int IdDuplicate(@RequestParam("m_id") String m_id) {
		// 시작은 영문으로만,특수문자,공백 없는 영문, 숫자 포함 5-12자 이하로 해주시기 바랍니다.
		MemberDTO duplicateCheck = service.duplicateCheck(m_id);
		if (duplicateCheck == null) { 
			if (ID_REGEX.matcher(m_id).matches()) {
				return 1;
			} else {
				return -1;
			}
		} else {
			return 0;
		}
	}
	@RequestMapping(value="/Logout", method=RequestMethod.GET)
	public String Logout(HttpSession session)  {
		 session.invalidate();
		return "/index";
		
	}
}
