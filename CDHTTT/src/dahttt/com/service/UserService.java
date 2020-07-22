package dahttt.com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dahttt.com.model.User;
import dahttt.com.repository.UserRepository;

@Service
public class UserService {

	@Autowired
	private UserRepository UserRP;

	public boolean saveUser(User user) {
		return UserRP.save(user) != null;
	}

	public List<User> findAll() {
		return UserRP.findAll();
	}

	public User findId(long id) {
		return UserRP.findOne(id);
	}

	
}
