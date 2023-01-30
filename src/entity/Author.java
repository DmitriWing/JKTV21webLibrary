package entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Author implements Serializable {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String lastName;
    @OneToMany
    private List<Book>books;

    public Author() {       // this is constructor. rbm -> insert code... -> constructor... must be in all classes
        books=new ArrayList<>();
    }

    public Author(String name, String lastName) {
        this.name = name;
        this.lastName = lastName;
    }
//  -------------------------------- // rbm -> insert code... getters and setters, choose all, choose incapsulate
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
    
    public String getlastName() {
        return lastName;
    }

    public void setlastName(String lastName) {
        this.lastName = lastName;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<Book> getBooks() {
        return books;
    }

    public void setBooks(List<Book> books) {
        this.books = books;
    }
    
    
//  --------------------------------

    @Override   // // rbm -> insert code... -> toString...
    public String toString() {
        return "Author{" 
                + "name=" 
                + name 
                + ", lastName=" 
                + lastName 
                + '}';
        
    }

    
}
