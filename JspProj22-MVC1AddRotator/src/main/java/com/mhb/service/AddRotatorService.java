package com.mhb.service;

import java.util.Random;

public class AddRotatorService {
	private int count;
	private String urls[] = { "https://raymondnext.com/", "http://onlyvimal.co.in/", "http://www.siyaram.com/",
			"https://www.peterengland.com/", "https://www.ramrajcotton.in/" };
	private String images[] = { "ramraj.jpg", "onlyvimal.jpg", "siyarams.jpg", "peterengland.jpg", "ramraj.jpg"

	};
	public String getUrl(){
		return urls[count];
	}
	public String getImage(){
		return images[count];
	}
	public void nextAdvertisement(){
		Random rad=null;
		rad=new Random();
		count=rad.nextInt(5);
	}
}
