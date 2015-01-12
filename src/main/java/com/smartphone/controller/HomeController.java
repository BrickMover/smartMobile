package com.smartphone.controller;

import org.springframework.mobile.device.Device;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @RequestMapping(value={"/", "/home"})
    public String home(Device device) {
        if (device.isMobile()) {
            System.out.println("Hello mobile user!");
        } else if (device.isTablet()) {
        	System.out.println("Hello tablet user!");
        } else {
        	System.out.println("Hello desktop user!");         
        }
        return "index";
    }
    
    @RequestMapping("/mail")
    public String mailJump() {
    	return "mail";
    }
    
    @RequestMapping("/contacts")
    public String contactsJump() {
    	return "contacts";
    }
    
    @RequestMapping("/calendar")
    public String calendarJump() {
    	return "calendar";
    }
    
    
    
}