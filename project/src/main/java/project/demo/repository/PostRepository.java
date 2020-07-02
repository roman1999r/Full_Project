package project.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import project.demo.entity.Post;

import java.util.List;

@Repository
public interface PostRepository extends JpaRepository<Post, Long> {



  List<Post> getAllByWhomUserId(Long id);
//
//  List<Post> getAllByWhoPost(Long id);

  List<Post> getAllByWhoUserId(Long id);




}
