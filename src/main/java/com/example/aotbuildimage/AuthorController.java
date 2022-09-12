package com.example.aotbuildimage;


import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AuthorController {

	private final JdbcTemplate jdbcTemplate;

	public AuthorController(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@GetMapping("/authors")
	private List<Author> queryAuthors() {
		List<Author> authors = jdbcTemplate.query("SELECT * FROM authors", Author.Mapper.INSTANCE);
		for (Author author : authors) {
			System.out.printf("Found author: %s%n", author);
		}
		return authors;
	}
}
