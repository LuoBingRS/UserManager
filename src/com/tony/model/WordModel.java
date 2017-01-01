package com.tony.model;

import java.io.Serializable;

public class WordModel implements Serializable {
	private int wordid;
	private String word;
	public int getWordid() {
		return wordid;
	}
	public void setWordid(int wordid) {
		this.wordid = wordid;
	}
	public String getWord() {
		return word;
	}
	public void setWord(String word) {
		this.word = word;
	}

	
}
