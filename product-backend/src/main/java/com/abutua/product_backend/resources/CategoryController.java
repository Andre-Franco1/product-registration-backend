package com.abutua.product_backend.resources;

import java.util.Arrays;
import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;

import com.abutua.product_backend.models.Category;

@RestController
@CrossOrigin
public class CategoryController {
    
    private List<Category> categories = Arrays.asList(
        new Category(1, "Category 1"),
        new Category(2, "Category 2"),
        new Category(3, "Category 3"),
        new Category(4, "Category 4"));
        
    @GetMapping("categories/{id}")
    public ResponseEntity<Category> getCategory(@PathVariable int id) {
        Category cat = categories.stream()
                .filter(c -> c.getId() == id)
                .findFirst()
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Category not found"));
        return ResponseEntity.ok(cat);
    }

    @GetMapping("categories")
    public List<Category> getCategories() {
        return categories;
    }
}
