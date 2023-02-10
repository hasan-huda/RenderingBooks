package com.hasan.rendering.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.hasan.rendering.models.Book;
import com.hasan.rendering.services.BookService;

@Controller
public class BooksController {
	
	@Autowired
	BookService bookService;
	@GetMapping("/books/{bookId}")
	public String displayOne(Model model,@PathVariable("bookId") Long bookId) {
		Book book = bookService.findBook(bookId);
		model.addAttribute("book",book);
		return "show.jsp";
	}
}