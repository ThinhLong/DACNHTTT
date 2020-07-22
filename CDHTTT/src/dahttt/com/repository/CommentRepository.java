package dahttt.com.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import dahttt.com.model.Comment;

public interface CommentRepository extends JpaRepository<Comment, Long> {

}
