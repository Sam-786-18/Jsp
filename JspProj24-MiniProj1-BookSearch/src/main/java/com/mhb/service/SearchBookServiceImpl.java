package com.mhb.service;

import java.util.ArrayList;
import java.util.List;

import com.mhb.bo.BookBO;
import com.mhb.dao.SearchBookDAOImpl;
import com.mhb.dao.SearchBookDAOs;
import com.mhb.dto.BookDTO;

public class SearchBookServiceImpl implements SearchBookService {

	@Override
	public List<BookDTO> searchBooks(String category) throws Exception {
		// TODO Auto-generated method stub
		SearchBookDAOs dao=null;
		List<BookBO> listBO=null;
		List<BookDTO> listDTO=new ArrayList<>();
		//use DAO
		dao=new SearchBookDAOImpl();
		listBO=dao.findBooks(category);
		
		listBO.forEach(bo->{
			BookDTO dto=new BookDTO();
			dto.setBookId(bo.getBookId());
			dto.setBookName(bo.getBooName());
			dto.setAuthorName(bo.getAuthorname());
		dto.setStatus(bo.getStatus());
		dto.setCategory(bo.getCategory());
		listDTO.add(dto);
		});
		return listDTO;
	}

}
