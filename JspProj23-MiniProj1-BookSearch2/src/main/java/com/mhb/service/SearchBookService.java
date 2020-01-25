package com.mhb.service;

import java.util.List;

import com.mhb.dto.BookDTO;

public interface SearchBookService {
public List<BookDTO> searchBooks(String category)throws Exception;
}
