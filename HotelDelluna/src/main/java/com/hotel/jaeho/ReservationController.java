package com.hotel.jaeho;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hotel.jaeho.DTO.ReservationDTO;
import com.hotel.jaeho.Service.ReservationService;
@Controller
@RequestMapping("/reservation/")
public class ReservationController {
	@Autowired
	ReservationService service;
	@RequestMapping(value = "/r", method = RequestMethod.GET)
	public String reservation(HttpSession session, Model model) {
		String confirmation_payment = service.PayCheck((String) session.getAttribute("m_id"));
		model.addAttribute("confirmation_payment", confirmation_payment);
		return "/reservation/reservation";
	}
	@RequestMapping(value = "/reservation1", method = RequestMethod.POST)
	public String reservation(ReservationDTO dto, HttpSession session, Model model) throws ParseException {
		dto.setM_id((String) session.getAttribute("m_id"));
		int duplicateFind = service.DuplicateFind(dto);
		if (duplicateFind >= 1) {
			model.addAttribute("duplicateFind", duplicateFind);
			return "/reservation/ReservationCheck";
		}
		String ReservationNumber = UUID.randomUUID().toString(); // UUID 생성 예약번호로 사용할 것
		dto.setReservation_number(ReservationNumber);
		service.reservation_number_people(dto);
		int RoomPrice = service.RoomPrice(dto);
		// 체크인 체크아웃 날짜간 차이를 구한다
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		Date beginDate = formatter.parse(dto.getReservation_data_in()); // 체크인
		Date endDate = formatter.parse(dto.getReservation_data_out()); // 체크아웃
		long diff = endDate.getTime() - beginDate.getTime(); // 체크아웃 - 체크인 시간차이 뺴기
		long diffDays = diff / (24 * 60 * 60 * 1000) + 1;// 날짜 계산 하루예약은 0이므로 +1해준다.
		// 날짜 차이 * 룸 가격
		int price = RoomPrice * (int) diffDays;
		dto.setPrice(price);
		service.reservationInsert(dto);
		model.addAttribute("dto", dto);
		return "/reservation/ReservationCheck";
	}
	@RequestMapping(value = "/ReservationPay", method = RequestMethod.GET)
	public String ReservationPay(@RequestParam("number") String number) {
		service.PayCheckUpdate(number);
		return "/index";
	}
	@RequestMapping(value = "/ReservationSelect", method = RequestMethod.GET)
	public String ReservationSelect(HttpSession session, ReservationDTO dto, Model model) {
		String confirmation_payment = service.PayCheck((String) session.getAttribute("m_id"));
		dto = service.ReservationSelect((String) session.getAttribute("m_id"));
		model.addAttribute("confirmation_payment", confirmation_payment);
		model.addAttribute("dto", dto);
		return "/reservation/ReservationSelect";

	}
	@RequestMapping(value = "/ReservationCancel", method = RequestMethod.POST)
	public String ReservationCancel() {
		service.ReservationDelete();
		return "/index";
	}
	@ResponseBody
	@RequestMapping(value = "/ReservationPasswordCheck", method = RequestMethod.POST)
	public boolean PasswordCheck(@RequestParam("m_id") String m_id, @RequestParam("m_password") String m_password) {
		String SearchPW = service.SearchPW(m_id);
		if (SearchPW.equals(m_password)) {
			service.ReservationDelete();
			return true;
		} else
			return false;
	}

}
