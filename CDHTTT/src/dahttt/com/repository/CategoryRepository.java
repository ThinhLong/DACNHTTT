package dahttt.com.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import dahttt.com.model.Category;

public interface CategoryRepository extends JpaRepository<Category, Long> {

}
