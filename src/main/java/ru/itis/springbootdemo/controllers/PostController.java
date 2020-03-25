package ru.itis.springbootdemo.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import ru.itis.springbootdemo.dto.PostDto;
import ru.itis.springbootdemo.models.Post;
import ru.itis.springbootdemo.service.PostsService;

import java.util.List;

@Controller
@RequestMapping("posts")
public class PostController {

    @Autowired
    PostsService postsService;

    @GetMapping
    public String getPosts(Model model) {
        List<Post> posts = postsService.getPosts();
        model.addAttribute("posts", posts);
        return "posts";
    }

    @GetMapping("/{post-id}")
    public String getConcretePost(@PathVariable("post-id") Integer postId, Model model) {
        Post post = postsService.getConcretePost(postId);
        model.addAttribute("post", post);
        return "post";
    }

    @PreAuthorize("permitAll()")
    @RequestMapping(path = "/search", produces = "application/json; charset=UTF-8")
    @ResponseBody
    public List<Post> searchPosts(@RequestParam("name") String name) {
        return postsService.search(name);
    }

    @GetMapping("/add")
    public String getAddPostPage() {
        return "add";
    }

    @PostMapping("/add")
    public String addPost(PostDto form) {
        postsService.addPost(form);
        return "redirect:/posts/add";
    }
}
