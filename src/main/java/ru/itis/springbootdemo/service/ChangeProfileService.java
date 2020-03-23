package ru.itis.springbootdemo.service;

import ru.itis.springbootdemo.dto.SignUpDto;
import ru.itis.springbootdemo.models.User;

public interface ChangeProfileService {
    void changeProfile(SignUpDto form, User user);
}
