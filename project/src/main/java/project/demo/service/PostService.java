package project.demo.service;

import project.demo.entity.Post;

import java.util.List;

public interface PostService {

    Post save(Post post);

    List<Post> getAllByUserId(Long id);
    List<Post> getAllByWhoUserId(Long id);
}
