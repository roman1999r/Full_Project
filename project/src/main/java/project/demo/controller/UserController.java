package project.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import project.demo.entity.Post;
import project.demo.entity.User;
import project.demo.repository.UserRepository;
import project.demo.service.Impl.PostServiceImpl;
import project.demo.service.UserService;

import javax.validation.Valid;
import java.util.Collections;
import java.util.Date;
import java.util.List;

@Controller
public class UserController {

    @Autowired
    private PostServiceImpl postServiceImpl;
    @Autowired
    UserRepository userRepository;

    @Autowired
    private UserService userService;

//    @GetMapping("/news")
//    public String news(){
//        return "news";
//    }

    @GetMapping("/registration")
    public String registration(Model model) {
        model.addAttribute("userForm", new User());

        return "registration";
    }

    @PostMapping("/registration")
    public String addUser(@ModelAttribute("userForm") @Valid User userForm, BindingResult bindingResult, Model model) {

        if (bindingResult.hasErrors()) {
            return "registration";
        }
        if (!userForm.getPassword().equals(userForm.getPasswordConfirm())){
            model.addAttribute("passwordError", "Пароли не совпадают");
            return "registration";
        }
        if (!userService.saveUser(userForm)){
            model.addAttribute("usernameError", "Пользователь с таким именем уже существует");
            return "registration";
        }

        return "redirect:/";
    }

    @GetMapping("/store/profile")
    public String myProfile(Model model){
        Iterable<Post> posts = postServiceImpl.getAllByWhomUserId(userService.getLoginUser().getId());
        Collections.reverse((List<Post>) posts);
        model.addAttribute("post", posts);
        User user =userService.getLoginUser();
        model.addAttribute("user",user);
        return "profile";
    }


    @PostMapping("/store/profile")
    public  String myProfile(@RequestParam(name = "image")MultipartFile file, Model model){

        //userService.getLoginUser();
        userService.addAvatar(file);
        return "redirect:/store/profile";
    }

    @PreAuthorize("hasAuthority('ROLE_ADMIN')")
    @GetMapping("/admins")
    public String userList(Model model) {
        model.addAttribute("allUsers", userService.allUsers());
        return "administration";
    }

    @PreAuthorize("hasAuthority('ROLE_ADMIN')")
    @PostMapping("/admins/{id}")
    public String  deleteUser(@PathVariable(name = "id") Long userId,
                              Model model) {
        userService.deleteUser(userId);
        System.out.println("id"+userId);

        return "redirect:/admins";
    }

    @PostMapping("/admin/find")
    public String findUser(
            @RequestParam String nickname) {

        User user = userService.findByUsername(nickname);

        return "redirect:/store/"+user.getId();
    }


    @GetMapping("/store/profile/edit")
    public String editProfile(Model model) {
        User user = userService.getLoginUser();
        model.addAttribute("userForm",user);

        return "editProfile";
    }

    @PostMapping("/store/profile/edit")
    public  String editProfile(
          //  @RequestParam(name = "image")MultipartFile file,
             Model model,
                               @RequestParam String username,
                               @RequestParam String number,
                               @RequestParam String mail)
    {
        User user = userService.getLoginUser();
        if (!username.equals("")) {
            user.setUsername(username);
        }
        if(!mail.equals("")) {
            user.setMail(mail);
        }
        if(!number.equals("")) {
            user.setNumber(number);
        }
        userRepository.save(user);

        if(username.equals(user.getUsername())){
            return "redirect:/logout";
        }
        return "redirect:/store/profile";
    }

}