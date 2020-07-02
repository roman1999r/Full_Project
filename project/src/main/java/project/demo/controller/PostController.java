package project.demo.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import project.demo.entity.Post;
import project.demo.entity.User;
import project.demo.service.Impl.PostServiceImpl;
import project.demo.service.UserService;

import java.util.Collections;
import java.util.Date;
import java.util.List;

@Controller
public class PostController {

    @Autowired
    private PostServiceImpl postServiceImpl;

    @Autowired
    private UserService userService;


    @GetMapping("/store/{id}")
    public String post(
            @PathVariable(name = "id") Long id,
            Model model) {
        Iterable<Post> post = postServiceImpl.getAllByWhoUserId(userService.getLoginUser().getId());
        Collections.reverse((List<Post>) post);
        model.addAttribute("post", post);

        Iterable<Post> posts = postServiceImpl.getAllByWhomUserId(id);
        Collections.reverse((List<Post>) posts);
        model.addAttribute("posts", posts);

//        User user = userService.getLoginUser();
//        model.addAttribute("user",user);
        User user=userService.findUserById(id);
        model.addAttribute("user",user);
        return "store";
    }


    @PostMapping("/store/{id}")
    public String sendPost(
            @PathVariable(name = "id") Long id,
            @RequestParam String text){

        Date time = new Date();
        Post post = new Post(text, time);
        post.setWhoUser(userService.getLoginUser());
        post.setWhomUser(userService.findUserById(id));
        postServiceImpl.save(post);
        return "redirect:/store/" + id;
    }



}
