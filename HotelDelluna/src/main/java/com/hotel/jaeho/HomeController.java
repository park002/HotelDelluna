package com.hotel.jaeho;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class HomeController {
	@RequestMapping( "/")
	public String home() {
		return "/index";
	}
	@RequestMapping("/contact-1")
	public String Contact() {
		return "/contact-1";
	}
	@RequestMapping("/menu-item")
	public String menuitem() {
		return "/menu-item";
	}
	@RequestMapping("/menu-item2")
	public String menuitem2() {
		return "/menu-item2";
	}
	@RequestMapping("/menu-item3")
	public String menuitem3() {
		return "/menu-item3";
	}
	@RequestMapping("/suite-1")
	public String suite1() {
		return "/suite-1";
	}
	@RequestMapping("/suite-2")
	public String suite2() {
		return "/suite-2";
	}
	@RequestMapping("/dining-1")
	public String dining1() {
		return "/dining-1";
	}
	@RequestMapping("/deluxe-1")
	public String deluxe1() {
		return "/deluxe-1";
	}
	@RequestMapping("/deluxe-2")
	public String deluxe2() {
		return "/deluxe-2";
	}
	@RequestMapping("/hotel-About-Us")
	public String hotelAboutUs() {
		return "/hotel-About-Us";
	}
	@RequestMapping("/Location")
	public String Location() {
		return "/Location";
	}
}
