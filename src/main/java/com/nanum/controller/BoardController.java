package com.nanum.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {

	
	
	//나눔 요청 이동
	@RequestMapping("/board_request.nn")
	public String board_request(){
		System.out.println("board_request.nn");
		return "board.board_request";
	}
		
	//나눔 목록 이동
	@RequestMapping("/board_list.nn")
	public String board_list(){
		System.out.println("board_list.nn");
		return "index.board_list";          //index 폴더에 넣어둠 Tiles 경로
	}
}
