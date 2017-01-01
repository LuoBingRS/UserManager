package com.tony.model;

import java.io.Serializable;

public class ColorModel implements Serializable {
	private int sampleid;
	private String samplename;
	private String hue;
	private String saturation;
	private String value;
	public int getSampleid() {
		return sampleid;
	}
	public void setSampleid(int sampleid) {
		this.sampleid = sampleid;
	}
	public String getSamplename() {
		return samplename;
	}
	public void setSamplename(String samplename) {
		this.samplename = samplename;
	}
	public String getHue() {
		return hue;
	}
	public void setHue(String hue) {
		this.hue = hue;
	}
	public String getSaturation() {
		return saturation;
	}
	public void setSaturation(String saturation) {
		this.saturation = saturation;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
}