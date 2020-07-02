package project.demo.entity;


import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity
@Table(name = "message")
public class Message {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column
    private String text;
    @Column
    private Date date;

    @ManyToOne
    private User user;

    @ManyToOne
    private User toUser;



    public Message() {
    }

    public Message(String text, Date date) {
        this.text = text;
        this.date = date;
    }

}