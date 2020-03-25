package ru.itis.springbootdemo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.itis.springbootdemo.dto.PostDto;
import ru.itis.springbootdemo.models.Post;
import ru.itis.springbootdemo.repositories.PostsRepository;

import java.util.List;

@Service
public class PostsServiceImpl implements PostsService {

    @Autowired
    PostsRepository postsRepository;

    @Override
    public List<Post> getPosts() {
        return postsRepository.findAll();
    }

    @Override
    public Post getConcretePost(Integer id) {
        return postsRepository.getOne(id);
    }

    @Override
    public List<Post> getText() {
        return null;
    }

    @Override
    public List<Post> search(String name) {
        return postsRepository.findAllByTittleContainsIgnoreCase(name);
    }

    @Override
    public void addPost(PostDto form) {
        Post post = Post.builder()
                .tittle(form.getTittle())
                .text(form.getText())
                .build();

        postsRepository.save(post);
    }
}
