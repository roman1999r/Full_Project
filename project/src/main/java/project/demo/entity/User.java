package project.demo.entity;



import lombok.Data;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.*;
import java.util.Collection;
import java.util.List;
import java.util.Set;


@Data
@Entity
@Table(name = "t_user")
public class User{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column
    private String username;
    @Column
    private String password;
    @Transient
    private String passwordConfirm;
    @Column
    private String number;
    @Column
    private String mail;
    @Column
    private String photoUrl;
    @Column
    @Enumerated(EnumType.STRING)
    private Role role;

//    @ManyToMany(fetch = FetchType.EAGER)
//    private Set<Role1> role1;

    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
    private List<Message> messages;

    @OneToMany(mappedBy = "toUser",cascade = CascadeType.ALL)
    private List<Message> messagese;


    @OneToMany(mappedBy = "whoUser",cascade = CascadeType.ALL)
    private List<Post> post;

    @OneToMany(mappedBy = "whomUser",cascade = CascadeType.ALL)
    private List<Post> posts;


    public User() {
    }


    @Override
    public String toString() {
        return "" + username + "";
    }

}
