package ru.itis.springbootdemo.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.itis.springbootdemo.models.Post;

import java.util.List;

public interface PostsRepository extends JpaRepository<Post, Integer> {
    List<Post> findAllByTittleContainsIgnoreCase(String tittle);

}
