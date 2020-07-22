package dahttt.com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dahttt.com.model.Comment;
import dahttt.com.service.CommentService;

@Controller
public class CommentContoller {

	@Autowired
	private CommentService commentSV;

	@RequestMapping(value = "admin/comment")
	public String showComment(Model model) {
		List<Comment> listcomment = commentSV.findAll();
		model.addAttribute("listcomment", listcomment);
		return "ManagerComment";

	}

	@RequestMapping(value = "admin/deleteComment")
	public String deleteComment(@Param("id") long id) {
		commentSV.delete(id);
		return "redirect:comment";
	}
	

}
