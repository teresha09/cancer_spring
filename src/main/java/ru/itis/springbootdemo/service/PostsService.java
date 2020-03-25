package ru.itis.springbootdemo.service;

import ru.itis.springbootdemo.dto.PostDto;
import ru.itis.springbootdemo.models.Post;

import java.util.List;

public interface PostsService {
    List<Post> getPosts();
    Post getConcretePost(Integer id);
    List<Post> getText();
    List<Post> search(String name);

    void addPost(PostDto form);
}
