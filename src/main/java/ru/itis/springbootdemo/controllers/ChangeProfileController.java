package ru.itis.springbootdemo.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import ru.itis.springbootdemo.dto.SignUpDto;
import ru.itis.springbootdemo.security.UserDetailsImpl;
import ru.itis.springbootdemo.service.ChangeProfileService;
import ru.itis.springbootdemo.service.SignUpService;

@Controller
public class ChangeProfileController {
    @Autowired
    private ChangeProfileService service;

    @GetMapping("/change_profile")
    public String getWelcome(Authentication authentication, Model model) {
        UserDetailsImpl userDetails = (UserDetailsImpl) authentication.getPrincipal();
        model.addAttribute("user", userDetails.getUser());
        return "change_profile";
    }

    @PostMapping("/change_profile")
    public String changeProfile(SignUpDto form, Authentication authentication) {
        UserDetailsImpl userDetails = (UserDetailsImpl) authentication.getPrincipal();
        service.changeProfile(form, userDetails.getUser());
        return "redirect:/change_profile";
    }
}