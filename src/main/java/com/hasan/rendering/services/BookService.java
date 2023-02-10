package com.hasan.rendering.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.hasan.rendering.models.Book;
import com.hasan.rendering.repositories.BookRepository;

@Service
public class BookService {
	private final BookRepository bookRepository;
	
	public BookService(BookRepository bookRepository) {
		this.bookRepository = bookRepository;
	}
	public List<Book> allBooks(){
		return bookRepository.findAll();
	}
	public Book createBook(Book b) {
	        return bookRepository.save(b);
	}
	public Book updateBook(Book b) {
        return bookRepository.save(b);
}
	public void deleteBook(Long id) {
		bookRepository.deleteById(id);
	}
	    // retrieves a book
	    public Book findBook(Long id) {
	        Optional<Book> optionalBook = bookRepository.findById(id);
	        if(optionalBook.isPresent()) {
	            return optionalBook.get();
	        } else {
	            return null;
	        }
	    }
}