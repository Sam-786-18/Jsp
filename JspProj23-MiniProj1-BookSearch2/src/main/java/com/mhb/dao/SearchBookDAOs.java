package com.mhb.dao;

import java.util.List;

import com.mhb.bo.BookBO;

public interface SearchBookDAOs {
public List<BookBO> findBooks(String category) throws Exception;
}
