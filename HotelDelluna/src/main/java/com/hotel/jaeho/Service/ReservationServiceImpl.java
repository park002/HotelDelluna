package com.hotel.jaeho.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotel.jaeho.DAO.ReservationDAO;
import com.hotel.jaeho.DTO.ReservationDTO;

@Service
public class ReservationServiceImpl implements ReservationService {
	@Autowired
	ReservationDAO dao;

	@Override
	public void reservation_number_people(ReservationDTO dto) {
		// TODO Auto-generated method stub
		dao.reservation_number_people(dto);
	}

	@Override
	public int RoomPrice(ReservationDTO dto) {
		// TODO Auto-generated method stub
		return dao.RoomPrice(dto);
	}

	@Override
	public void reservationInsert(ReservationDTO dto) {
		// TODO Auto-generated method stub
		dao.reservationInsert(dto);
	}

	@Override
	public int DuplicateFind(ReservationDTO dto) {
		// TODO Auto-generated method stub
		return dao.DuplicateFind(dto);
	}

	@Override
	public String PayCheck(String m_id) {
		// TODO Auto-generated method stub
		return dao.PayCheck(m_id);
	}

	@Override
	public void PayCheckUpdate(String number) {
		// TODO Auto-generated method stub
		dao.PayCheckUpdate(number);

	}
	@Override
	public void ReservationDelete() {
		// TODO Auto-generated method stub
	   dao.ReservationDelete();
		
	}
	@Override
	public ReservationDTO ReservationSelect(String m_id) {
		// TODO Auto-generated method stub
		return dao.ReservationSelect(m_id);
	}
	
	@Override
	public String SearchPW(String m_id) {
		// TODO Auto-generated method stub
		return dao.SearchPW(m_id);
	}

}
