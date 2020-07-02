package project.demo.controller;

import java.util.Collections;
import java.util.Date;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import project.demo.entity.Message;
import project.demo.entity.User;
import project.demo.service.Impl.MessageServiceImpl;
import project.demo.service.UserService;

import javax.validation.Valid;


@Controller
public class MessageController {


    @Autowired
    private MessageServiceImpl messageServiceImpl;

    @Autowired
    private UserService userService;

    @GetMapping("/admin")
    public String userList(Model model) {
        model.addAttribute("allUsers", userService.allUsers());
        return "admin";
    }

    @PostMapping("/admin")
    public String actionUser(@RequestParam(required = true, defaultValue = "") Long userId,
                             @RequestParam(required = true, defaultValue = "") String action,
                             Model model) {

        return "redirect:/news/" + userId;
    }

    @GetMapping("/news/{id}")
    public String message(
            @PathVariable(name = "id") Long id,
            Model model) {
        Iterable<Message> messages1 = messageServiceImpl.getAllByUserId(userService.getLoginUser().getId());
        Collections.reverse((List<Message>) messages1);
        model.addAttribute("message1", messages1);
        Iterable<Message> messages = messageServiceImpl.getAllByUserId(id);
        Collections.reverse((List<Message>) messages);
        model.addAttribute("message", messages);
        User user = userService.findUserById(id);
        model.addAttribute("user",user);
        return "news";
    }


    @PostMapping("/news/{id}")
    public String sendMessage(
            @PathVariable(name = "id") Long id,
            @RequestParam String text) {

        Date time = new Date();
        Message message = new Message(text, time);
        message.setUser(userService.getLoginUser());
        message.setToUser(userService.findUserById(id));
        messageServiceImpl.save(message);
        return "redirect:/news/" + id;
    }


}