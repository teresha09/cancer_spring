
package ru.itis.springbootdemo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import ru.itis.springbootdemo.dto.SignUpDto;
import ru.itis.springbootdemo.models.Role;
import ru.itis.springbootdemo.models.State;
import ru.itis.springbootdemo.models.User;
import ru.itis.springbootdemo.repositories.UsersRepository;

import java.time.LocalDateTime;
import java.util.UUID;

@Component
public class ChangeProfileServiceImpl implements ChangeProfileService {

    @Autowired
    private UsersRepository usersRepository;

    @Override
    public void changeProfile(SignUpDto form, User user) {
        User user_db = User.builder().id(user.getId())
                .email(user.getEmail())
                .hashPassword(user.getHashPassword())
                .name(form.getName())
                .createdAt(user.getCreatedAt())
                .state(State.CONFIRMED)
                .role(user.getRole())
                .confirmCode(user.getConfirmCode())
                .build();

        usersRepository.save(user_db);
    }
}