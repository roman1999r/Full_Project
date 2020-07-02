package project.demo.service;



import project.demo.entity.Message;

import java.util.List;


public interface MessageService {

    Message save(Message message);

    List<Message> getAllByUserId(Long id);

}