package com.tony.dao;

import java.util.List;
import com.tony.model.WordModel;

public interface WordDao {
	public int insertWord(WordModel wordModel);
	public int  updateWord(WordModel wordModel);
	public int  delWord(WordModel wordModel);	
	public List<WordModel> queryAllWord();
}
