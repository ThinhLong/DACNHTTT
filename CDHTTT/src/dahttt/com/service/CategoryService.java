package dahttt.com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dahttt.com.model.Category;
import dahttt.com.repository.CategoryRepository;

@Service
public class CategoryService {
	@Autowired
	private CategoryRepository categoryRP;

	public boolean saveCategory(Category category) {
		return categoryRP.save(category) != null;
	}

	public List<Category> findAll() {
		return categoryRP.findAll();
	}

	public Category findId(long id) {
		return categoryRP.findOne(id);
	}
}
