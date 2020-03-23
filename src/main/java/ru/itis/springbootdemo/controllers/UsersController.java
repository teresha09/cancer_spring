package ru.itis.springbootdemo.controllers;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import ru.itis.springbootdemo.dto.UserDto;
import ru.itis.springbootdemo.service.UsersService;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/users")
public class UsersController {

    @Autowired
    private UsersService usersService;

    @GetMapping("/{user-id}")
    public String getConcreteUserPage(@PathVariable("user-id") Long userId, Model model) {
        UserDto user = usersService.getConcreteUser(userId);
        model.addAttribute("user", user);
        return "user_page";
    }

    @GetMapping
    public String getUsersPage(Model model) {
        List<UserDto> users = usersService.getUsers();
        model.addAttribute("users", users);
        return "users_page";
    }

    @GetMapping("/search")
    @ResponseBody
    public void searchUsers(@RequestParam(value = "query") String name, HttpServletResponse response) {
        JSONArray ja = new JSONArray();
        for (UserDto userDto :
                usersService.search(name)) {
            ja.put(new JSONObject(userDto));
        }
        JSONObject jo = new JSONObject();
        jo.put("objects", ja);
        response.setContentType("text/json");
        try {
            response.getWriter().write(jo.toString());
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }
}
