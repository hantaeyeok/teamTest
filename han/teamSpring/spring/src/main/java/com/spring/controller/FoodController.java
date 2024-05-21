package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/food/")
public class FoodController {
	
	@RequestMapping("fmain.do")
    public String showFmainPage() {
        return "food/fmain";
    }
	@RequestMapping("food.do")
    public String showFoodPage() {
        return "food/food";
    }
	@RequestMapping("hotel.do")
    public String showHotelPage() {
        return "food/hotel";
    }
	@RequestMapping("subhotel1.do")
    public String showSubHotel1() {
        return "food/subhotel1";
    }
}
