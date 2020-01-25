package com.mhb.dto;

import java.io.Serializable;

public class BookDTO implements Serializable {
private Long bookId;
private String bookName;
private String authorName;
private String status;
private String category;

public Long getBookId() {
	return bookId;
}
public void setBookId(Long bookId) {
	this.bookId = bookId;
}
public String getBookName() {
	return bookName;
}
public void setBookName(String bookName) {
	this.bookName = bookName;
}
public String getAuthorName() {
	return authorName;
}
public void setAuthorName(String authorName) {
	this.authorName = authorName;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
public String getCategory() {
	return category;
}
public void setCategory(String category) {
	this.category = category;
}


}
