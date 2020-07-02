package project.demo.service.Impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import project.demo.entity.Post;
import project.demo.repository.PostRepository;
import project.demo.service.PostService;

import java.util.List;

@Service
public class PostServiceImpl implements PostService {

    @Autowired
    private PostRepository postRepository;

    @Override
    public Post save(Post post) {
        return postRepository.save(post);
    }



//    @Override
//    public List<Post> getAllByWhoPost(Long id) {
//        return postRepository.getAllByWhoPost(id);
//    }

//    @Override
//    public List<Post> getAllByWhomPost(String name) {
//        return postRepository.getAllByWhomPost();
//    }


    @Override
    public List<Post> getAllByUserId(Long id) {
        return  postRepository.getAllByWhoUserId(id);
    }
//
//    @Override
//    public List<Post> getAllByWhomPost(Long id) {
//        return postRepository.getAllByWhomPost(id);
//    }

    public List<Post> getAllByWhoUserId(Long id){
        return postRepository.getAllByWhoUserId(id);
    }

    public List<Post> getAllByWhomUserId(Long id){
        return postRepository.getAllByWhomUserId(id);
    }

//    public List<Post> allMessage() {
//        return postRepository.findAll();
//    }


}
