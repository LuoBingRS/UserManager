package com.tony.service;

import java.util.List;
import com.tony.model.ColorModel;

public interface ColorService {
	public List<ColorModel> queryAllColor();
	public int  updateColor(ColorModel colorModel);
	public List<ColorModel> queryColorBySampleid(int sampleid);
}
