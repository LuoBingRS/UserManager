package com.tony.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tony.dao.WordDao;
import com.tony.model.WordModel;
import com.tony.service.WordService;

@Service("WordService")
public class WordServiceImpl implements WordService{
	
	@Autowired
	private WordDao worddao;

	@Override
	public int insertWord(WordModel wordModel) {
		// TODO Auto-generated method stub
		return worddao.insertWord(wordModel);
	}

	@Override
	public int updateWord(WordModel wordModel) {
		// TODO Auto-generated method stub
		return worddao.updateWord(wordModel);
	}

	@Override
	public int delWord(WordModel wordModel) {
		// TODO Auto-generated method stub
		return worddao.delWord(wordModel);
	}

	@Override
	public List<WordModel> queryAllWord() {
		// TODO Auto-generated method stub
		return worddao.queryAllWord();
	}
	
}