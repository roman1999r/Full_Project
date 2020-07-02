//package project.demo.entity;
//
//
//import lombok.Data;
//import org.springframework.security.core.GrantedAuthority;
//
//import javax.persistence.*;
//import java.util.Set;
//
//@Data
//@Entity
//@Table(name = "role")
//public class Role1 implements GrantedAuthority {
//    @Id
//    private Long id;
//    private String name;
//    @Transient
//    @ManyToMany(mappedBy = "roles")
//    private Set<User> users;
//
//    public Role1() {
//    }
//
//    public Role1(Long id) {
//        this.id = id;
//    }
//
//    public Role1(Long id, String name) {
//        this.id = id;
//        this.name = name;
//    }
//
//    public Long getId() {
//        return id;
//    }
//
//    public void setId(Long id) {
//        this.id = id;
//    }
//
//    public String getName() {
//        return name;
//    }
//
//    public void setName(String name) {
//        this.name = name;
//    }
//
//    public Set<User> getUsers() {
//        return users;
//    }
//
//    public void setUsers(Set<User> users) {
//        this.users = users;
//    }
//
//    @Override
//    public String getAuthority() {
//        return getName();
//    }
//
//
//
//
//}