package com.tony.dao;

import java.util.List;
import com.tony.model.ColorModel;

public interface ColorDao {
	public List<ColorModel> queryAllColor();
	public int  updateColor(ColorModel colorModel);
	public List<ColorModel> queryColorBySampleid(int sampleid);
}
