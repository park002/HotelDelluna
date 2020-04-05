package com.hotel.jaeho.Service;

import com.hotel.jaeho.DTO.ReservationDTO;

public interface ReservationService {
	public void reservation_number_people(ReservationDTO dto);

	public int RoomPrice(ReservationDTO dto);

	public void reservationInsert(ReservationDTO dto);

	public int DuplicateFind(ReservationDTO dto);

	public String PayCheck(String m_id);

	public void PayCheckUpdate(String number);
	
	public void ReservationDelete();
	
	public ReservationDTO ReservationSelect(String m_id);
	
	public String SearchPW(String m_id);
	
	
}
