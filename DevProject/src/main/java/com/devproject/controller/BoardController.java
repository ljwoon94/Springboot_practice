package com.devproject.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.devproject.domain.Board;

import lombok.extern.java.Log;

@Log
@RestController
@RequestMapping("/board")
public class BoardController {
	@GetMapping(value = "/get", params="register")
	// 게시글 작성 화면 이동
	public String registerForm() {
		log.info("registForm");
		return "success";
	}

	@PostMapping(value = "/post", params="register")
	// 게시글 작성
	public String register() {
		log.info("regist");
		return "success";
	}

	@GetMapping(value = "/get", params="modify")
	// 게시글 수정 화면 이동
	public String modifyForm() {
		log.info("modifyForm");
		return "success";
	}

	@PutMapping(value= "/{boardNo}")
	public ResponseEntity<String> modify(@PathVariable("boardNo") int boardNo,@RequestBody Board board){
		ResponseEntity<String> entity = new ResponseEntity<String>("SUCCESS",HttpStatus.OK);
		return entity;
	}
	
	@PutMapping(value= "/{boardNo}", headers="X-HTTP-Method-Override=Put")
	public ResponseEntity<String> modifyByHeader(@PathVariable("boardNo") int boardNo,@RequestBody Board board){
		ResponseEntity<String> entity = new ResponseEntity<String>("SUCCESS",HttpStatus.OK);
		return entity;
	}

	@GetMapping(value = "/get", params="remove")
	// 게시글 삭제 화면 이동
	public String removeForm() {
		log.info("removeForm");
		return "success";
	}
	
	@PostMapping(value = "/post", params="remove")
	// 게시글 삭제
	public String remove() {
		log.info("remove");
		return "success";
	}

	@GetMapping(value = "/list")
	// 게시글 목록
	public String list() {
		log.info("success");
		return "board/list";
	}

	@RequestMapping(value = "/read/{boardNo}", params="read")
	// 게시글 읽기
	// 게시글 번호는 '/경로/{게시글 번호 변수}'
	public String read(@PathVariable("boardNo") int boardNo) {
		log.info("read boardNo" + boardNo);

		return "board/read";
	}

	@RequestMapping(value = "/read2/{no}")
	// 게시글 읽기
	// 게시글 번호는 '/경로/{게시글 번호 변수}'
	public String read2(@PathVariable("no") int boardNo) {
		log.info("read2 boardNo" + boardNo);

		return "board/read";
	}
}
