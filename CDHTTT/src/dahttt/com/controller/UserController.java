package dahttt.com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import dahttt.com.model.User;
import dahttt.com.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userSV;
//hien thị danh sach user
	@RequestMapping(value = "admin/user")
	public String showUser(Model model) {
		List<User> listUser = userSV.findAll();
		model.addAttribute("page", "user");
		model.addAttribute("listUser", listUser);
		return "ManagerUser";
	}
//hien thị form save user
	@RequestMapping(value = "admin/adduser")
	public String showAddUser(@ModelAttribute("user") User user) {
		return "admin_addeditUser";
	}
//luu du lieu
	@RequestMapping(value = "admin/saveUser")
	public String saveUser(@ModelAttribute("user") User user) {
		userSV.saveUser(user);
		return "redirect:user";
	}
//hien thị form edituser
	@RequestMapping(value = "admin/editUser")
	public String showEditUser(@Param("id") long id, Model model) {
		User user = userSV.findId(id);
		model.addAttribute("user", user);
		return "admin_addeditUser";
	}

}
