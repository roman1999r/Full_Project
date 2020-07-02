package project.demo.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity
@Table(name = "post")
public class Post {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column
    private String text;
    @Column
    private Date date;

    @ManyToOne
    private User whoUser;
    @ManyToOne
    private User whomUser;


    public Post() {
    }

    public Post(String text, Date date) {
        this.text = text;
        this.date = date;
    }
}