package dahttt.com.repository;



import org.springframework.data.jpa.repository.JpaRepository;


import dahttt.com.model.User;

public interface UserRepository extends JpaRepository<User, Long> {
	


}
