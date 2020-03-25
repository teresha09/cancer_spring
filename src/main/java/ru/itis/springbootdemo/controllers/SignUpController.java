package ru.itis.springbootdemo.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import ru.itis.springbootdemo.dto.SignUpDto;
import ru.itis.springbootdemo.service.FileStorageService;
import ru.itis.springbootdemo.service.SignUpService;

@Controller
public class SignUpController {
    @Autowired
    private SignUpService service;

    @Autowired
    private FileStorageService fileService;

    @GetMapping("/signUp")
    public String getSignUpPage() {
        return "sign_up";
    }

    @PostMapping("/signUp")
    public String signUp(SignUpDto form, @RequestParam("file") MultipartFile file) {
        String filePath = "http://localhost:8080/files/" + fileService.saveFile(file);
        System.out.println("-----------------" + filePath);
        service.signUp(form, filePath);
        return "redirect:/signUp";
    }
}
