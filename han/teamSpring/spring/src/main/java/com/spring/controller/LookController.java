package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/look/")
public class LookController {
	@RequestMapping("art.do")
    public String showArtPage() {
        return "look/art";
    }
	@RequestMapping("museum.do")
    public String showMuseumPage() {
        return "look/museum";
    }
}
