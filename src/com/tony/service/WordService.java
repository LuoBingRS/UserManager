package com.tony.service;

import java.util.List;
import com.tony.model.WordModel;

public interface WordService {
	public int insertWord(WordModel wordModel);
	public int  updateWord(WordModel wordModel);
	public int  delWord(WordModel wordModel);	
	public List<WordModel> queryAllWord();
}
