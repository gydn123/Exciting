package com.exciting.index.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.exciting.dto.SelectedDTO;
import com.exciting.index.service.SelectedService;

@RestController
@RequestMapping("/indexapi/*")
public class IndexApiController {
	
	@Autowired
	SelectedService selectedService;
	
	@PostMapping("/check")
	public Map<String, Object> check(SelectedDTO dto) {
		Map<String, Object> map = new HashMap<String, Object>();
		int check = selectedService.check(dto);
		map.put("check", check);
		return map;
	}
	
	@PostMapping("/insertDelete")
	public Map<String, Object> insertDelete(SelectedDTO dto) {
		Map<String, Object> map = new HashMap<String, Object>();
		int check = selectedService.check(dto);
		if(check == 1) {
			selectedService.delete(dto);
			check = 0;
		} else {
			selectedService.insert(dto);
			check = 1;
		}
		map.put("check", check);
		return map;
	}
	
}
