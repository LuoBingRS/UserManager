package com.tony.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tony.model.WordModel;
import com.tony.service.WordService;

@Controller
@RequestMapping("/wordModel")
public class WordController {
	@Autowired
	private WordService wordService;
	@RequestMapping(params = "wordlist")
	@ResponseBody
	public List<com.tony.model.WordModel> getWord(){
		List<com.tony.model.WordModel> wordList = wordService.queryAllWord();
		return wordList;
	}
		
}