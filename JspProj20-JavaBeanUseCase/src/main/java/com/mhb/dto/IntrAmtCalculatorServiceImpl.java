package com.mhb.dto;

import com.mhb.service.IntrAmtCalculatrsDTO;

public class IntrAmtCalculatorServiceImpl implements IntrAmtCalculatorServices {
	
	
public void calCulatrAmt(IntrAmtCalculatrsDTO dto){
double intrAmt;	
intrAmt=(dto.getpAmt()*dto.getTime()*dto.getRate())	/100.0;

dto.setIntrAmt(intrAmt);
}
}
