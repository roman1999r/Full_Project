package project.demo.service.Impl;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import project.demo.entity.Message;
import project.demo.repository.MessageRepository;
import project.demo.service.MessageService;

import java.util.List;

@Service
public class MessageServiceImpl implements MessageService {

    @Autowired
    MessageRepository messageRepository;

    @Override
    public Message save(Message message) {
        return messageRepository.save(message);
    }

    public List<Message> allMessage() {
        return messageRepository.findAll();
    }





    public boolean deleteMessage(Long messageId) {
        if (messageRepository.findById(messageId).isPresent()) {
            messageRepository.deleteById(messageId);
            return true;
        }
        return false;
    }

    @Override
    public List<Message> getAllByUserId(Long id) {
        return  messageRepository.getAllByUserId(id);
    }





}